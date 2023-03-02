CREATE DATABASE  IF NOT EXISTS `clmsdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clmsdb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: clmsdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batches` (
  `idbatches` int NOT NULL AUTO_INCREMENT,
  `batch` varchar(45) NOT NULL,
  PRIMARY KEY (`idbatches`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,'I'),(2,'II'),(3,'III'),(4,'');
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_room`
--

DROP TABLE IF EXISTS `building_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_room` (
  `idnew_table` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(225) NOT NULL,
  `room_no` varchar(45) NOT NULL,
  PRIMARY KEY (`idnew_table`,`building_name`,`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_room`
--

LOCK TABLES `building_room` WRITE;
/*!40000 ALTER TABLE `building_room` DISABLE KEYS */;
INSERT INTO `building_room` VALUES (5,'CSE','S-IV Lab'),(6,'CSE','Ramanujan Lab'),(7,'CSE','R and D Lab'),(8,'CSE','S-II Lab'),(9,'CSE','209'),(10,'Biomedical','210'),(11,'Biomedical','109'),(12,'Biomedical','110'),(13,'Biomedical','107'),(14,'Biomedical','204'),(15,'Biomedical','209'),(16,'S & H','205'),(17,'S & H','206'),(18,'S & H','207'),(19,'S & H','220'),(20,'COE','221'),(21,'COE','222'),(22,'COE','225'),(23,'COE','224'),(24,'Mech','LH-1'),(25,'Mech','LH-2'),(26,'Mech','LH-3'),(27,'Mech','Workshop'),(28,'ECE','312'),(29,'ECE','313'),(30,'ECE','314'),(31,'ECE','118'),(32,'ECE','222'),(34,'CSE','J-909');
/*!40000 ALTER TABLE `building_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_seq`
--

DROP TABLE IF EXISTS `building_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_seq` (
  `idbuilding_seq` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idbuilding_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_seq`
--

LOCK TABLES `building_seq` WRITE;
/*!40000 ALTER TABLE `building_seq` DISABLE KEYS */;
/*!40000 ALTER TABLE `building_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` varchar(1005) NOT NULL DEFAULT '---',
  PRIMARY KEY (`id`),
  KEY `name_idx` (`name`),
  KEY `name` (`name`) /*!80000 INVISIBLE */
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (1,'BME','Biomedical.jpg'),(2,'H&S','Science and Humanities.jpg'),(3,'CSE','cse.jpeg'),(4,'ECE','ece.jpeg'),(5,'EEE','coe.jpeg'),(6,'Civil','coe.jpeg'),(7,'MECH','Mechanical.jpg');
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments_course`
--

DROP TABLE IF EXISTS `departments_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments_course` (
  `id` varchar(45) NOT NULL,
  `course` varchar(45) NOT NULL,
  `specilization` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `semester` (`semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_course`
--

LOCK TABLES `departments_course` WRITE;
/*!40000 ALTER TABLE `departments_course` DISABLE KEYS */;
INSERT INTO `departments_course` VALUES ('COMB000001','ME','Biomedical','1','BME'),('COMB000002','BE','BME','3','BME'),('COMB000003','BE','BME','7','BME'),('COMB000004','ME','Biomedical','3','BME'),('COMB000005','BE','BME','1','H&S'),('COMB000006','BE','BME','5','BME'),('COMB000007','BE','CSE','1','H&S'),('COMB000008','BE','CSE','3','CSE'),('COMB000009','BE','CSE','5','CSE'),('COMB000010','BE','CSE','7','CSE'),('COMB000011','ME','AI & ML','1','CSE'),('COMB000012','BE','AI & ML','1','H&S'),('COMB000013','ME','CSE','1','CSE'),('COMB000014','ME','PDS','1','CSE'),('COMB000015','BE','ECE','1','H&S'),('COMB000016','BE','ECE','3','ECE'),('COMB000017','BE','ECE','5','ECE'),('COMB000018','BE','ECE','7','ECE'),('COMB000019','ME','MRE','1','ECE'),('COMB000020','ME','SSP','1','ECE'),('COMB000021','ME','DS','1','ECE'),('COMB000022','ME','ESVLSI','1','ECE'),('COMB000023','ME','MRE','3','ECE'),('COMB000024','ME','SSP','3','ECE'),('COMB000025','ME','DS','3','ECE'),('COMB000026','ME','ESVLSI','3','ECE'),('COMB000027','ME','Structural Engineering','1','Civil'),('COMB000028','ME','Geo Technical Engineering','1','Civil'),('COMB000029','ME','Transportation Engineering','1','Civil'),('COMB000030','ME','Water Resources Engineering','1','Civil'),('COMB000031','ME','Mining Engineering','1','Civil'),('COMB000032','BE','Civil','1','H&S'),('COMB000033','BE','Civil','3','Civil'),('COMB000034','BE','Civil','5','Civil'),('COMB000035','BE','Civil','7','Civil'),('COMB000036','ME','PES','1','EEE'),('COMB000037','ME','PS','1','EEE'),('COMB000038','ME','IDC','1','EEE'),('COMB000039','ME','IDC','3','EEE'),('COMB000040','ME','PS','3','EEE'),('COMB000041','ME','PES','3','EEE'),('COMB000042','BE','EEE','1','H&S'),('COMB000043','BE','EEE','3','EEE'),('COMB000044','BE','EEE','5','EEE'),('COMB000045','BE','EEE','7','EEE'),('COMB000046','ME','Production Engineering','1','MECH'),('COMB000047','ME','Turbomachinery','1','MECH'),('COMB000048','ME','Automation & Robotics','1','MECH'),('COMB000049','BE','MECH','1','H&S'),('COMB000050','BE','MECH','3','MECH'),('COMB000051','BE','MECH','5','MECH'),('COMB000052','BE','MECH','7','MECH'),('COMB000053','BE','Mining','1','H&S'),('COMB000054','ME','Tool Design','1','MECH'),('COMB000101','ME','External','1','External'),('COMB000113','ME','MINING','1','MINING'),('COMB000114','ME','MINING','2','MINING'),('COMB000115','ME','MINING','3','MINING'),('COMB000116','ME','MINING','4','MINING'),('COMB000117','BE','data science','1','CSE'),('COMB000118','BE','data science','2','CSE'),('COMB000119','BE','data science','3','CSE'),('COMB000120','ME','cloud computing','1','AI'),('COMB000121','ME','cloud computing','2','AI'),('COMB000122','ME','cloud computing','3','AI'),('COMB000123','ME','cloud computing','4','AI'),('COMB000156','BE','AI & ML','1','CSE');
/*!40000 ALTER TABLE `departments_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `departments_course_BEFORE_INSERT` BEFORE INSERT ON `departments_course` FOR EACH ROW BEGIN
INSERT INTO departments_courses_seq VALUES (NULL);
    SET NEW.id = CONCAT('COMB', LPAD(LAST_INSERT_ID(), 6, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `departments_courses_seq`
--

DROP TABLE IF EXISTS `departments_courses_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments_courses_seq` (
  `iddepartments_courses_seq` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`iddepartments_courses_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_courses_seq`
--

LOCK TABLES `departments_courses_seq` WRITE;
/*!40000 ALTER TABLE `departments_courses_seq` DISABLE KEYS */;
INSERT INTO `departments_courses_seq` VALUES (1),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156);
/*!40000 ALTER TABLE `departments_courses_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_info`
--

DROP TABLE IF EXISTS `faculty_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_info` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `abbr` varchar(45) NOT NULL,
  `emp_code` varchar(45) NOT NULL DEFAULT '--',
  `department` varchar(45) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_info`
--

LOCK TABLES `faculty_info` WRITE;
/*!40000 ALTER TABLE `faculty_info` DISABLE KEYS */;
INSERT INTO `faculty_info` VALUES ('FAC000001','Dr.K.Ramesh Babu','KRB','--','DOM',1),('FAC000002','Mr.G.Kishore Kumar','GKK','--','ECE',1),('FAC000003','Mr.M.Venkat Dass','MVD','--','CSE',1),('FAC000004','Prof.K.Shyamala','KSH','--','CSE',1),('FAC000005','Mrs.C.Vani','CV','--','Science and Humanities',1),('FAC000006','Dr.I.Govardhan Rao','IGR','--','CSE',1),('FAC000007','Ms.Ramya','Ramya','--','CSE',1),('FAC000008','Ms.Prashanthi','Prashanthi','--','CSE',1),('FAC000009','Mr.M.Thirupathi','MT','--','CSE',1),('FAC000010','Mrs.Lavanya','Lavanya','--','CSE',1),('FAC000011','Mrs.Saida','Saida','--','CSE',1),('FAC000031','Dr.K.Phaneendra','KP','--','DOM',1),('FAC000032','Dr.J.Upender','JU','--','EEE',1),('FAC000033','Mrs.G.Sujatha','GS','--','DOC',1),('FAC000034','DR.Lakshmi Mantha','LM','--','English',1),('FAC000035','Mr.Vijendra Reddy','VR','--','EEE',1),('FAC000036','Mr.G.Kiran Kumar','GKK','--','EEE',1),('FAC000037','Mrs.G.V.Nagalakshmi','GVN','--','EEE',1),('FAC000038','Mrs.V.Sridevi','VSi','--','DOC',1),('FAC000039','Mrs.P.Sumabindu','PSB','--','English',0),('FAC000040','Dr.K.Rajesh','KR','--','English',1),('FAC000041','Dr.M.Shyam Sunder','MSS','--','ECE',1),('FAC000042','Mr.S.Srinivasa Rao','SSR','--','CSE',1),('FAC000043','Mrs.A.Gayathri','AG','--','CSE',1),('FAC000044','Mrs.V.Sukanya','VS','--','CSE',1),('FAC000045','Mr.Prakash','Prakash','--','CSE',1),('FAC000046','Mr.N.Madhu','N.Madhu','--','CSE',1),('FAC000047','Mrs.Spandana','SP','--','CSE',1),('FAC000048','Mr.L.K.Suresh Kumar','LKSK','--','CSE',1),('FAC000049','Mr.S.Ram Babu','SRB','--','CSE',1),('FAC000050','Prof. P.V.Sudha','PVS','--','CSE',1),('FAC000051','Mr.Vikul Pawar','Vikul','--','CSE',1),('FAC000052','Mr.Mahinder','Mr.Mahinder','--','CSE',1),('FAC000053','Prof.Koti Lakshmi','Prof.Koti Lakshmi','--','ECE',1),('FAC000054','Mr.J.Shanker','Mr.J.Shanker','--','CSE',1),('FAC000055','Mrs.Swapna','Swapna','--','CSE',1),('FAC000056','Mr.Somashekar','Somashekar','--','CSE',1),('FAC000057','Dr.D.Suman','DSR','--','BME',1),('FAC000058','Mr.M.Venkateswara Rao','MVR','--','BME',1),('FAC000059','Prof.M.Malini','MM','--','BME',1),('FAC000060','Mr.M.Srinivas','MS','--','BME',1),('FAC000061','Prof.B.Ram Reddy','BRR','--','BME',1),('FAC000062','Dr.P.Someshwar','PS','--','BME',1),('FAC000064','Mr.Kiran Kore','KK','--','BME',1),('FAC000065','Prof.P.Ramesh Babu','Prof.P.Ramesh Babu','--','Mech',1),('FAC000066','Mr.G.Venkateshwarlu','Mr.G.Venkateshwarlu','--','Mech',1),('FAC000067','Mr.CH.Siva Kumar','Mr.CH.Siva Kumar','--','EEE',1),('FAC000068','Mrs.P.Reshma','PR','--','DOC',1),('FAC000069','Mr.K.Harish','KH','--','ECE',1),('FAC000070','Dr.N.Susheela','NS','--','EEE',1),('FAC000071','Mrs.V.Vani','VV','--','DOC',1),('FAC000072','Mrs.G.Shravanya','GS','--','BME',1),('FAC000074','Dept of ECE','Dept of ECE','--','ECE',1),('FAC000075','Dept of CSE','Dept of CSE','--','CSE',1),('FAC000076','Dept of BME','Dept of BME','--','BME',1),('FAC000077','Dept of MECH','Dept of MECH','--','Mech',1),('FAC000078','Dept of Civil','Dept of Civil','--','Civil',1),('FAC000079','Dept of EEE','Dept of EEE','--','EEE',1),('FAC000080','suraj','srj','--','H&S',1),('FAC000081','vamsha','vms','--','CSE',0),('FAC000082','rohit vardhan','rht','--','CSE',0),('FAC000083','srinu','sri','--','CSE',0),('FAC000084','venkat teja','vnk','--','ECE',2),('FAC000085','afreen','afr','--','CSE',0),('FAC000086','vijay basker','vjb','--','CSE',2),('FAC000087','ameena','amn','--','CSE',2),('FAC000088','rehmantulla','rhm','--','CSE',2),('FAC000089','anudeep','anu','--','CSE',2),('FAC000090','harsha','hrs','--','CSE',2),('FAC000091','mental','mtl','--','CSE',2),('FAC000092','saleena','sal','--','CSE',2),('FAC000093','samjeer','smj','--','CSE',1),('FAC000094','K Harish','KH','--','BME',1),('FAC000095','A sadanada charry','ASC','--','External',1),('FAC000096','sahadeva','SHD','--','External',1),('FAC000097','N Ram  Prasad','NRP','--','External',1),('FAC000099','HARSHA','HRSH','--','CSE',1),('FAC000101','Mrs.B.Gayathri','BG','--','BME',1),('FAC000102','Mr.K.E.Ch.Vidyasagar','VS','--','BME',1),('FAC000103','Mrs.G.Sujatha','GS','--','BME',1),('FAC000104','Mrs.V.Sridevi','VS','--','BME',1),('FAC000105','Dr.K.Phaneendra','KP','--','CSE',1),('FAC000106','Dr.J.Upender','JU','--','CSE',1),('FAC000107','Mrs.G.Sujatha','GS','--','CSE',1),('FAC000108','Dr.Lakshmi Mantha','LM','--','CSE',1),('FAC000109','Mr.Vijendra Reddy','VR','--','CSE',1),('FAC000110','Mr.G.Kiran Kumar','GKK','--','CSE',1);
/*!40000 ALTER TABLE `faculty_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `faculty_info_BEFORE_INSERT` BEFORE INSERT ON `faculty_info` FOR EACH ROW BEGIN
 INSERT INTO faculty_seq VALUES (NULL);
    SET NEW.id = CONCAT('FAC', LPAD(LAST_INSERT_ID(), 6, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `faculty_seq`
--

DROP TABLE IF EXISTS `faculty_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_seq`
--

LOCK TABLES `faculty_seq` WRITE;
/*!40000 ALTER TABLE `faculty_seq` DISABLE KEYS */;
INSERT INTO `faculty_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110);
/*!40000 ALTER TABLE `faculty_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_sub_info_seq`
--

DROP TABLE IF EXISTS `faculty_sub_info_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_sub_info_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_sub_info_seq`
--

LOCK TABLES `faculty_sub_info_seq` WRITE;
/*!40000 ALTER TABLE `faculty_sub_info_seq` DISABLE KEYS */;
INSERT INTO `faculty_sub_info_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58);
/*!40000 ALTER TABLE `faculty_sub_info_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_subject_info`
--

DROP TABLE IF EXISTS `faculty_subject_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_subject_info` (
  `facsubid` varchar(255) NOT NULL,
  `subject_name` varchar(45) NOT NULL,
  `faculty_name` varchar(45) DEFAULT NULL,
  `batch` varchar(45) DEFAULT NULL,
  `department` varchar(45) NOT NULL,
  `course` varchar(45) NOT NULL,
  `speclisation` varchar(45) NOT NULL,
  `sem` varchar(45) NOT NULL,
  PRIMARY KEY (`facsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_subject_info`
--

LOCK TABLES `faculty_subject_info` WRITE;
/*!40000 ALTER TABLE `faculty_subject_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty_subject_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `faculty_subject_info_BEFORE_INSERT` BEFORE INSERT ON `faculty_subject_info` FOR EACH ROW BEGIN
 INSERT INTO faculty_sub_info_seq VALUES (NULL);
    SET NEW.facsubid = CONCAT('FACSUB', LPAD(LAST_INSERT_ID(), 5, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `idItems` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Des` varchar(100) NOT NULL,
  `link` varchar(16000) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`idItems`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (5,'Iphone 12','Iphones','data:image/jpeg;base64,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',99,110100,'Electronics'),(6,'Redmi Note 5 pro','Mi','data:image/jpeg;base64,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',499,13000,'Electronics'),(7,'Redmi Note 5 pro','Its a best budget phone','data:image/jpeg;base64,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',0,10000,'Electronics'),(8,'Mac Book Pro','Its best PC','data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBERERERERISEhERDxARERASEBESEA8PGBQZGRgUGBgcIy4lHB4rIRgYJjgmKy80NTY1GiU7QDszPy40NTEBDAwMEA8QGhIRHjQkJSs0NDE0NzQ0NDE2MTQ0MTE0ND83NDExNDQ0MTQ0MTExMT80NDQ0OjQxMTQ0NDExNDU3Nf/AABEIAJ8BPgMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAAAQIDBAUGBwj/xABLEAACAQIDBAMLCQcBBgcAAAABAgADEQQhMQUSQVEGE2EHFCIyQlJxgZGh0RVTVHKSk5Sx0iMzQ2KiwfCjF0SC0+HxFiRkc4Oywv/EABgBAQEBAQEAAAAAAAAAAAAAAAABAwIE/8QAJBEBAAICAgIDAAIDAAAAAAAAAAECESEDMSKxEkFhUZEEEzL/2gAMAwEAAhEDEQA/APKoiJ2hERAmJEQJiRJgVSmIgVRKZVAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREC3ERAmJEQJiIgIiICTIiBMSJMBEgmXKVN38RGf6is/5QIiZq7GxRF+oqAc3Tqx/XaYteg6GzqVPqIPoIygUSLyIgVRKZVAREQEREBERAREQEREBERAREQESmIFUSmICIkQIiIgIiICIlVN91gRkRobA2PA2OttYE06bv4is/wBRWb8pmJsjEkX6plHOoUpgfbImPXxeJYZ1qhtqA7BR6ALZTZbI7zxCrRqItLE6LVZ2alXPJixO4/8ASezIHqKzmM6TMMY7M3fHxGETmDX32HqQNJ72wozbFM4GopYWo3vcqJte9RSY06lMIQbZIAQZaxOFIz1B0I0M2ngmIzln/tjPTVnE4BcwmLqHgGqUaSn02Vj75DbTor+7wdK/OrWr1fdvKPdFXCqNFA9QmHVp2mFqzHbSLRLNXblYBjSTDUd1d79nhaVz4QGrAnjf1TGrbexj5NiatuSuUX2LYTGpDNh51Nx7FLfmomNOJdK6lVnN3ZmPNmLH3zdbE2im6cLijfD1Lbr6vhqvB1Pm8xp776KJBudo4F8PUanUtcWKsPEdD4rr2GY02uyMWmJprgsQwV1v3nXbyGP8Fj5pyt6uya7EUXpuyOpV0YqynUH/ADjOolFuLyIlExIkwESCZ0uzugu08QiumGKIwBVqr06dweO6TvD1iBzspne4fuU7Qbx6mEpj69Rz7AlvfNrh+4+5t1mOQcwmGY+8uPykyPLYnstDuQYQfvMXim+oKNMe9Gm1ody3ZK+NTrVO18TUF/sbsZHgsgsBqQPSZ9H4boHsin4uBotbjU36p9rkzaYXYWDpfusJhqf1MPSTP1CMj5go0mqZU0dzyRGY/wBIM2VDo5tCp4mCxbdve1VR7WAE+nVUDIAAcgLCLxkfOlHoBtd7WwTrfi1Sglva15m1O5ltRKb1HSgoUFinXgu1vJAAIJPpnvxNszkBmSdAJ5b3T+mvVhsHhntVZbVHU2NBGGnY7A+lQb5EiMjx+8SBEoREQERECmIiBMSIgTEiTAuUqljnpyOluR7Py17Dexmz/BFRLlG48Q3FTyImLNlsfaXUsyunWUqgAemTa4GjKfJYcD6jlYjXjtX/AJt16Z3ie69+1/Ze3RurQxm8yDKnXsWqUBwDcWT3jhfSbh6bUrX3XpuAysDvI6HRlI1mp2nsdGp98YZusok2JtZ6bea6+S3+C4zmFsraz4c9XUBqYdj4VInNSfKQ+S3uPHmN4m3FO91Z6v1qW+xGzw6l6fhDUpq6/ETSYihOhpsABWw7b9InJhkVPFXHksOX9pkvhaeLF1Ip1vYjnt5HtndqReM1cRaaziXDdXZvSrj1lGA/Oa+dJtDAvSdVdSrB6ZsRw3hmOY7RObngvX4zh6aTmCIicOydtWwj4qlSWpbvwUEai+nfdLdDGkxP8Rb8dfbbjKakkAakgD0k2noWJRWUJcruFSjrkyOvisp5ib8PF84n8Y83L8Jj9cSRbI5EEggixBGoI4GJ0W1cKcSr1lUDFUgDiqajKsnDEIPV4Q7OzPnZxMYnEtInO4Iidr0A6Jd9uMTiF/8AK028BD/vLg6fUB15nLnIradzfofvlMfikugs2FpMMmPCsw5eaOOvKerqZjrl2DQDgBLqmcqyFMuqZjqZcUwL4MrBllTLgMIu3iUgyYExE5npp0np7Pw7O3hO10p0wbNUqW8QHgBqzcB2kQNV3ROma4Kn1VIhsRUB3F1CjQ1WHmg6DyiOQM8JqVGdmd2LO7Fndjdmcm5YniSZe2hjqmJqvXrNv1KjXY6AclUcFAyAmNLAmJEShERAREQKZMiIExIkwEREBERA2WydpvQYsp8YWZbbyuvmsujDs14ggjPa4vZ1LFoa2GsHC79She5UcWQ+Ul+y40IGV+YmRhsY9FxUpkhlO8QDbPzl5G2v9wSJtx8uI+NtwyvxZ8q6kwWMq4Ryy6HwXpsCUqKODD8jqJ0+ErpWTrsOSN23WUifDpHt5ryb8jlLIWjtJSUC08UNUACpXPYPJf8Al0Oq8VXmyK2FqbyFkdCR8VIOo7DNd8flXcONW8bal2u0NoLVwtQOoZ0RmpsR4SOouCD6pwmOwTU2YjNN4gMOAvoeU6SlikxdJ9wBKwRusojRhbN0vqvZqO3WalcT4R5NZrdjDet75zzTW+JdccTXMNLE2OKwIN3TTUry9HZMSjh3dlSmrOzGyoilmY62AGZnltWazttExLJ2LS3sRTHBTvH0KN78wJ1z1Jq9j7MeiGeqpV3G6FYEMq3uSw4EkDLXLtmU7z3cETWu/t4f8iYtbX0qeoyslSm27UQ3RuHarc1OhEwdrYNHQ4ugu6hbdxFDU4asf/weB7e3K47yKOLak++oDgqUq0m8SvSOqN262PxnHNTPlHbvhvjxnpk9DejLY+rvPdcLTYdY4yLtr1SHnzPAdpE9qw1NKaJTpqqIihURRZUUCwAHKaPoticM2FpDCgJTRbBBqM873z3r3vfO83imeSXsZCmXFMsKZZ2jtGlhaT167hKaC7MeJ4KBxJ4CQbJTK0cG9iMjY56HkZ5fgunON2nWqYXAYVVDLlXqVXVqNO9i7lPFuMrKbgnI8Z6PgcOtKmiKqKFUAhFKpvasQCSczc5knPMmBnqZcUywplxTAvAyq8tAyzj8alCm1R2VVRWYsxsqqouWY8AIRjdINtUsHQetVfdVFuTkWudFUcWJyA/sDPnXpFtyrj67V6uQzWnTBJWjTvcKOZ4luJ9QGw6a9KH2jXuCy4amx6lDkWOhquPOPAeSMud+bliAiJEomJEQJkREBESIEREQJiRECZMiIExIiBMkG0iIEbzIwqJlbUDQdno/zlOowmMpbRTq6xVMUBZKrGy1eS1Dz5N6mz8JuZBt8OBHIyy4KkMtwL5Hip5f5r7Zpx8k8c/n8OL0i0frMxuDq4Wro1N0bLgysJjVqlyr2tvKCQNAQSth9kTptm7UpY2muGxZC1VG7RxJ0sBklQ+b2+T9XxdNtjZj4dmp1FKsjE58VNgSOy4X7U05KRNflTr04peYn4279rFDEWlx6Z3hUpMVqKwYFSVYMDcMpGjTXg2mRSrWmMTnVmmPuHcbK25T2iFo4grSx3ipVIC08W3APwWp7m7DkdftDCvSdkdSrKSCCLEGc5VprUFxYPz4N6fjOj2V0hSuq4XaB3WUBKONbNk81K3nLybUcbjMb05Zr426+pYX4s+Vf6ax3llqk2O2NnVMO5RxbiCM1ZTmGBGoI4zTOZ3acM6xlueju3nwVbfBJpMR1qDO3DfA58+Y9Ans2AxiV6a1EYMrAEEG4zF8jynz0zzp+hPSg4SoKVQ/sHawucqbE6din3H1zzclY7h6qTOMS9qUzz/p/sHaW0ayJRRRhaO4E3qqKKlRxdqhW97KDu5i+Rte87vD1VdQym6kZGZCGZNGi6E9FU2ZRdQ/WVqpRqz2spK33VQeaN45nM3Jy0HUKZZUysGBfUy4plhTKi4AJJsBqYF56oQXPqHEnlPD+6L0xOMc4ag18NTf9o6nLEVFOQHNFOnM58pte6V0yJL4LDtY2K4h1PiKdaKkeUfKPAeDznmMsQhERKERIgTEiIEyIkQJkRECIiIExIkwESJMBJkRAmJEQJkg8xcHIjmJTJgWXQoQQTbVW0P/AHE6bZm1qeKpDB4tgrgWwuJb+E3Cm58w6fy3y5Tnxa1jodeYPMdsxqiFTY+kHgRzEtbTWdJNYntlYvCvTdkdSrqxVgbZH1ZH1THItMxcV1oVXPhqAqMfKUaKx58j/hsulp3NYtGYcZmO1CVCJkNuuLHI8G4j/pMQrJV7TjrUu+3Q7H251ajCY0NUwuiOBvVMKT5SHyl5p6xY3u21slqO66FXouN6nWQ3SonMH8xqDkZpQ4Ybrf8AUGbDY+1mwu9SqL12FqG9SiTbPTfpnyHt6jaxvlbut8anr04tTO479tW5lomb/a+yV3BicO/W4ZyQHAs1NtSjr5LDlx1Fwbzn2kvpa4eh9z3pcabLha7XQ2FNif6fSPePQJ6yjggEG4IuCNCJ8whiCCDYg3BGRBnrXc96Xioow2IYb6+K5y3hz+Pt4zJo9JUy4pllTLgMC4DOD7oPTHvZO98Ow69xfeH8FD/EP8x8kf8AFyE2HTXpQmCokLZqtS6onnMNS38g489Oc8RxGIeo71KjF3dizu2rMeMsQigm+ZJJJJJJuSTqSZESJRMSIgTIiICJEQJkREBESLwJgC+QzPIamRL2Er9XUSpa+4wJHMaEewmBHe9T5up9h/hJ72qfN1Pu3+E62h0lw6geN66TH+8y6fSaifKtlxov8ZMjiBhKvzVX7p/hKhgq3zNXl+6fX2TtD0tor5R+4b9UqPTGiciTbl1D2/8At2Sjie8q17dTVvy6p7/lJ+T8R8xX+5qfCdkvSvDA7wFm03u9mvb7Ur/8YUfOb8O36oHGfJ2I+Yr/AHNT4QNm4j5it9y/wnZHpfR85vw7fqlD9LaR8o/h2+MDkfk3EXt1FW50HVvc+6G2biFYq1CqrDVTScMPVadE/SRN4MG0II/ZMM5W+3RUqNVd13ic/Abhygc2NlYo6Yesf/if4So7HxTDdOGr24HqKh3T7NJ1a9LUTK4OXGk/9speXpsg837p4HENsPEgkGjXy/8AT1DLvybirWNGubcTh6t7eydkem6fy/dVJI6bp/L91UiMx0Tie3ENszE/MV/w9X4Sg7KxP0ev+HqfCd4OnFPkv3VSSenKfy/dVInM9piHBfJeJH8Cv9xU+EqOz8TaxoVyP/YqfCd0enFPkv3VSY+J6W0Ki7ri4vewo1AL8Mw4MmJVyuzu/MNvGnSrAOu46NQd6brw3lK2JGoOomJUwVZiSaVUHsouB+U6ltt4TzT9it/zJdbpDQqFb6pbd/YuttOT2Og1jeMGs5cb8n1Pm633T/CV0MPUR1dUqqykFTuMLH2TpdpYrDVW33qNcqAdxHUWHZva+iUvt2kcgTpb90f1SYMu/wChHScYimadchKlNRm53LjS3he7s9E3W3dtd70yyU6tVipIFFGdrcLWGVzYb2gnl+B27hEU7wLOzFiThyxHYDvaZe+bbZ/TVKYdadlFRQjFqTgheFtYVye0qG0MXVes+GxLM2QC4esVRB4qr4OQHxPGYp2JjPoeL/C1/wBM9EpdOUpjwqzZcFwzv/cSmj09wyNvCpUve+eGqEXvfQvaXMo87OxsX9ExX4Wt+mR8j4v6Jivw1b9M9Hp9P8KpqsKlW9YEVL0Kxve/igv4Op8W0ml3QMKiU6a1Ku7TfrEvQrMQ2eZYuSw8I5G4jMjzc7Ixf0XE/h636ZHyTivouJ/D1f0z1Ju6knkuT9bCuv5Ex/tUTzv9CpGZHlvyTi/ouJ/DVf0wdlYof7tiPw9X9M9S/wBqic/9CpKh3VKfP/QqRmR5V8l4r6NiPw9X9Mp+TMT9HxH3FX4T1le6nSORJHb1FSXx3SKJF+sHo6itf8ozI8f+TcT9Hr/cVfhLNfD1KdhUR6ZN7B0ZL21tcZz2Ud03CXIao4t5uGqG/ttOM7oXS+jtFKNOkhPVVGc1nTq2AK7u4ouTY5E/VERI4iJESiZKkXF5TEDNXErzPvlYxScz75r4gbEYpOZ/qk99pzP9U10CBse+05n03MnvpPOPvmtiBs++U84+0yk4hPOPtM10QM41Uvr74aom8bHLhnMKIGxWtT5+8yoV6fP3mayLwNn19PmffHfFPmffNZEGWz75p8z75PfNPmffNVEDad80+Z98pbFJbI+0tb8prpEDOOKHMe1/hJbErlY+nNvhMJVyufUOJlJMDMqYjPwTl270GuvM++Yd5KAmBsMPVJyAJt22yl4sigl7jLI5nOY1NgosJU1S+sC+uLpjyyPU3wkjGJxc2/4/hNXUSxy0/KW4G4GNTO7n+Xx/flC46nYXc3vnk9rdmWs08QN0cbR4s3sb4R35Q85vY/wmkkwN135Q85vsv8JHf1Dzm+y3wmliBu+/6PnN9lvhHyhR5t9lvhNJEDeDaVIeU3saYW0sTTqBdy5IJuxBGVtP85TXxAmREQJiIgIiICIiAkyIgJMiIFQiUxAqkQDECYkSYERBkQJvJEpiBJMSIgTK1NpbBk3gXd+N+WrxvQLpa8smTeQTAREiBMRIvAReJECYkRAXi8RAREQP/9k=',9,100000,'Electronics'),(9,'Omen','Best gaming laptop','data:image/jpeg;base64,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',9,100000,'Electronics'),(10,'statue','decorative item','https://rukminim1.flixcart.com/image/612/612/krtjgcw0/showpiece-figurine/q/8/d/sg-royalbox-original-imag5gy2rxubzkgq.jpeg?q=70',99,120,'Decoratives'),(11,'wall paper','decorative item','https://rukminim1.flixcart.com/image/612/612/ksqeky80/wallpaper/n/u/y/45-1-305-wall-stickers-diy-wallpaper-decal-45-x-305-cm-self-original-imag68865ahawuyc.jpeg?q=70',99,100,'Decoratives'),(12,'wall decorative','decorative item','https://rukminim1.flixcart.com/image/612/612/kw9krrk0/wall-decoration/d/f/u/positive-quotes-wooden-wall-hanger-for-home-office-living-room-original-imag8ze7xwzrzg5h.jpeg?q=70',90,140,'Decoratives'),(13,'Decorhand Wall Mount ','decoartive item','https://rukminim1.flixcart.com/image/612/612/jw5a2kw0/rack-shelf/g/q/z/scfp-912-decorhand-original-imafgw3wcpdc8hng.jpeg?q=70',59,400,'Decoratives'),(14,'wall shelf','decorative item','https://rukminim1.flixcart.com/image/612/612/jvy4vbk0/rack-shelf/2/d/s/ch2396-onlinecrafts-original-imaffu8genahzkgc.jpeg?q=70',79,200,'Decoratives'),(15,'cloth hanger','decorative item','https://rukminim1.flixcart.com/image/612/612/knan98w0/rack-shelf/c/d/y/nc-a-shape-storage-shelves-50cm-rs-naayaab-craft-original-imagfzzxus4yezbm.jpeg?q=70',90,150,'Decoratives'),(16,'Cheked red Neckwear','Fashion','https://rukminim1.flixcart.com/image/612/612/kk4c13k0/muffler/h/g/q/free-mufflers-ef-18-exotica-fashions-original-imafzjfr8gtjzpqw.jpeg?q=70',79,90,'Fashion'),(17,'kurthas','Fashion','https://rukminim1.flixcart.com/image/612/612/xif0q/kids-ethnic-set/y/x/h/4-5-years-newveshyellow-digi-fashion-original-imagjg56kz5ydmg9.jpeg?q=70',79,70,'Fashion'),(18,'Froks','Fashion','https://rukminim1.flixcart.com/image/612/612/xif0q/kids-lehenga-choli/m/9/a/4-5-years-rk-sabji-pink-rayasa-original-imaghyh57wgygsxb.jpeg?q=70',250,100,'Fashion'),(19,'Black Shoes','Fashion','https://rukminim1.flixcart.com/image/612/612/xif0q/shoe/j/z/m/6-9273-6-world-wear-footwear-black-original-imagghh9cgkfmr2x-bb.jpeg?q=70',150,120,'Fashion'),(20,'Black enve perfume','Fashion','https://rukminim1.flixcart.com/image/612/612/xif0q/perfume/x/d/b/50-black-perfume-eau-de-toilette-the-man-company-men-original-imagjkjgc7ezjhda.jpeg?q=70',100,250,'Fashion'),(21,'Ear rings','Fashion','https://rukminim1.flixcart.com/image/150/150/jvy4vbk0/nose-ring-stud/s/t/p/dvtjnp-08ad-c-gl-nose-ring-set-divastri-original-imafgqqhfjxuwzzp.jpeg?q=70',200,300,'Fashion'),(22,'Horlicks','Grocery','https://rukminim1.flixcart.com/image/612/612/kgwld3k0/milk-drink-mix/f/u/a/500-classic-malt-plastic-bottle-horlicks-original-imafxf7xyubggpdn.jpeg?q=70',100,200,'Groceries'),(23,'bisuit','Grocery','https://rukminim1.flixcart.com/image/612/612/kll7bm80/cookie-biscuit/e/y/b/strawberry-creme-biscuits-oreo-original-imagyzmybswqkz6a.jpeg?q=70',100,20,'Groceries'),(24,'curd','Grocery','https://rukminim1.flixcart.com/image/612/612/l2dmky80/curd-yogurt/v/z/z/-original-imagdqc4vfd8zhhz.jpeg?q=70',50,50,'Groceries'),(25,'oats','Grocery','https://rukminim1.flixcart.com/image/612/612/xif0q/cereal-flake/v/z/q/-original-imaggfu3nwh4euct.jpeg?q=70',100,120,'Groceries'),(26,'maggi','Grocery','https://rukminim1.flixcart.com/image/612/612/l5jxt3k0/noodle/a/q/z/-original-imagg7at6zpzqnyk.jpeg?q=70',100,40,'Groceries'),(27,'corn flakes','Grocery','https://rukminim1.flixcart.com/image/612/612/xif0q/cereal-flake/y/m/k/-original-imaggfft2cfahznt.jpeg?q=70',100,150,'Groceries'),(28,'trolley','Utility','https://rukminim1.flixcart.com/image/612/612/kyj0vbk0/suitcase/t/1/r/-original-imagaqnvkpwgj3gy.jpeg?q=70',100,500,'Utilities'),(29,'scissors','Utility','https://rukminim1.flixcart.com/image/612/612/khdqnbk0/scissor/g/t/5/all-purpose-scissor-set-for-hair-cut-kitchen-use-craft-tailoring-original-imafxepgcw6zfzys.jpeg?q=70',100,20,'Utilities'),(30,'cutter','Utility','https://rukminim1.flixcart.com/image/612/612/jbpeavk0/cutter/5/y/h/tcs-08-taparia-original-imaffy4wd23zk8n2.jpeg?q=70',100,10,'Utilities'),(31,'carrier','Utility','https://rukminim1.flixcart.com/image/612/612/k4lmv0w0/baby-carrier-cuddler/u/e/m/high-quality-baby-carrier-with-strong-belt-4-in-1-position-dark-original-imafdpuysyxhdgnw.jpeg?q=70',100,150,'Utilities'),(32,'lunch box','Utility','https://rukminim1.flixcart.com/image/612/612/l1v1uvk0/lunch-box/w/j/a/950-bolt-leakproof-lunch-box-for-school-and-office-with-original-imagdc2wgqjyemwu.jpeg?q=70',100,250,'Utilities'),(33,'TV','Big Tv','https://rukminim1.flixcart.com/image/312/312/xif0q/television/u/d/e/-original-imagkjver8za4ags.jpeg?q=70',99,200000,'Electronics'),(34,'Camera','Best camera','https://rukminim1.flixcart.com/image/312/312/camera/c/h/h/sony-cyber-shot-dsc-h300-advance-point-and-shoot-original-imadpzjmc3hwsnf7.jpeg?q=70',200,20000,'Electronics');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_details`
--

DROP TABLE IF EXISTS `lab_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_details` (
  `idlab_details` varchar(45) NOT NULL,
  `lab_name` varchar(45) NOT NULL,
  `lab_code` varchar(45) NOT NULL,
  `batch_no` int NOT NULL,
  `teacher_name1` varchar(45) NOT NULL DEFAULT '-',
  `teacher_name2` varchar(45) NOT NULL DEFAULT '-',
  `teacher_name3` varchar(45) NOT NULL DEFAULT '-',
  `venue` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `from` varchar(45) NOT NULL,
  `to` varchar(45) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idlab_details`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_details`
--

LOCK TABLES `lab_details` WRITE;
/*!40000 ALTER TABLE `lab_details` DISABLE KEYS */;
INSERT INTO `lab_details` VALUES ('LAB000001','Basic Electronic Engineering Lab','BEE Lab',1,'Mr.G.Kishore Kumar','-','-','Department of ','Monday','6','7',1),('LAB000002','Basic Electronic Engineering Lab','BEE Lab',2,'Mr.G.Kishore Kumar','-','-','Department of ','Tuesday','6','7',1),('LAB000003','Basic Electronic Engineering Lab','BEE Lab',3,'Mr.G.Kishore Kumar','-','-','Department of ','Thursday','3','4',1),('LAB000004','Data Structures and Algorithms Lab','DSA Lab',1,'Dr.I.Govardhan Rao','','','S-IV','Thursday','7','8',1),('LAB000005','Data Structures and Algorithms Lab','DSA Lab',2,'Ms.Ramya','','','S-II','Thursday','7','8',1),('LAB000006','Data Structures and Algorithms Lab','DSA Lab',3,'Ms.Prashanthi','-','-','Ramanujan Lab','Wednesday','7','8',1),('LAB000007','IT Workshop(Python and MATLAB)','IT Workshop',1,'Mr.M.Thirupathi','-','-','S-II','Wednesday','1','2',1),('LAB000008','IT Workshop(Python and MATLAB)','IT Workshop',2,'Mrs.Lavanya','-','-','S-III','Wednesday','1','2',1),('LAB000009','IT Workshop(Python and MATLAB)','IT Workshop',2,'Ms.Saida','-','-','S-IV','Wednesday','1','2',1),('LAB000010','IT Workshop(Python and MATLAB)','IT Workshop',1,'Mr.M.Thirupathi','-','-','Ramanujan Lab','Friday','7','8',1),('LAB000011','IT Workshop(Python and MATLAB)','IT Workshop',2,'Mrs.Lavanya','-','-','ES Lab','Friday','7','8',1),('LAB000012','IT Workshop(Python and MATLAB)','IT Workshop',3,'Ms.Saida','-','-','Ramanujan Lab','Thursday','7','8',1),('LAB000013','Data Structures and Algorithms Lab','DSA Lab',1,'Dr.I.Govardhan Rao','-','-','S-II','Friday','1','2',1),('LAB000014','Data Structures and Algorithms Lab','DSA Lab',2,'Ms.Ramya','-','-','S-IV','Friday','1','2',1),('LAB000015','Data Structures and Algorithms Lab','DSA Lab',3,'Ms.Prashanthi','-','-','Ramanujan Lab','Friday','1','2',1);
/*!40000 ALTER TABLE `lab_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `lab_details_BEFORE_INSERT` BEFORE INSERT ON `lab_details` FOR EACH ROW BEGIN
INSERT INTO lab_seq VALUES (NULL);
    SET NEW.idlab_details = CONCAT('LAB', LPAD(LAST_INSERT_ID(), 6, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `lab_faculty_allotment`
--

DROP TABLE IF EXISTS `lab_faculty_allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_faculty_allotment` (
  `labfacallt` varchar(255) NOT NULL,
  `subcode` varchar(45) NOT NULL,
  `faccode1` varchar(45) DEFAULT ' ',
  `faccode2` varchar(45) DEFAULT ' ',
  `faccode3` varchar(45) DEFAULT ' ',
  `faccode4` varchar(45) DEFAULT ' ',
  `batch` varchar(45) NOT NULL,
  PRIMARY KEY (`labfacallt`),
  KEY `faccode1_idx` (`faccode1`),
  KEY `faccode2_idx` (`faccode2`),
  KEY `faccode3_idx` (`faccode3`),
  KEY `faccode4_idx` (`faccode4`),
  KEY `subcode_idx` (`subcode`),
  CONSTRAINT `faccode1` FOREIGN KEY (`faccode1`) REFERENCES `faculty_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subcode` FOREIGN KEY (`subcode`) REFERENCES `subject_info` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_faculty_allotment`
--

LOCK TABLES `lab_faculty_allotment` WRITE;
/*!40000 ALTER TABLE `lab_faculty_allotment` DISABLE KEYS */;
INSERT INTO `lab_faculty_allotment` VALUES ('LABFAC000101','SUB000245','FAC000060','FAC000094','','','I'),('LABFAC000102','SUB000246','FAC000064','FAC000098','','','I'),('LABFAC000103','SUB000247','FAC000064','FAC000098','','','I'),('LABFAC000107','SUB000260','FAC000041','FAC000053','FAC000069','','II'),('LABFAC000130','SUB000278','FAC000009','FAC000010','FAC000011','','I'),('LABFAC000131','SUB000278','FAC000009','FAC000010','FAC000011','','II'),('LABFAC000132','SUB000278','FAC000009','FAC000010','FAC000011','','III'),('LABFAC000133','SUB000277','FAC000006','FAC000007','FAC000008','','I'),('LABFAC000134','SUB000277','FAC000006','FAC000007','FAC000008','','II'),('LABFAC000135','SUB000277','FAC000006','FAC000007','FAC000008','','III'),('LABFAC000136','SUB000274','FAC000002','','','','I'),('LABFAC000137','SUB000274','FAC000002','','','','II'),('LABFAC000138','SUB000274','FAC000002','','','','III'),('LABFAC000139','SUB000286','FAC000009','FAC000043','FAC000046','','I'),('LABFAC000140','SUB000286','FAC000009','FAC000043','FAC000046','','II'),('LABFAC000141','SUB000296','FAC000103','FAC000104','','','I'),('LABFAC000142','SUB000297','FAC000059','FAC000101','','','I'),('LABFAC000143','SUB000298','FAC000057','FAC000060','','','I'),('LABFAC000144','SUB000297','FAC000059','FAC000101','','','II'),('LABFAC000145','SUB000298','FAC000057','FAC000060','','','II'),('LABFAC000146','SUB000309','FAC000102','','','','I'),('LABFAC000147','SUB000309','FAC000102','','','','II'),('LABFAC000148','SUB000310','FAC000064','FAC000072','','','II'),('LABFAC000149','SUB000310','FAC000064','FAC000072','','','I'),('LABFAC000150','SUB000311','FAC000076','','','','I'),('LABFAC000151','SUB000312','FAC000076','','','','I'),('LABFAC000152','SUB000320','FAC000042','FAC000044','FAC000045','','I'),('LABFAC000153','SUB000320','FAC000042','FAC000044','FAC000045','','II'),('LABFAC000154','SUB000320','FAC000042','FAC000044','FAC000045','','III'),('LABFAC000155','SUB000321','FAC000009','FAC000043','FAC000046','','I'),('LABFAC000156','SUB000321','FAC000009','FAC000043','FAC000046','','II'),('LABFAC000157','SUB000321','FAC000009','FAC000043','FAC000046','','III'),('LABFAC000170','SUB000334','FAC000107','','','','I'),('LABFAC000171','SUB000334','FAC000107','','','','II'),('LABFAC000172','SUB000335','FAC000108','','','','I'),('LABFAC000173','SUB000335','FAC000108','','','','II'),('LABFAC000174','SUB000336','FAC000109','FAC000110','','','I'),('LABFAC000175','SUB000336','FAC000109','FAC000110','','','II'),('LABFAC000178','SUB000336','FAC000109',' ',' ',' ','II');
/*!40000 ALTER TABLE `lab_faculty_allotment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `lab_faculty_allotment_BEFORE_INSERT` BEFORE INSERT ON `lab_faculty_allotment` FOR EACH ROW BEGIN
	 INSERT INTO lab_faculty_allotment_seq VALUES (NULL);
    SET NEW.labfacallt= CONCAT('LABFAC', LPAD(LAST_INSERT_ID(), 6, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `lab_faculty_allotment_seq`
--

DROP TABLE IF EXISTS `lab_faculty_allotment_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_faculty_allotment_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_faculty_allotment_seq`
--

LOCK TABLES `lab_faculty_allotment_seq` WRITE;
/*!40000 ALTER TABLE `lab_faculty_allotment_seq` DISABLE KEYS */;
INSERT INTO `lab_faculty_allotment_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(178);
/*!40000 ALTER TABLE `lab_faculty_allotment_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_seq`
--

DROP TABLE IF EXISTS `lab_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_seq`
--

LOCK TABLES `lab_seq` WRITE;
/*!40000 ALTER TABLE `lab_seq` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer_details`
--

DROP TABLE IF EXISTS `lecturer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer_details` (
  `class_id` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `d_from` varchar(45) NOT NULL,
  `d_to` varchar(45) NOT NULL,
  `room_no` varchar(45) NOT NULL,
  `buildingroom_name` varchar(45) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `allotid` varchar(45) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer_details`
--

LOCK TABLES `lecturer_details` WRITE;
/*!40000 ALTER TABLE `lecturer_details` DISABLE KEYS */;
INSERT INTO `lecturer_details` VALUES ('LEC0001026','Tuesday','1','4','209','CSE',1,'THEOFAC000239'),('LEC0001036','Monday','1','4','S-IV Lab','CSE',1,'LABFAC000136');
/*!40000 ALTER TABLE `lecturer_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `lecturer_details_BEFORE_INSERT` BEFORE INSERT ON `lecturer_details` FOR EACH ROW BEGIN
 INSERT INTO lecturer_seq VALUES (NULL);
    SET NEW.class_id = CONCAT('LEC', LPAD(LAST_INSERT_ID(), 7, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `lecturer_seq`
--

DROP TABLE IF EXISTS `lecturer_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer_seq`
--

LOCK TABLES `lecturer_seq` WRITE;
/*!40000 ALTER TABLE `lecturer_seq` DISABLE KEYS */;
INSERT INTO `lecturer_seq` VALUES (2),(3),(4),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(233),(234),(235),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260),(261),(262),(263),(264),(265),(266),(267),(268),(269),(270),(271),(272),(273),(274),(275),(276),(277),(278),(279),(280),(281),(282),(283),(284),(285),(286),(287),(288),(289),(290),(291),(292),(293),(294),(295),(296),(297),(298),(299),(300),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(311),(312),(313),(314),(315),(316),(317),(318),(319),(320),(321),(322),(323),(324),(325),(326),(327),(328),(329),(330),(331),(332),(333),(334),(335),(336),(337),(338),(339),(340),(341),(342),(343),(344),(345),(346),(347),(348),(349),(350),(351),(352),(353),(354),(355),(356),(357),(358),(359),(360),(361),(362),(363),(364),(365),(366),(367),(368),(369),(370),(371),(372),(373),(374),(375),(376),(377),(378),(379),(380),(381),(382),(383),(384),(385),(386),(387),(388),(389),(390),(391),(392),(393),(394),(395),(396),(397),(398),(399),(400),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410),(411),(412),(413),(414),(415),(416),(417),(418),(419),(420),(421),(422),(423),(424),(425),(426),(427),(428),(429),(430),(431),(432),(433),(434),(435),(436),(437),(438),(439),(440),(441),(442),(443),(444),(445),(446),(447),(448),(449),(450),(451),(452),(453),(454),(455),(456),(457),(458),(459),(460),(461),(462),(463),(464),(465),(466),(467),(468),(469),(470),(471),(472),(473),(474),(475),(476),(477),(478),(479),(480),(481),(482),(483),(484),(485),(486),(487),(488),(489),(490),(491),(492),(493),(494),(495),(496),(497),(498),(499),(500),(501),(502),(503),(504),(505),(506),(507),(508),(509),(510),(511),(512),(513),(514),(515),(516),(517),(518),(519),(520),(521),(522),(523),(524),(525),(526),(527),(528),(529),(530),(531),(532),(533),(534),(535),(536),(537),(538),(539),(540),(541),(542),(543),(544),(545),(546),(547),(548),(549),(550),(551),(552),(553),(554),(555),(556),(557),(558),(559),(560),(561),(562),(563),(564),(565),(566),(567),(568),(569),(570),(571),(572),(573),(574),(575),(576),(577),(578),(579),(580),(581),(582),(583),(584),(585),(586),(587),(588),(589),(590),(591),(592),(593),(594),(595),(596),(597),(598),(599),(600),(601),(602),(603),(604),(605),(606),(607),(608),(609),(610),(611),(612),(613),(614),(615),(616),(617),(618),(619),(620),(621),(622),(623),(624),(625),(626),(627),(628),(629),(630),(631),(632),(633),(634),(635),(636),(637),(638),(639),(640),(641),(642),(643),(644),(645),(646),(647),(648),(649),(650),(651),(652),(653),(654),(655),(656),(657),(658),(659),(660),(661),(662),(663),(664),(665),(666),(667),(668),(669),(670),(671),(672),(673),(674),(675),(676),(677),(678),(679),(680),(681),(682),(683),(684),(685),(686),(687),(688),(689),(690),(691),(692),(693),(694),(695),(696),(697),(698),(699),(700),(701),(702),(703),(704),(705),(706),(707),(708),(709),(710),(711),(712),(713),(714),(715),(716),(717),(718),(719),(720),(721),(722),(723),(724),(725),(726),(727),(728),(729),(730),(731),(732),(733),(734),(735),(736),(737),(738),(739),(740),(741),(742),(743),(744),(745),(746),(747),(748),(749),(750),(751),(752),(753),(754),(755),(756),(757),(758),(759),(760),(761),(762),(763),(764),(765),(766),(767),(768),(769),(770),(771),(772),(773),(774),(775),(776),(777),(778),(779),(780),(781),(782),(783),(784),(785),(786),(787),(788),(789),(790),(791),(792),(793),(794),(795),(796),(797),(798),(799),(800),(801),(802),(803),(804),(805),(806),(807),(808),(809),(810),(811),(812),(813),(814),(815),(816),(817),(818),(819),(820),(821),(822),(823),(824),(825),(826),(827),(828),(829),(830),(831),(832),(833),(834),(835),(836),(837),(838),(839),(840),(841),(842),(843),(844),(845),(846),(847),(848),(849),(850),(851),(852),(853),(854),(855),(856),(857),(858),(859),(860),(861),(862),(863),(864),(865),(866),(867),(868),(869),(870),(871),(872),(873),(874),(875),(876),(877),(878),(879),(880),(881),(882),(883),(884),(885),(886),(887),(888),(889),(890),(891),(892),(893),(894),(895),(896),(897),(898),(899),(900),(901),(902),(903),(904),(905),(906),(907),(908),(909),(910),(911),(912),(913),(914),(915),(916),(917),(918),(919),(920),(921),(922),(923),(924),(925),(926),(927),(928),(929),(930),(931),(932),(933),(934),(935),(936),(937),(938),(939),(940),(941),(942),(943),(944),(945),(946),(947),(948),(949),(950),(951),(952),(953),(954),(955),(956),(957),(958),(959),(960),(961),(962),(963),(964),(965),(966),(967),(968),(969),(970),(971),(972),(973),(974),(975),(976),(977),(978),(979),(980),(981),(982),(983),(984),(985),(986),(987),(988),(989),(990),(991),(992),(993),(994),(995),(996),(997),(998),(999),(1000),(1001),(1002),(1003),(1004),(1005),(1006),(1007),(1008),(1009),(1010),(1011),(1012),(1013),(1014),(1015),(1016),(1017),(1018),(1019),(1020),(1021),(1022),(1023),(1024),(1025),(1026),(1027),(1028),(1029),(1030),(1031),(1032),(1033),(1034),(1035),(1036);
/*!40000 ALTER TABLE `lecturer_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `faculty`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view2`
--

DROP TABLE IF EXISTS `new_view2`;
/*!50001 DROP VIEW IF EXISTS `new_view2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view2` AS SELECT 
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view3`
--

DROP TABLE IF EXISTS `new_view3`;
/*!50001 DROP VIEW IF EXISTS `new_view3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view3` AS SELECT 
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view4`
--

DROP TABLE IF EXISTS `new_view4`;
/*!50001 DROP VIEW IF EXISTS `new_view4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view4` AS SELECT 
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `idorders` int NOT NULL AUTO_INCREMENT,
  `itemid` int NOT NULL,
  `userid` varchar(45) NOT NULL,
  PRIMARY KEY (`idorders`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,6,'EMP00035'),(2,6,'EMP00035'),(3,5,'EMP00035'),(4,9,'EMP00035'),(5,8,'EMP00035'),(6,10,'EMP00035'),(7,11,'EMP00035'),(8,33,'EMP00035'),(9,17,'EMP00035'),(10,16,'EMP00035'),(11,13,'EMP00035'),(12,14,'EMP00035');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periods`
--

DROP TABLE IF EXISTS `periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `period` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periods`
--

LOCK TABLES `periods` WRITE;
/*!40000 ALTER TABLE `periods` DISABLE KEYS */;
INSERT INTO `periods` VALUES (1,'p1'),(2,'p2'),(3,'p3'),(4,'p4'),(5,'p6'),(6,'p7'),(7,'p8');
/*!40000 ALTER TABLE `periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `name` varchar(60) NOT NULL,
  `codeno` varchar(45) NOT NULL,
  `division` varchar(45) DEFAULT NULL,
  `active` int NOT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES ('Rama Krishna ','146000','CSE',1),('SHyAM','146002','CSE',1),('ABC','146003','CSE',1),('GOD','146004','CSE',1),('PLlead2','146005','CSE',1),('bhaskar','146011','CSE',1),('baskar','146012','CSE',1),('RAM','146022','CSE',1),('Bij','146060','CSE',1),('bijeet','146087','CSE',1),('SAKSHI CHOUDHARY','146126','CSE',1),('KOUSHIK','EMP00024','CSE',1),('BHASKER','EMP00025','CSE',1),('manoj','EMP00026','CSE',1),('SURAJ','EMP00027','CSE',1),('shgfhs','EMP00028','CSE',1),('shgfhsffg','EMP00029','CSE',1),('shgfhsffgfdsg','EMP00030','CSE',1),('shgfhsffgfdsgdfsgs','EMP00031','CSE',1),('shgfhsffgfdsgdfsgssfdgsfdg','EMP00032','CSE',1),('shgfhsffgfdsgdfsgssfdgsfdgsfgs','EMP00033','CSE',1),('vijay','EMP00034','CSE',1);
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `persons_BEFORE_INSERT` BEFORE INSERT ON `persons` FOR EACH ROW BEGIN
 INSERT INTO persons_seq VALUES (NULL);
    SET NEW.codeno = CONCAT('EMP', LPAD(LAST_INSERT_ID(), 5, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `persons_seq`
--

DROP TABLE IF EXISTS `persons_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons_seq`
--

LOCK TABLES `persons_seq` WRITE;
/*!40000 ALTER TABLE `persons_seq` DISABLE KEYS */;
INSERT INTO `persons_seq` VALUES (14),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34);
/*!40000 ALTER TABLE `persons_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processrole`
--

DROP TABLE IF EXISTS `processrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processrole` (
  `id` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(250) NOT NULL,
  `reportingrole` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `minm_design` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reportingrole` (`reportingrole`),
  CONSTRAINT `reportingrole` FOREIGN KEY (`reportingrole`) REFERENCES `processrole` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processrole`
--

LOCK TABLES `processrole` WRITE;
/*!40000 ALTER TABLE `processrole` DISABLE KEYS */;
INSERT INTO `processrole` VALUES ('ROL00001','Faculty','ROL00009','Faculty','AM'),('ROL00004','Time table Incharge','ROL00009','Time table Incharge','AM'),('ROL00009','Admin','ROL00009','Admin','SM');
/*!40000 ALTER TABLE `processrole` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `processrole_BEFORE_INSERT` BEFORE INSERT ON `processrole` FOR EACH ROW BEGIN
INSERT INTO processrole_seq VALUES (NULL);
    SET NEW.id = CONCAT('ROL', LPAD(LAST_INSERT_ID(), 5, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `processrole_seq`
--

DROP TABLE IF EXISTS `processrole_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processrole_seq` (
  `idprocessrole_seq` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idprocessrole_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processrole_seq`
--

LOCK TABLES `processrole_seq` WRITE;
/*!40000 ALTER TABLE `processrole_seq` DISABLE KEYS */;
INSERT INTO `processrole_seq` VALUES (1),(3),(4);
/*!40000 ALTER TABLE `processrole_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `su_seq`
--

DROP TABLE IF EXISTS `su_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `su_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_seq`
--

LOCK TABLES `su_seq` WRITE;
/*!40000 ALTER TABLE `su_seq` DISABLE KEYS */;
INSERT INTO `su_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(249),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260),(261),(262),(263),(264),(265),(266),(267),(268),(269),(270),(271),(272),(273),(274),(275),(276),(277),(278),(279),(280),(281),(282),(283),(284),(285),(286),(287),(290),(291),(292),(293),(294),(295),(296),(297),(298),(299),(300),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(311),(312),(313),(314),(315),(316),(317),(318),(319),(320),(321),(322),(323),(324),(325),(326),(327),(328),(329),(330),(331),(332),(333),(334),(335),(336);
/*!40000 ALTER TABLE `su_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_info`
--

DROP TABLE IF EXISTS `subject_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_info` (
  `sub_id` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `sub_name` varchar(225) DEFAULT NULL,
  `sub_abbr` varchar(225) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `elective` varchar(45) DEFAULT '---',
  `subinfo` varchar(45) NOT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `sub_info_idx` (`subinfo`),
  CONSTRAINT `sub_info` FOREIGN KEY (`subinfo`) REFERENCES `departments_course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_info`
--

LOCK TABLES `subject_info` WRITE;
/*!40000 ALTER TABLE `subject_info` DISABLE KEYS */;
INSERT INTO `subject_info` VALUES ('SUB000238','Theory','diagnostic and therapetic Equipment','DTE',1,'----','COMB000001'),('SUB000239','Theory','Advanced biomedical signal processing','ABMSP',1,'----','COMB000001'),('SUB000240','Theory','Bio nano technology','BNT',1,'----','COMB000001'),('SUB000241','Theory','Advanced medical imaging','AMI',1,'----','COMB000001'),('SUB000242','Theory','Stress managment by yoga','SMYOGA',1,'----','COMB000001'),('SUB000243','Theory','Personality development through life enchancement skills','PDES',1,'----','COMB000001'),('SUB000244','Theory','Constituion of india','COI',1,'----','COMB000001'),('SUB000245','Lab','biomedical signal and image  processing lab','BMSIP',1,'----','COMB000001'),('SUB000246','Lab','Virtual instrumentation lab','VI lab',1,'----','COMB000001'),('SUB000247','Lab','Mini project','mini project',1,'----','COMB000001'),('SUB000255','Theory','TEST1','TST1',1,'----','COMB000016'),('SUB000256','Theory','TEST2','TST2',1,'----','COMB000016'),('SUB000257','Theory','TEST3','TST3',1,'----','COMB000016'),('SUB000258','Theory','TEST4','TST4',1,'----','COMB000016'),('SUB000259','Theory','TEST5','TST5',1,'----','COMB000016'),('SUB000260','Lab','TEST6','TST6',1,'----','COMB000016'),('SUB000261','Lab','TEST7','TST7',1,'----','COMB000016'),('SUB000262','Lab','TEST8','TST8',1,'----','COMB000016'),('SUB000267','Lab','cherry','cherry',1,'----','COMB000010'),('SUB000268','Theory','charan','charan',1,'----','COMB000010'),('SUB000273','Theory','Basic Electronics Engineering','BEE',1,'----','COMB000008'),('SUB000274','Lab','Basic Electronics Engineering','BEE',1,'----','COMB000008'),('SUB000275','Theory','Logic and Switching Theory','LST',1,'----','COMB000008'),('SUB000276','Theory','Data Structures and Algorithms','DSA',1,'----','COMB000008'),('SUB000277','Lab','Data Structures and Algorithms','DSA',1,'----','COMB000008'),('SUB000278','Lab','IT Workshop(Python and MATLAB)','IT Workshop',1,'----','COMB000008'),('SUB000279','Theory','Mathematics-III(Probability & Statistics)','M-III',1,'----','COMB000008'),('SUB000280','Theory','Humanities-1(Operation Research)','OR',1,'----','COMB000008'),('SUB000281','Theory','Positive Psychology','PP',1,'----','COMB000008'),('SUB000282','Theory','Essence of Indian Traditional Knowledge','EITK',1,'----','COMB000008'),('SUB000283','Theory','Signals and Systems','S&S',1,'----','COMB000008'),('SUB000284','Theory','Automata Languages and Computation','ALC',1,'----','COMB000008'),('SUB000285','Theory','Operating Systems','OS',1,'----','COMB000008'),('SUB000286','Lab','Operating Systems','OS',1,'----','COMB000008'),('SUB000287','Theory','Software Engineering','SE',1,'----','COMB000008'),('SUB000290','Theory','Micro Processors and Micro Controllers in Medical Applications','MPMC',1,NULL,'COMB000006'),('SUB000291','Theory','Biomedical Equipment-I','BME-I',1,NULL,'COMB000006'),('SUB000292','Theory','Biomedical Equipment-II','BME-II',1,NULL,'COMB000006'),('SUB000293','Theory','Medical Imaging Systems','MIS',1,NULL,'COMB000006'),('SUB000294','Theory','Biomechanics','BM',1,'Professional Elective-I','COMB000006'),('SUB000295','Theory','Biological Control Systems','BCS',1,'Professional Elective-II','COMB000006'),('SUB000296','Lab','Mandatory Course-I Environmental Science','MC-I ES',1,NULL,'COMB000006'),('SUB000297','Lab','Micro Processors and Micro Controllers in Medical Applications Lab','MPMC in MA Lab',1,NULL,'COMB000006'),('SUB000298','Lab','Biomedical Equipment Lab','BME Lab',1,NULL,'COMB000006'),('SUB000299','Theory','Bio Medical Signal Procesing','BMSP',1,NULL,'COMB000003'),('SUB000300','Theory','Medical Image Processing','MIP',1,NULL,'COMB000003'),('SUB000301','Theory','Hospital Administration Management','HAM',1,NULL,'COMB000003'),('SUB000302','Theory','Cell And Tissue Engineering','CTE',1,'Professional Elective- IV','COMB000003'),('SUB000303','Theory','Rehabilitation Engineering','RE',1,'Professional Elective- V','COMB000003'),('SUB000304','Theory','Green Building Technology','GBT',1,'Open Elective - II','COMB000003'),('SUB000305','Theory','Verilog HDL','Verilog HDL',1,'Open Elective - II','COMB000003'),('SUB000306','Theory','Non-Conventional Energy Sources','NCES',1,'Open Elective - II','COMB000003'),('SUB000307','Theory','Information Security','Information Security',1,'Open Elective - II','COMB000003'),('SUB000308','Theory','Startup Enterpreneurship','S & E',1,'Open Elective - II','COMB000003'),('SUB000309','Lab','Bio-Signal Processing Lab','BMSP Lab',1,NULL,'COMB000003'),('SUB000310','Lab','Medical Image Processing & Modeling Lab','MIP & ML Lab',1,NULL,'COMB000003'),('SUB000311','Lab','Project Stage - I','Project Stage - I',1,NULL,'COMB000003'),('SUB000312','Lab','Summer Internship','Summer InternShip',1,NULL,'COMB000003'),('SUB000313','Theory','Positive Psychology','PP',1,NULL,'COMB000009'),('SUB000314','Theory','Essence of Indian Traditional Knowledge','EITK',1,NULL,'COMB000009'),('SUB000315','Theory','Signals and Systems','S&S',1,NULL,'COMB000009'),('SUB000316','Theory','Database Management Systems','DBMS',1,NULL,'COMB000009'),('SUB000317','Theory','Automata Languages and Computation','ALC',1,NULL,'COMB000009'),('SUB000318','Theory','Operating Systems','OS',1,NULL,'COMB000009'),('SUB000319','Theory','Web Programming','WP',1,NULL,'COMB000009'),('SUB000320','Lab','Database Management Systems Lab','DBMS Lab',1,NULL,'COMB000009'),('SUB000321','Lab','Operating Systems Lab','OP Lab',1,NULL,'COMB000009'),('SUB000330','Theory','Engg. Mathematics-I','Eng. Maths-I',1,NULL,'COMB000156'),('SUB000331','Theory','Basic Electrical Engineering','BEE',1,NULL,'COMB000156'),('SUB000332','Theory','Eng. Chemistry','Eng. Chemistry-I',1,NULL,'COMB000156'),('SUB000333','Theory','Engg. English','English',1,NULL,'COMB000156'),('SUB000334','Lab','Engg. Chemistry Lab','Chemistry Lab',1,NULL,'COMB000156'),('SUB000335','Lab','English Lab','English Lab',1,NULL,'COMB000156'),('SUB000336','Lab','Basic Electrical Engineering Lab','BEE Lab',1,NULL,'COMB000156');
/*!40000 ALTER TABLE `subject_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `subject_info_BEFORE_INSERT` BEFORE INSERT ON `subject_info` FOR EACH ROW BEGIN
INSERT INTO su_seq VALUES (NULL);
    SET NEW.sub_id = CONCAT('SUB', LPAD(LAST_INSERT_ID(), 6, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `task_type`
--

DROP TABLE IF EXISTS `task_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_type` (
  `tasktype_id` varchar(15) NOT NULL,
  `description` varchar(250) NOT NULL,
  `statename` varchar(45) DEFAULT NULL,
  `core_task` int DEFAULT NULL,
  `view_name` varchar(45) DEFAULT NULL,
  `task_link` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tasktype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_type`
--

LOCK TABLES `task_type` WRITE;
/*!40000 ALTER TABLE `task_type` DISABLE KEYS */;
INSERT INTO `task_type` VALUES ('TT11100','Change Password','Change Password',1,NULL,NULL),('TT11101','Dept details','Dept details',1,NULL,NULL),('TT11102','Edit TimeTable','Edit TimeTable',1,NULL,NULL),('TT11178','User Managemnt','User Managemnt',1,NULL,NULL),('TT11186','Schedule TimeTable','Schedule TimeTable',1,NULL,NULL),('TT11187','Add subjects','Add subjects',1,NULL,NULL),('TT11188','Add faculty','Add faculty',1,NULL,NULL),('TT11189','Add Department','Add Department',1,NULL,NULL),('TT11192','Block Shedule','Block Shedule',0,NULL,NULL),('TT11196','view shedule','faculty',1,NULL,NULL),('TT11197','Clear Timetable','Clear Timetable',1,NULL,NULL),('TT11198','Clear Schedule','Clear Schedule',0,NULL,NULL);
/*!40000 ALTER TABLE `task_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `task_type_BEFORE_INSERT` BEFORE INSERT ON `task_type` FOR EACH ROW BEGIN
 INSERT INTO tasktype_seq VALUES (NULL);
    SET NEW.tasktype_id = CONCAT('TT', LPAD(LAST_INSERT_ID(), 5, '1'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `task_type_role_mapping`
--

DROP TABLE IF EXISTS `task_type_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_type_role_mapping` (
  `tasktype_id` varchar(15) NOT NULL,
  `role_id` varchar(45) NOT NULL,
  `next_role_id` varchar(45) DEFAULT NULL,
  `task_type_role_mappingcol` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`task_type_role_mappingcol`),
  KEY `tttrole` (`next_role_id`),
  KEY `t2role` (`role_id`),
  KEY `tasktype` (`tasktype_id`),
  CONSTRAINT `t2role` FOREIGN KEY (`role_id`) REFERENCES `processrole` (`id`),
  CONSTRAINT `tasktype` FOREIGN KEY (`tasktype_id`) REFERENCES `task_type` (`tasktype_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tttrole` FOREIGN KEY (`next_role_id`) REFERENCES `processrole` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_type_role_mapping`
--

LOCK TABLES `task_type_role_mapping` WRITE;
/*!40000 ALTER TABLE `task_type_role_mapping` DISABLE KEYS */;
INSERT INTO `task_type_role_mapping` VALUES ('TT11178','ROL00009','ROL00009',36),('TT11186','ROl00004','ROl00004',44),('TT11187','ROL00009','ROL00009',45),('TT11188','ROL00009','ROL00009',46),('TT11189','ROL00009','ROL00009',47),('TT11192','ROL00009','ROL00009',48),('TT11196','ROL00001','ROL00001',52),('TT11198','ROL00009','ROL00009',53),('TT11197','ROL00009','ROL00009',54),('TT11100','ROL00009','ROL00009',56),('TT11100','ROL00001','ROL00001',57),('TT11100','ROl00004','ROl00004',58),('TT11101','ROl00004','ROl00004',59),('TT11101','ROL00001','ROL00001',60),('TT11101','ROL00009','ROL00009',61),('TT11102','ROl00004','ROl00004',62);
/*!40000 ALTER TABLE `task_type_role_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasktype_seq`
--

DROP TABLE IF EXISTS `tasktype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasktype_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasktype_seq`
--

LOCK TABLES `tasktype_seq` WRITE;
/*!40000 ALTER TABLE `tasktype_seq` DISABLE KEYS */;
INSERT INTO `tasktype_seq` VALUES (1),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102);
/*!40000 ALTER TABLE `tasktype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theory_fac_allotment`
--

DROP TABLE IF EXISTS `theory_fac_allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theory_fac_allotment` (
  `theoryfacallt` varchar(255) NOT NULL,
  `sub_id` varchar(45) NOT NULL,
  `facid` varchar(45) NOT NULL,
  PRIMARY KEY (`theoryfacallt`),
  KEY `sub_id_idx` (`sub_id`),
  KEY `facid_idx` (`facid`),
  CONSTRAINT `facid` FOREIGN KEY (`facid`) REFERENCES `faculty_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sub_id` FOREIGN KEY (`sub_id`) REFERENCES `subject_info` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theory_fac_allotment`
--

LOCK TABLES `theory_fac_allotment` WRITE;
/*!40000 ALTER TABLE `theory_fac_allotment` DISABLE KEYS */;
INSERT INTO `theory_fac_allotment` VALUES ('THEOFAC000161','SUB000238','FAC000064'),('THEOFAC000162','SUB000239','FAC000060'),('THEOFAC000163','SUB000240','FAC000072'),('THEOFAC000164','SUB000242','FAC000095'),('THEOFAC000165','SUB000243','FAC000096'),('THEOFAC000166','SUB000244','FAC000097'),('THEOFAC000207','SUB000273','FAC000002'),('THEOFAC000208','SUB000275','FAC000003'),('THEOFAC000209','SUB000276','FAC000004'),('THEOFAC000210','SUB000280','FAC000005'),('THEOFAC000211','SUB000279','FAC000001'),('THEOFAC000212','SUB000281','FAC000034'),('THEOFAC000213','SUB000282','FAC000040'),('THEOFAC000214','SUB000283','FAC000041'),('THEOFAC000215','SUB000284','FAC000009'),('THEOFAC000216','SUB000285','FAC000043'),('THEOFAC000217','SUB000287','FAC000099'),('THEOFAC000218','SUB000290','FAC000101'),('THEOFAC000219','SUB000294','FAC000059'),('THEOFAC000220','SUB000291','FAC000058'),('THEOFAC000221','SUB000293','FAC000102'),('THEOFAC000222','SUB000292','FAC000072'),('THEOFAC000223','SUB000295','FAC000101'),('THEOFAC000224','SUB000299','FAC000057'),('THEOFAC000225','SUB000300','FAC000064'),('THEOFAC000226','SUB000301','FAC000060'),('THEOFAC000227','SUB000302','FAC000072'),('THEOFAC000228','SUB000303','FAC000102'),('THEOFAC000229','SUB000304','FAC000078'),('THEOFAC000230','SUB000305','FAC000053'),('THEOFAC000231','SUB000306','FAC000054'),('THEOFAC000232','SUB000307','FAC000043'),('THEOFAC000233','SUB000308','FAC000045'),('THEOFAC000234','SUB000313','FAC000034'),('THEOFAC000235','SUB000317','FAC000009'),('THEOFAC000236','SUB000316','FAC000042'),('THEOFAC000237','SUB000318','FAC000043'),('THEOFAC000238','SUB000314','FAC000040'),('THEOFAC000239','SUB000315','FAC000041'),('THEOFAC000240','SUB000319','FAC000044'),('THEOFAC000257','SUB000330','FAC000105'),('THEOFAC000258','SUB000332','FAC000107'),('THEOFAC000259','SUB000331','FAC000106'),('THEOFAC000260','SUB000333','FAC000108');
/*!40000 ALTER TABLE `theory_fac_allotment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `theory_fac_allotment_BEFORE_INSERT` BEFORE INSERT ON `theory_fac_allotment` FOR EACH ROW BEGIN
	insert into theory_fac_allotment_seq values(null);
    SET NEW.theoryfacallt= CONCAT('THEOFAC', LPAD(LAST_INSERT_ID(), 6, '0'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `theory_fac_allotment_seq`
--

DROP TABLE IF EXISTS `theory_fac_allotment_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theory_fac_allotment_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theory_fac_allotment_seq`
--

LOCK TABLES `theory_fac_allotment_seq` WRITE;
/*!40000 ALTER TABLE `theory_fac_allotment_seq` DISABLE KEYS */;
INSERT INTO `theory_fac_allotment_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(233),(234),(235),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(249),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260);
/*!40000 ALTER TABLE `theory_fac_allotment_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_table` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `day` varchar(45) NOT NULL,
  `p1` varchar(1000) DEFAULT NULL,
  `p2` varchar(1000) DEFAULT NULL,
  `p3` varchar(1000) DEFAULT NULL,
  `p4` varchar(1000) DEFAULT NULL,
  `p6` varchar(1000) DEFAULT NULL,
  `p7` varchar(1000) DEFAULT NULL,
  `p8` varchar(1000) DEFAULT NULL,
  `active` int NOT NULL DEFAULT '1',
  `combid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  KEY `day` (`day`),
  KEY `combo_idx` (`combid`),
  CONSTRAINT `day` FOREIGN KEY (`day`) REFERENCES `working_days` (`day`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (37,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(38,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(39,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(40,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(41,'Monday','IT Workshop ( Ramya/IGR/ ) batch-III( CSE, B-209 ) & BEE Lab ( IGR/KSH/ ) batch-I( CSE, B-201 )','IT Workshop ( Ramya/IGR/ ) batch-III( CSE, B-209 ) & BEE Lab ( IGR/KSH/ ) batch-I( CSE, B-201 )','IT Workshop ( Ramya/IGR/ ) batch-III( CSE, B-209 ) & BEE Lab ( IGR/KSH/ ) batch-I( CSE, B-201 )','IT Workshop ( Ramya/IGR/ ) batch-III( CSE, B-209 ) & BEE Lab ( IGR/KSH/ ) batch-I( CSE, B-201 )','M-III (Ramya)  & LST (VS) ','M-III (Ramya)  & LST (VS) ','BEE (AG) ',0,'COMB000008'),(42,'Saturday','M-III (Ramya)  & OR (IGR) ','LST (VS)  & BEE Lab ( IGR/KSH/ ) batch-I( CSE, S-IV Lab )','BEE Lab ( IGR/KSH/ ) batch-III( Biomedical, 210 ) & IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 110 )','BEE Lab ( IGR/KSH/ ) batch-III( Biomedical, 110 ) & IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 110 )','LST (VS)  & IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 107 )','LST (VS)  & IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 107 )','IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 110 ) & BEE Lab ( IGR/KSH/ ) batch-III( Biomedical, 110 )',0,'COMB000008'),(43,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000006'),(44,'Monday','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )','MPMC (BG) ','BME-II (GS) ','BCS (BG) ','MPMC in MA Lab ( BG/MM/ ) batch-I( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-II( Biomedical, 109 )','MPMC in MA Lab ( BG/MM/ ) batch-I( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-II( Biomedical, 109 )',NULL,0,'COMB000006'),(45,'Tuesday','BME-II (GS) ','MPMC (BG) ','MIS (VS) ','BCS (BG) ','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )',NULL,NULL,0,'COMB000006'),(46,'Wednesday','BME-I (MVR) ','BM (MM) ','MPMC (BG) ','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )','MPMC in MA Lab ( BG/MM/ ) batch-II( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-I( Biomedical, 109 )','MPMC in MA Lab ( BG/MM/ ) batch-II( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-I( Biomedical, 109 )',NULL,0,'COMB000006'),(47,'Thursday','BME-I (MVR) ','BM (MM) ','MIS (VS) ','BCS (BG) ',NULL,NULL,NULL,0,'COMB000006'),(48,'Friday','BME-I (MVR) ','MIS (VS) ','BME-II (GS) ','BM (MM) ',NULL,NULL,NULL,0,'COMB000006'),(49,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000006'),(50,'Monday','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )','MPMC (BG) ','BME-II (GS) ','BCS (BG) ','MPMC in MA Lab ( BG/MM/ ) batch-I( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-II( Biomedical, 109 )','MPMC in MA Lab ( BG/MM/ ) batch-I( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-II( Biomedical, 109 )',NULL,1,'COMB000006'),(51,'Tuesday','BME-II (GS) ','MPMC (BG) ','MIS (VS) ','BCS (BG) ','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )',NULL,NULL,1,'COMB000006'),(52,'Wednesday','BME-I (MVR) ','BM (MM) ','MPMC (BG) ','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )','MPMC in MA Lab ( BG/MM/ ) batch-II( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-I( Biomedical, 109 )','MPMC in MA Lab ( BG/MM/ ) batch-II( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-I( Biomedical, 109 )',NULL,1,'COMB000006'),(53,'Thursday','BME-I (MVR) ','BM (MM) ','MIS (VS) ','BCS (BG) ',NULL,NULL,NULL,1,'COMB000006'),(54,'Friday','BME-I (MVR) ','MIS (VS) ','BME-II (GS) ','BM (MM) ',NULL,NULL,NULL,1,'COMB000006'),(55,'Monday','DSA (KSH) ','BEE (GKK) ','M-III (KRB) ','OR (CV) ','BEE ( GKK/ ) batch-I( CSE, B-210 )','BEE ( GKK/ ) batch-I( CSE, B-210 )',NULL,0,'COMB000008'),(56,'Tuesday','M-III (KRB) ','BEE (GKK) ','LST (MVD) ','OR (CV) ','BEE ( GKK/ ) batch-II( CSE, B-210 )','BEE ( GKK/ ) batch-II( CSE, B-210 )',NULL,0,'COMB000008'),(57,'Wednesday','IT Workshop ( Lavanya/Saida/MT/ ) batch-I( CSE, S-II Lab )','IT Workshop ( Lavanya/Saida/MT/ ) batch-II( CSE, S-III Lab )','M-III (KRB) ','OR (CV) ','LST (MVD) ',NULL,NULL,0,'COMB000008'),(58,'Thursday','BEE (GKK) ','M-III (KRB) ','BEE ( GKK/ ) batch-II( CSE, B-210 )','BEE ( GKK/ ) batch-II( CSE, B-210 )',NULL,NULL,NULL,0,'COMB000008'),(59,'Friday','DSA (KSH) ','DSA (KSH) ','LST (MVD) ','BEE (GKK) ',NULL,NULL,NULL,0,'COMB000008'),(60,'Saturday','DSA ( Ramya/Prashanthi/IGR/ ) batch-I( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) batch-II( CSE, S-III Lab )','DSA ( Ramya/Prashanthi/IGR/ ) batch-III( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) batch-III( CSE, S-IV Lab )','IT Workshop ( Lavanya/Saida/MT/ ) batch-I( CSE, S-II Lab )','IT Workshop ( Lavanya/Saida/MT/ ) batch-II( CSE, S-III Lab )','IT Workshop ( Lavanya/Saida/MT/ ) batch-III( CSE, S-IV Lab )',0,'COMB000008'),(61,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(62,'Tuesday','PP (LM) ','PP (LM) ','S&S (MSS) ','ALC (MT) ','EITK (KR) ','DBMS (SSR) ',NULL,0,'COMB000009'),(63,'Wednesday',NULL,'S&S (MSS) ','OS (AG) ','DBMS (SSR) ','EITK (KR) ','OP Lab ( AG/N.Madhu/MT/ ) batch-I( CSE, S-III Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-II( CSE, S-II Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-III( CSE, S-IV Lab )','OP Lab ( AG/N.Madhu/MT/ ) batch-I( CSE, S-III Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-II( CSE, S-II Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-III( CSE, S-IV Lab )',0,'COMB000009'),(64,'Thursday',NULL,'DBMS (SSR) ','OS (AG) ','ALC (MT) ','WP (VS) ','OP Lab ( AG/N.Madhu/MT/ ) batch-I( CSE, R and D Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-II( CSE, Ramanujan Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-III( CSE, S-III Lab )','OP Lab ( AG/N.Madhu/MT/ ) batch-I( CSE, R and D Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-II( CSE, Ramanujan Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-III( CSE, S-III Lab )',0,'COMB000009'),(65,'Monday',NULL,'ALC (MT) ','WP (VS) ','OS (AG) ','EITK (KR) ','DBMS (SSR) ','DBMS (SSR) ',0,'COMB000009'),(66,'Friday',NULL,'WP (VS) ','PP (LM) ','S&S (MSS) ','DBMS Lab ( VS/Prakash/SSR/ ) batch-I( CSE, S-II Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-III( CSE, S-IV Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-II( CSE, S-III Lab )','DBMS Lab ( VS/Prakash/SSR/ ) batch-I( CSE, S-II Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-III( CSE, S-IV Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-II( CSE, S-III Lab )',NULL,0,'COMB000009'),(67,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(68,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(69,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(70,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(71,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(72,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, R and D Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, R and D Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, R and D Lab )','BEE ( GKK/ ) -I( CSE, R and D Lab )',NULL,NULL,NULL,0,'COMB000008'),(73,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(74,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(75,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(76,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(77,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(78,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-II Lab )',NULL,NULL,NULL,0,'COMB000008'),(79,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(80,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(81,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(82,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(83,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(84,'Monday','BEE ( GKK/ ) -I( CSE, S-II Lab )',NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(85,'Tuesday','ALC (MT) ','ALC (MT) ','ALC (MT) ',NULL,'IT Workshop ( Lavanya/Saida/MT/ ) -III( CSE, S-IV Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -III( CSE, S-IV Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -III( CSE, S-IV Lab )',0,'COMB000008'),(86,'Wednesday','BEE ( GKK/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(87,'Thursday',NULL,NULL,NULL,NULL,'BEE ( GKK/ ) -III( S & H, 206 )','BEE ( GKK/ ) -III( S & H, 206 )','BEE ( GKK/ ) -III( S & H, 206 )',0,'COMB000008'),(88,'Friday','IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, S-IV Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, S-IV Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, S-IV Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(89,'Saturday','BEE ( GKK/ ) -II( CSE, S-IV Lab )','BEE ( GKK/ ) -II( CSE, S-IV Lab )',NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(90,'Monday','PP (LM) ','PP (LM) ','PP (LM) ','PP (LM) ',NULL,NULL,NULL,0,'COMB000008'),(91,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(92,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(93,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(94,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(95,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(96,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(97,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(98,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(99,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(100,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(101,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(102,'Monday','BEE ( GKK/ ) -III( CSE, S-IV Lab )','BEE ( GKK/ ) -III( CSE, S-IV Lab )','BEE ( GKK/ ) -III( CSE, S-IV Lab )','BEE ( GKK/ ) -III( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(103,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(104,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(105,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(106,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(107,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(108,'Monday','BEE (GKK) ','BEE (GKK) ','BEE (GKK) ','BEE (GKK) ',NULL,NULL,NULL,0,'COMB000008'),(109,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(110,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(111,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(112,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(113,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(114,'Tuesday','OS ( AG/N.Madhu/MT/ ) -II( CSE, Ramanujan Lab )','OS ( AG/N.Madhu/MT/ ) -II( CSE, Ramanujan Lab )','OS ( AG/N.Madhu/MT/ ) -II( CSE, Ramanujan Lab )',NULL,NULL,NULL,NULL,0,'COMB000008'),(115,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(116,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(117,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(118,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(119,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(120,'Tuesday','LST (MVD) ','LST (MVD) ','LST (MVD) ','LST (MVD) ',NULL,NULL,NULL,0,'COMB000008'),(121,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(122,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(123,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(124,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(125,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(126,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(127,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(128,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(129,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(130,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(131,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(132,'Tuesday','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(133,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(134,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(135,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(136,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(137,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(138,'Tuesday','EITK (KR) ','EITK (KR) ','EITK (KR) ','EITK (KR) ',NULL,NULL,NULL,0,'COMB000008'),(139,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(140,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(141,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(142,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(143,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(144,'Wednesday','OR (CV) ','OR (CV) ','OR (CV) ','OR (CV) ',NULL,NULL,NULL,0,'COMB000008'),(145,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(146,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(147,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(148,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(149,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(150,'Monday',NULL,'DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(151,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(152,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(153,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(154,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(155,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(156,'Tuesday','OR (CV) ','OR (CV) ','OR (CV) ','OR (CV) ',NULL,NULL,NULL,0,'COMB000008'),(157,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(158,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(159,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(160,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(161,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(162,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(163,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(164,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(165,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(166,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(167,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(168,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(169,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(170,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(171,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(172,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(173,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(174,'Wednesday','BEE ( GKK/ ) -III( CSE, Ramanujan Lab )','BEE ( GKK/ ) -III( CSE, Ramanujan Lab )','BEE ( GKK/ ) -III( CSE, Ramanujan Lab )','BEE ( GKK/ ) -III( CSE, Ramanujan Lab )',NULL,NULL,NULL,0,'COMB000008'),(175,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(176,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(177,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(178,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(179,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(180,'Tuesday','OR (CV) ','OR (CV) ','OR (CV) ','OR (CV) ',NULL,NULL,NULL,0,'COMB000008'),(181,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(182,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(183,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(184,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(185,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(186,'Monday','BEE ( GKK/ ) -I( CSE, Ramanujan Lab )','BEE ( GKK/ ) -I( CSE, Ramanujan Lab )','BEE ( GKK/ ) -I( CSE, Ramanujan Lab )','BEE ( GKK/ ) -I( CSE, Ramanujan Lab )',NULL,NULL,NULL,0,'COMB000008'),(187,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(188,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(189,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(190,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(191,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(192,'Tuesday','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, Ramanujan Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, Ramanujan Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, Ramanujan Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, Ramanujan Lab )',NULL,NULL,NULL,0,'COMB000008'),(193,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(194,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(195,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(196,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(197,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(198,'Tuesday','EITK (KR) ','EITK (KR) ','EITK (KR) ','EITK (KR) ',NULL,NULL,NULL,0,'COMB000008'),(199,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(200,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(201,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(202,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(203,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(204,'Wednesday','BEE (GKK) ','BEE (GKK) ','BEE (GKK) ','BEE (GKK) ',NULL,NULL,NULL,0,'COMB000008'),(205,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(206,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(207,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(208,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(209,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(210,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(211,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(212,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(213,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(214,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(215,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(216,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(217,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(218,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(219,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(220,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(221,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(222,'Tuesday','EITK (KR) ','EITK (KR) ','EITK (KR) ','EITK (KR) ',NULL,NULL,NULL,0,'COMB000009'),(223,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(224,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(225,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(226,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(227,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(228,'Tuesday','S&S (MSS) ','S&S (MSS) ','S&S (MSS) ','S&S (MSS) ',NULL,NULL,NULL,1,'COMB000009'),(229,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(230,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(231,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(232,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(233,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(234,'Monday','OS ( AG/N.Madhu/MT/ ) -I( CSE, S-IV Lab )','OS ( AG/N.Madhu/MT/ ) -I( CSE, S-IV Lab )','OS ( AG/N.Madhu/MT/ ) -I( CSE, S-IV Lab )','OS ( AG/N.Madhu/MT/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(235,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(236,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(237,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(238,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(239,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(240,'Monday','IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, Ramanujan Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, Ramanujan Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, Ramanujan Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, Ramanujan Lab )',NULL,NULL,NULL,0,'COMB000008'),(241,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(242,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(243,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(244,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(245,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(246,'Monday',NULL,NULL,'BEE ( GKK/ ) -II( CSE, S-IV Lab )','BEE ( GKK/ ) -II( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(247,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(248,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(249,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(250,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(251,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(252,'Monday',NULL,'BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,NULL,0,'COMB000008'),(253,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(254,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(255,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(256,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(257,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(258,'Monday',NULL,NULL,NULL,'OS ( AG/N.Madhu/MT/ ) -II( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(259,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(260,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(261,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(262,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(263,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(264,'Monday',NULL,NULL,'BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(265,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(266,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(267,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(268,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(269,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(270,'Monday','BEE ( GKK/ ) -III( CSE, S-IV Lab )','BEE ( GKK/ ) -III( CSE, S-IV Lab )',NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(271,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(272,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(273,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(274,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(275,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(276,'Monday',NULL,'BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000008'),(277,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(278,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(279,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(280,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(281,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(282,'Monday','BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,NULL,0,'COMB000008'),(283,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000008'),(284,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000008'),(285,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000008'),(286,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000008'),(287,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000008'),(288,'Monday','BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )','BEE ( GKK/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,1,'COMB000008');
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_mapping`
--

DROP TABLE IF EXISTS `user_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role_mapping` (
  `userid` varchar(50) NOT NULL,
  `roleid` varchar(9) NOT NULL,
  PRIMARY KEY (`userid`,`roleid`),
  KEY `userid` (`userid`) /*!80000 INVISIBLE */,
  KEY `user_role_mapping_ibfk_2` (`roleid`),
  CONSTRAINT `user_role_mapping_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_role_mapping_ibfk_2` FOREIGN KEY (`roleid`) REFERENCES `processrole` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_mapping`
--

LOCK TABLES `user_role_mapping` WRITE;
/*!40000 ALTER TABLE `user_role_mapping` DISABLE KEYS */;
INSERT INTO `user_role_mapping` VALUES ('FAC000004','ROL00001'),('FAC000081','ROL00001'),('FAC000083','ROL00001'),('FAC000084','ROL00001'),('FAC000086','ROL00001'),('FAC000087','ROL00001'),('FAC000088','ROL00001'),('FAC000089','ROL00001'),('FAC000090','ROL00001'),('FAC000091','ROL00001'),('FAC000092','ROL00001'),('FAC000093','ROL00001'),('FAC000094','ROL00001'),('FAC000095','ROL00001'),('FAC000096','ROL00001'),('FAC000097','ROL00001'),('FAC000099','ROL00001'),('FAC000101','ROL00001'),('FAC000102','ROL00001'),('FAC000103','ROL00001'),('FAC000104','ROL00001'),('FAC000105','ROL00001'),('FAC000106','ROL00001'),('FAC000107','ROL00001'),('FAC000108','ROL00001'),('FAC000109','ROL00001'),('FAC000110','ROL00001'),('EMP00024','ROL00004'),('EMP00025','ROL00004'),('EMP00034','ROL00004'),('USR11120','ROL00004'),('EMP00026','ROL00009'),('EMP00027','ROL00009'),('EMP00028','ROL00009'),('EMP00029','ROL00009'),('EMP00030','ROL00009'),('EMP00031','ROL00009'),('EMP00032','ROL00009'),('EMP00033','ROL00009'),('USR11116','ROL00009');
/*!40000 ALTER TABLE `user_role_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `dofcreation` date NOT NULL,
  `valid` int DEFAULT NULL,
  `emp_codeno` varchar(45) DEFAULT NULL,
  `cont_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('EMP00024','149e200961ea52955bd55cb49a127935','2022-06-22',1,'EMP00024',NULL),('EMP00025','e10adc3949ba59abbe56e057f20f883e','2022-06-23',1,'EMP00025',NULL),('EMP00026','c33367701511b4f6020ec61ded352059','2022-09-19',1,'EMP00026',NULL),('EMP00027','e10adc3949ba59abbe56e057f20f883e','2022-09-19',0,'EMP00027',NULL),('EMP00028','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,'EMP00028',NULL),('EMP00029','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,'EMP00029',NULL),('EMP00030','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,'EMP00030',NULL),('EMP00031','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,'EMP00031',NULL),('EMP00032','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,'EMP00032',NULL),('EMP00033','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,'EMP00033',NULL),('EMP00034','e10adc3949ba59abbe56e057f20f883e','2023-02-24',1,'EMP00034',NULL),('FAC000004','e10adc3949ba59abbe56e057f20f883e','2022-05-31',1,NULL,NULL),('FAC000081','123456','2022-05-31',0,NULL,NULL),('FAC000083','e10adc3949ba59abbe56e057f20f883e','2022-06-03',0,NULL,NULL),('FAC000084','e10adc3949ba59abbe56e057f20f883e','2022-06-03',1,NULL,NULL),('FAC000085','e10adc3949ba59abbe56e057f20f883e','2022-06-03',0,NULL,NULL),('FAC000086','e10adc3949ba59abbe56e057f20f883e','2022-06-03',1,NULL,NULL),('FAC000087','e10adc3949ba59abbe56e057f20f883e','2022-06-04',1,NULL,NULL),('FAC000088','e10adc3949ba59abbe56e057f20f883e','2022-06-04',1,NULL,NULL),('FAC000089','e10adc3949ba59abbe56e057f20f883e','2022-06-07',1,NULL,NULL),('FAC000090','e10adc3949ba59abbe56e057f20f883e','2022-06-07',1,NULL,NULL),('FAC000091','e10adc3949ba59abbe56e057f20f883e','2022-06-07',1,NULL,NULL),('FAC000092','e10adc3949ba59abbe56e057f20f883e','2022-06-07',1,NULL,NULL),('FAC000093','e10adc3949ba59abbe56e057f20f883e','2022-06-08',1,NULL,NULL),('FAC000094','e10adc3949ba59abbe56e057f20f883e','2022-06-20',1,NULL,NULL),('FAC000095','e10adc3949ba59abbe56e057f20f883e','2022-06-20',1,NULL,NULL),('FAC000096','e10adc3949ba59abbe56e057f20f883e','2022-06-20',1,NULL,NULL),('FAC000097','e10adc3949ba59abbe56e057f20f883e','2022-06-20',1,NULL,NULL),('FAC000099','e10adc3949ba59abbe56e057f20f883e','2022-06-23',1,NULL,NULL),('FAC000101','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000102','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000103','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000104','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000105','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000106','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000107','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000108','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000109','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000110','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('USR11114','e10adc3949ba59abbe56e057f20f883e','2020-08-06',1,'146087',NULL),('USR11116','e10adc3949ba59abbe56e057f20f883e','2020-08-21',1,'146002',NULL),('USR11120','e10adc3949ba59abbe56e057f20f883e','2020-09-03',0,'146005',NULL),('USR11164','sdadlasdklasdj','2020-09-03',1,'146005',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_seq`
--

DROP TABLE IF EXISTS `users_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_seq` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_seq`
--

LOCK TABLES `users_seq` WRITE;
/*!40000 ALTER TABLE `users_seq` DISABLE KEYS */;
INSERT INTO `users_seq` VALUES (1),(5),(7),(8),(9),(10),(11),(12),(13),(14),(16),(17),(18),(19),(20),(21),(24),(25),(27),(28),(31),(34),(35),(37),(56),(57),(58),(59),(60),(61),(64);
/*!40000 ALTER TABLE `users_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersession`
--

DROP TABLE IF EXISTS `usersession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersession` (
  `session_id` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `loginStatus` int NOT NULL DEFAULT '0',
  `timeIn` timestamp NOT NULL,
  `timeOut` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `user_id_idx` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersession`
--

LOCK TABLES `usersession` WRITE;
/*!40000 ALTER TABLE `usersession` DISABLE KEYS */;
INSERT INTO `usersession` VALUES ('00294cc2-105c-4893-b6a9-4e678e27702a','FAC000004',1,'2022-10-22 07:08:18','2022-08-13 18:15:35'),('02579ecc-5679-4917-83ed-3b014415c705','USR00001',1,'2021-01-07 09:31:58','2021-01-07 11:15:31'),('0413add1-cc64-4314-9484-9418f294418e','FAC000092',1,'2022-06-07 18:04:35','2022-06-07 18:04:39'),('0c4af59c-b090-4dd6-b19a-1b76d003cc40','EMP00021',1,'2022-06-19 09:13:41','2022-06-20 04:45:17'),('1146984a-8689-46e0-af4e-27f48fc5fd85','USR11119',1,'2021-04-19 10:42:50','2021-04-19 10:42:58'),('2569d40a-3890-4214-a35f-476033dc3b61','USR11110',1,'2020-08-05 10:03:37','2020-08-04 07:21:17'),('26a2558d-0786-4e85-8f1d-4c0cf0db5830','USR00002',1,'2020-07-29 11:25:40',NULL),('2e95a6ae-928f-4cc8-9985-e6691e68633f','EMP00026',1,'2023-02-24 06:54:57','2022-09-19 09:25:14'),('3b6b0b7c-9d72-46ae-a94e-edb7bd920a48','USR22221',1,'2020-07-29 11:58:56',NULL),('453a0319-4704-43dd-8ed0-e3a0fe1ccff0','USR11124',1,'2021-01-29 06:15:06',NULL),('4948e672-b8b1-40fd-982c-352e71f9b16d','FAC000084',1,'2022-10-15 07:02:35','2022-06-20 15:47:39'),('520afb86-a6d1-440e-867b-c901ee9db79b','USR11135',1,'2021-02-04 04:52:13',NULL),('54e0c49d-cb69-4da5-b9ac-2284eaa31a44','FAC000088',1,'2022-06-03 18:34:44',NULL),('6afc3829-53fb-4cd9-ad9a-4effbe9f7e35','USR11112',1,'2020-08-05 10:02:59','2020-08-05 10:03:28'),('6da219f9-04f9-458c-b791-92718702fed2','USR22225',1,'2020-07-30 05:24:48','2020-07-30 04:58:11'),('76d0a5f3-af76-45d3-bcf7-82e66f164585','USR11121',1,'2021-04-19 10:57:11','2021-04-19 10:43:27'),('773965c5-44c6-4f7a-9743-f9d92ccaebe3','FAC000082',1,'2022-06-03 08:53:11','2022-05-31 17:41:20'),('7758701c-d839-43d2-8df4-fdd8640ba55f','FAC000097',1,'2022-06-24 10:04:07','2022-06-20 16:49:34'),('78403cb2-b219-430b-949a-c242b986e0d4','USR11120',1,'2022-06-12 09:32:43','2022-06-03 17:53:48'),('7e1d603e-d65d-4259-b918-56e3faacecfd','USR11125',1,'2021-01-29 06:00:10',NULL),('90964afe-61bb-4dce-81aa-e5987140c9ac','EMP00034',1,'2023-02-25 17:47:43',NULL),('9f1af8b2-cbb2-4d02-ad65-956050945a38','EMP00024',1,'2022-10-22 07:12:18','2022-09-21 06:43:20'),('a5e21591-c548-4259-acb7-0480752d7a70','USR11114',1,'2022-02-17 17:03:48','2022-01-24 13:27:51'),('a71fcb32-34bb-4479-9ffc-1f7fa07445cd','USR11116',1,'2022-10-22 07:56:07','2022-09-20 10:41:47'),('bfab18df-4af5-4064-8486-04baf7e3e429','FAC000083',1,'2022-09-19 07:29:11','2022-09-19 07:29:13'),('c1ffc3b3-8791-49df-9459-324bcabe6c3a','USR11158',1,'2021-04-19 04:48:15','2021-04-19 04:48:25'),('c2625829-8770-4fb5-8633-a21226887397','USR11118',1,'2021-11-11 08:45:05','2021-11-11 08:45:00'),('c660220c-7404-46de-acb6-e9a1bad60f12','FAC000087',1,'2022-06-07 17:48:31',NULL),('c9a63e93-a8d8-43f9-923e-bc2bc4321124','FAC000086',1,'2022-06-03 18:22:27',NULL),('cd69d2b1-360a-40ae-bbdf-0a5a3603712d','EMP00022',1,'2022-06-20 07:42:35','2022-06-20 07:22:40'),('ced0520b-1cf8-4973-bcb9-e3aa54857353','USR11128',1,'2021-02-04 05:14:02','2021-01-30 10:51:40'),('d07ef168-736e-4672-af3e-55b6433abdfd','USR11111',1,'2020-08-04 04:56:08','2020-08-04 04:56:42'),('d0eb3221-f954-4085-9828-0388f9ebc977','USR11117',1,'2021-04-19 09:48:45','2021-04-19 09:48:52'),('d16bbdd5-7cf9-499b-a436-75c6f54123ce','FAC000099',1,'2022-06-23 10:35:55',NULL),('dabbfd29-196f-44e1-81e7-8167b7727ace','USR11131',1,'2021-01-30 10:51:46','2021-01-30 10:51:50'),('db256187-badc-4d75-b185-705efd20fc65','EMP00025',1,'2022-09-19 09:03:06','2022-09-19 09:03:09'),('e1929034-75c8-4c75-be34-c96508d27bb9','EMP00023',1,'2022-06-20 07:24:02','2022-06-20 07:27:07'),('e6a30de0-7fce-4d57-8df2-8dbc33c957c8','FAC000085',1,'2022-06-03 18:00:13',NULL),('f4a42e7a-303d-48cf-8d34-83b53c0c9267','2',1,'2020-07-29 10:30:24',NULL),('f88da053-26cd-440a-9fd9-1cc37222d312','FAC000098',1,'2022-06-20 16:50:10','2022-06-20 16:49:59');
/*!40000 ALTER TABLE `usersession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_days`
--

DROP TABLE IF EXISTS `working_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_days` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` varchar(45) NOT NULL,
  `p1` varchar(45) NOT NULL,
  `p2` varchar(45) NOT NULL,
  `p3` varchar(45) NOT NULL,
  `p4` varchar(45) NOT NULL,
  `p6` varchar(45) NOT NULL,
  `p7` varchar(45) NOT NULL,
  `p8` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `day` (`day`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_days`
--

LOCK TABLES `working_days` WRITE;
/*!40000 ALTER TABLE `working_days` DISABLE KEYS */;
INSERT INTO `working_days` VALUES (1,'Monday','','','','','','',''),(2,'Tuesday','','','','','','',''),(3,'Wednesday','','','','','','',''),(4,'Thursday','','','','','','',''),(5,'Friday','','','','','','',''),(6,'Saturday','','','','','','','');
/*!40000 ALTER TABLE `working_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clmsdb'
--

--
-- Dumping routines for database 'clmsdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `betweenfac` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `betweenfac`(in day varchar(45), in id varchar(45), in frm int, in t int)
BEGIN
		select  faccode1 FROM clmsdb.lab_faculty_allotment where (labfacallt in (SELECT allotid FROM clmsdb.lecturer_details where day=day and d_from<=t and d_to>=frm   and active >0) and subcode not in(SELECT sub_id FROM clmsdb.subject_info where subinfo=id) and faccode1 not in(SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings))) union
SELECT faccode2 FROM clmsdb.lab_faculty_allotment where (labfacallt in (SELECT allotid FROM clmsdb.lecturer_details where day=day and d_from<=t and d_to>=frm  and active >0) and subcode not in(SELECT sub_id FROM clmsdb.subject_info where subinfo=id) and faccode2 not in(SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings))) union
SELECT faccode3 FROM clmsdb.lab_faculty_allotment where (labfacallt in (SELECT allotid FROM clmsdb.lecturer_details where day=day and d_from<=t and d_to>=frm and active >0) and subcode not in(SELECT sub_id FROM clmsdb.subject_info where subinfo=id)  and faccode3 not in(SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings))) union 
SELECT faccode4 FROM clmsdb.lab_faculty_allotment where (labfacallt in (SELECT allotid FROM clmsdb.lecturer_details where day=day and d_from<=t and d_to>=frm and active >0)  and subcode not in(SELECT sub_id FROM clmsdb.subject_info where subinfo=id) and faccode4 not in(SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings)))  union
 SELECT facid FROM clmsdb.theory_fac_allotment where (theoryfacallt in (SELECT allotid FROM clmsdb.lecturer_details where day=day and d_from<=t and d_to>=frm and active >0) and sub_id not in(SELECT sub_id FROM clmsdb.subject_info where subinfo=id) and facid not in (SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings)));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkfac` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkfac`(IN  var1 varchar(32),IN var2 varchar(32),IN var3 int,IN var4 int)
BEGIN
	SELECT sub_id FROM clmsdb.theory_fac_allotment where  theoryfacallt=var2 and facid not in  
	(SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and theoryfacallt=allotid union
    SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid) union
    SELECT subcode  FROM clmsdb.lab_faculty_allotment where labfacallt=var2 and faccode1 not in (SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and theoryfacallt=allotid union
    SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid) and faccode2 not in (SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and theoryfacallt=allotid union
    SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid) and  faccode3 not in (SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and theoryfacallt=allotid union
    SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid) and faccode4 not in (SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and theoryfacallt=allotid union
    SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid union
	SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0  and labfacallt=allotid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteing`(IN combid varchar(45))
BEGIN
	SELECT class_id
		FROM clmsdb.lecturer_details where allotid  in (
		SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=combid) union 
		SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=combid)) and active=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteing1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteing1`(IN combid varchar(45))
BEGIN
	SELECT class_id
		FROM clmsdb.lecturer_details where allotid  in (
		SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=combid) union 
		SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=combid)) and active=2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteold`(in  day varchar(50),in id varchar(50))
BEGIN
	SELECT class_id
		FROM clmsdb.lecturer_details where allotid  in (
		SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=id) union 
		SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=id)) and active=1 and day=day;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deptwisedetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deptwisedetails`(in dept varchar(45))
BEGIN
	SELECT room_no,d_from,d_to,sub_abbr, faccode1, faccode2, faccode3, faccode4, batch, course, specilization, semester FROM clmsdb.lecturer_details,clmsdb.lab_faculty_allotment,clmsdb.subject_info,clmsdb.departments_course where active=1 and buildingroom_name =dept  and labfacallt=allotid and sub_id=subcode and id=subinfo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deptwisedetailslabs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deptwisedetailslabs`(in dept varchar(45))
BEGIN
	SELECT day,room_no,d_from,d_to,sub_abbr, faccode1, faccode2, faccode3, faccode4, batch, course, specilization, semester FROM clmsdb.lecturer_details,clmsdb.lab_faculty_allotment,clmsdb.subject_info,clmsdb.departments_course where lecturer_details.active=1 and buildingroom_name =dept  and labfacallt=allotid and sub_id=subcode and id=subinfo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deptwisedetailstheory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deptwisedetailstheory`( in dept varchar(45))
BEGIN
	SELECT day,room_no,d_from,d_to,sub_abbr,facid ,course, specilization, semester FROM clmsdb.lecturer_details,clmsdb.theory_fac_allotment,clmsdb.subject_info,clmsdb.departments_course where lecturer_details.active=1 and  buildingroom_name =dept  and theoryfacallt=allotid and subject_info.sub_id=theory_fac_allotment.sub_id and id=subinfo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getfac` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getfac`(IN var1 varchar(35),IN var2 varchar(35),IN var3 INT,IN var4 int)
BEGIN
	    SELECT  theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (
        select sub_id FROM clmsdb.subject_info where subinfo=var2) and facid not in (
						SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings) union
						SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and  theoryfacallt=allotid union 
				SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid
						) union (
        SELECT  labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (
        select sub_id FROM clmsdb.subject_info where subinfo=var2) and faccode1 not in (
			SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings) union
			SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and  theoryfacallt=allotid union 
				SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid
        ) and faccode2 not in (
				SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings) union
				SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and  theoryfacallt=allotid union 
				SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid
        ) and faccode3 not in (
				SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings) union
				SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and  theoryfacallt=allotid union 
				SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid
        ) and faccode4 not in (
				SELECT id FROM clmsdb.faculty_info where name in (SELECT concat("Dept of ",name) as facid FROM clmsdb.buildings) union
				SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and  theoryfacallt=allotid union 
				SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
				SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
						FROM clmsdb.lecturer_details where allotid  in (
						SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
						SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid
       ) );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getfree` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getfree`(IN var1 varchar(35),in var2 varchar(35),IN var3 int,IN var4 int)
BEGIN
SELECT facid FROM clmsdb.lecturer_details,theory_fac_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
		FROM clmsdb.lecturer_details where allotid in (
		SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
		SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and  theoryfacallt=allotid union 
SELECT faccode1 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
		FROM clmsdb.lecturer_details where allotid  in (
		SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
		SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
SELECT faccode2 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
		FROM clmsdb.lecturer_details where allotid  in (
		SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
		SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
SELECT faccode3 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
		FROM clmsdb.lecturer_details where allotid  in (
		SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
		SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid union 
SELECT faccode4 FROM clmsdb.lecturer_details,lab_faculty_allotment where day=var1 and  d_from<=var3  and d_to>=var4 and active>0 and allotid not in (SELECT allotid
		FROM clmsdb.lecturer_details where allotid  in (
		SELECT theoryfacallt FROM clmsdb.theory_fac_allotment where sub_id in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2) union 
		SELECT labfacallt FROM clmsdb.lab_faculty_allotment where subcode in (SELECT sub_id FROM clmsdb.subject_info where subinfo=var2)) and active=1)  and labfacallt=allotid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getlab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getlab`(IN id varchar(34),IN frm INT,IN tto INT,IN day1 varchar(32),in id2 INT)
BEGIN
	declare finished integer default 0;
    declare lis varchar(100) default "";
    declare finallis varchar(250) default "";
    declare curlis  cursor for (SELECT faculty_info.abbr FROM clmsdb.lab_faculty_allotment,clmsdb.faculty_info where lab_faculty_allotment.labfacallt=id and faculty_info.id=lab_faculty_allotment.faccode1 union 
		SELECT faculty_info.abbr FROM clmsdb.lab_faculty_allotment,clmsdb.faculty_info where  lab_faculty_allotment.labfacallt=id and faculty_info.id=lab_faculty_allotment.faccode3 union
		SELECT faculty_info.abbr FROM clmsdb.lab_faculty_allotment,clmsdb.faculty_info where  lab_faculty_allotment.labfacallt=id and faculty_info.id=lab_faculty_allotment.faccode4 union
		SELECT faculty_info.abbr FROM clmsdb.lab_faculty_allotment,clmsdb.faculty_info where  lab_faculty_allotment.labfacallt=id and faculty_info.id=lab_faculty_allotment.faccode2);
        declare continue handler for not found set finished=1;
	open curlis;
    getname:loop
		FETCH curlis INTO lis;
		IF finished = 1 THEN 
			LEAVE getname;
		END IF;
		SET finallis = CONCAT(lis,"/",finallis);
    end loop getname;
    close curlis;
	
	 SELECT distinct concat(subject_info.sub_abbr,' ( ',finallis,
     ' ) ','-',lab_faculty_allotment.batch,'( ',lecturer_details.buildingroom_name,', ',lecturer_details.room_no,' )') as name FROM clmsdb.lecturer_details,lab_faculty_allotment,clmsdb.faculty_info,clmsdb.subject_info where lab_faculty_allotment.labfacallt=id and  lecturer_details.allotid=id and lecturer_details.day=day1 and lecturer_details.d_from=frm and lecturer_details.d_to=tto   and  subject_info.sub_id=lab_faculty_allotment.subcode;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gettheory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gettheory`(in id varchar(32),in frm INT,in tto int,in day varchar(32),in id2 int)
BEGIN
	SELECT concat(subject_info.sub_abbr,' (',faculty_info.abbr,') ')  as name FROM clmsdb.theory_fac_allotment, clmsdb.subject_info,clmsdb.faculty_info where  theory_fac_allotment.theoryfacallt=id and subject_info.sub_id=theory_fac_allotment.sub_id and faculty_info.id=theory_fac_allotment.facid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `labshedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `labshedule`(in id varchar(32),in day1 varchar(32))
BEGIN
	SELECT sub_name,batch,day,d_from,d_to,buildingroom_name,room_no FROM clmsdb.lecturer_details,clmsdb.lab_faculty_allotment,subject_info where lecturer_details.active=1 and lecturer_details.day=day1 and lecturer_details.allotid in (SELECT labfacallt FROM clmsdb.lab_faculty_allotment where faccode1=id or faccode2=id or faccode3=id or faccode4=id) and lab_faculty_allotment.labfacallt=lecturer_details.allotid and subject_info.sub_id=lab_faculty_allotment.subcode;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `theoryshedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `theoryshedule`(in id varchar(32),in day1 varchar(32))
BEGIN
	SELECT sub_name,day,d_from,d_to,buildingroom_name,room_no FROM clmsdb.theory_fac_allotment,clmsdb.lecturer_details,clmsdb.subject_info where day=day1 and lecturer_details.active=1 and  facid=id and theoryfacallt=allotid and subject_info.sub_id=theory_fac_allotment.sub_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `faculty_info`.`name` AS `faculty` from ((`faculty_info` join `lab_faculty_allotment`) join `subject_info`) where ((`faculty_info`.`id` = `lab_faculty_allotment`.`faccode1`) and (`subject_info`.`subinfo` = 'COMB000008') and (`lab_faculty_allotment`.`subcode` = `subject_info`.`sub_id`)) order by `lab_faculty_allotment`.`labfacallt` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view2`
--

/*!50001 DROP VIEW IF EXISTS `new_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view2` AS select `faculty_info`.`name` AS `name` from ((`faculty_info` join `lab_faculty_allotment`) join `subject_info`) where ((`faculty_info`.`id` = `lab_faculty_allotment`.`faccode2`) and (`lab_faculty_allotment`.`subcode` = `subject_info`.`sub_id`)) order by `lab_faculty_allotment`.`labfacallt` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view3`
--

/*!50001 DROP VIEW IF EXISTS `new_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view3` AS select `faculty_info`.`name` AS `name` from ((`faculty_info` join `lab_faculty_allotment`) join `subject_info`) where ((`faculty_info`.`id` = `lab_faculty_allotment`.`faccode3`) and (`subject_info`.`subinfo` = 'COMB000001') and (`lab_faculty_allotment`.`subcode` = `subject_info`.`sub_id`)) order by `lab_faculty_allotment`.`labfacallt` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view4`
--

/*!50001 DROP VIEW IF EXISTS `new_view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view4` AS select `faculty_info`.`name` AS `name` from ((`faculty_info` join `lab_faculty_allotment`) join `subject_info`) where ((`faculty_info`.`id` = `lab_faculty_allotment`.`faccode4`) and (`subject_info`.`subinfo` = 'COMB000001') and (`lab_faculty_allotment`.`subcode` = `subject_info`.`sub_id`)) order by `lab_faculty_allotment`.`labfacallt` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-02 23:37:52
