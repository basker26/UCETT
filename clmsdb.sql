-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: clmsdb
-- ------------------------------------------------------
-- Server version	8.0.26

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_room`
--

LOCK TABLES `building_room` WRITE;
/*!40000 ALTER TABLE `building_room` DISABLE KEYS */;
INSERT INTO `building_room` VALUES (5,'CSE','S-IV Lab'),(6,'CSE','Ramanujan Lab'),(7,'CSE','R and D Lab'),(8,'CSE','S-II Lab'),(9,'CSE','209'),(10,'Biomedical','210'),(11,'Biomedical','109'),(12,'Biomedical','110'),(13,'Biomedical','107'),(14,'Biomedical','204'),(15,'Biomedical','209'),(16,'S & H','205'),(17,'S & H','206'),(18,'S & H','207'),(19,'S & H','220'),(20,'COE','221'),(21,'COE','222'),(22,'COE','225'),(23,'COE','224'),(24,'Mech','LH-1'),(25,'Mech','LH-2'),(26,'Mech','LH-3'),(27,'Mech','Workshop'),(28,'ECE','312'),(29,'ECE','313'),(30,'ECE','314'),(31,'ECE','118'),(32,'ECE','222'),(34,'CSE','J-909'),(35,'CSE','201'),(36,'CSE','210'),(37,'CSE','S-III Lab'),(38,'MECH','Materials Engineering Lab'),(39,'MECH','Strength Of Materials Lab');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
INSERT INTO `departments_course` VALUES ('COMB000001','ME','Biomedical','1','BME'),('COMB000002','BE','BME','3','BME'),('COMB000003','BE','BME','7','BME'),('COMB000004','ME','Biomedical','3','BME'),('COMB000005','BE','BME','1','H&S'),('COMB000006','BE','BME','5','BME'),('COMB000007','BE','CSE','1','H&S'),('COMB000011','ME','AI & ML','1','CSE'),('COMB000012','BE','AI & ML','1','H&S'),('COMB000013','ME','CSE','1','CSE'),('COMB000014','ME','PDS','1','CSE'),('COMB000015','BE','ECE','1','H&S'),('COMB000016','BE','ECE','3','ECE'),('COMB000017','BE','ECE','5','ECE'),('COMB000018','BE','ECE','7','ECE'),('COMB000019','ME','MRE','1','ECE'),('COMB000020','ME','SSP','1','ECE'),('COMB000021','ME','DS','1','ECE'),('COMB000022','ME','ESVLSI','1','ECE'),('COMB000023','ME','MRE','3','ECE'),('COMB000024','ME','SSP','3','ECE'),('COMB000025','ME','DS','3','ECE'),('COMB000026','ME','ESVLSI','3','ECE'),('COMB000027','ME','Structural Engineering','1','Civil'),('COMB000028','ME','Geo Technical Engineering','1','Civil'),('COMB000029','ME','Transportation Engineering','1','Civil'),('COMB000030','ME','Water Resources Engineering','1','Civil'),('COMB000031','ME','Mining Engineering','1','Civil'),('COMB000032','BE','Civil','1','H&S'),('COMB000033','BE','Civil','3','Civil'),('COMB000034','BE','Civil','5','Civil'),('COMB000035','BE','Civil','7','Civil'),('COMB000036','ME','PES','1','EEE'),('COMB000037','ME','PS','1','EEE'),('COMB000038','ME','IDC','1','EEE'),('COMB000039','ME','IDC','3','EEE'),('COMB000040','ME','PS','3','EEE'),('COMB000041','ME','PES','3','EEE'),('COMB000042','BE','EEE','1','H&S'),('COMB000043','BE','EEE','3','EEE'),('COMB000044','BE','EEE','5','EEE'),('COMB000045','BE','EEE','7','EEE'),('COMB000046','ME','Production Engineering','1','MECH'),('COMB000047','ME','Turbomachinery','1','MECH'),('COMB000048','ME','Automation & Robotics','1','MECH'),('COMB000049','BE','MECH','1','H&S'),('COMB000050','BE','MECH','3','MECH'),('COMB000051','BE','MECH','5','MECH'),('COMB000052','BE','MECH','7','MECH'),('COMB000053','BE','Mining','1','H&S'),('COMB000054','ME','Tool Design','1','MECH'),('COMB000101','ME','External','1','External'),('COMB000113','ME','MINING','1','MINING'),('COMB000114','ME','MINING','2','MINING'),('COMB000115','ME','MINING','3','MINING'),('COMB000116','ME','MINING','4','MINING'),('COMB000117','BE','data science','1','CSE'),('COMB000118','BE','data science','2','CSE'),('COMB000119','BE','data science','3','CSE'),('COMB000120','ME','cloud computing','1','AI'),('COMB000121','ME','cloud computing','2','AI'),('COMB000122','ME','cloud computing','3','AI'),('COMB000123','ME','cloud computing','4','AI'),('COMB000235','BE','CSE','1','CSE'),('COMB000236','BE','CSE','2','CSE'),('COMB000237','BE','CSE','3','CSE'),('COMB000238','BE','CSE','5','CSE'),('COMB000239','BE','CSE','6','CSE'),('COMB000240','BE','CSE','7','CSE'),('COMB000241','BE','CSE','8','CSE'),('COMB000242','BE','CSE','4','CSE'),('COMB000243','BE','AI & ML','1','CSE'),('COMB000244','BE','AI & ML','2','CSE'),('COMB000245','BE','AI & ML','3','CSE'),('COMB000246','BE','AI & ML','4','CSE'),('COMB000247','BE','AI & ML','5','CSE'),('COMB000248','BE','AI & ML','6','CSE'),('COMB000249','BE','AI & ML','7','CSE'),('COMB000250','BE','AI & ML','8','CSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_courses_seq`
--

LOCK TABLES `departments_courses_seq` WRITE;
/*!40000 ALTER TABLE `departments_courses_seq` DISABLE KEYS */;
INSERT INTO `departments_courses_seq` VALUES (1),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(233),(234),(235),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(249),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260);
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
INSERT INTO `faculty_info` VALUES ('FAC000001','Dr.K.Ramesh Babu','KRB','--','DOM',1),('FAC000002','Mr.G.Kishore Kumar','GKK','--','ECE',1),('FAC000005','Mrs.C.Vani','CV','--','H&S',1),('FAC000031','Dr.K.Phaneendra','KP','--','DOM',1),('FAC000032','Dr.J.Upender','JU','--','EEE',1),('FAC000033','Mrs.G.Sujatha','GS','--','DOC',1),('FAC000034','DR.Lakshmi Mantha','LM','--','English',1),('FAC000035','Mr.Vijendra Reddy','VR','--','EEE',1),('FAC000036','Mr.G.Kiran Kumar','GKK','--','EEE',1),('FAC000037','Mrs.G.V.Nagalakshmi','GVN','--','EEE',1),('FAC000038','Mrs.V.Sridevi','VSi','--','DOC',1),('FAC000039','Mrs.P.Sumabindu','PSB','--','English',1),('FAC000040','Dr.K.Rajesh','KR','--','English',1),('FAC000041','Dr.M.Shyam Sunder','MSS','--','ECE',1),('FAC000053','Prof.Koti Lakshmi','Prof.Koti Lakshmi','--','ECE',1),('FAC000057','Dr.D.Suman','DSR','--','BME',1),('FAC000058','Mr.M.Venkateswara Rao','MVR','--','BME',1),('FAC000059','Prof.M.Malini','MM','--','BME',1),('FAC000060','Mr.M.Srinivas','MS','--','BME',1),('FAC000061','Prof.B.Ram Reddy','BRR','--','BME',1),('FAC000062','Dr.P.Someshwar','PS','--','BME',1),('FAC000064','Mr.Kiran Kore','KK','--','BME',1),('FAC000067','Mr.CH.Siva Kumar','Mr.CH.Siva Kumar','--','EEE',1),('FAC000068','Mrs.P.Reshma','PR','--','DOC',1),('FAC000069','Mr.K.Harish','KH','--','ECE',1),('FAC000070','Dr.N.Susheela','NS','--','EEE',1),('FAC000071','Mrs.V.Vani','VV','--','DOC',1),('FAC000072','Mrs.G.Shravanya','GS','--','BME',0),('FAC000074','Dept of ECE','Dept of ECE','--','ECE',1),('FAC000076','Dept of BME','Dept of BME','--','BME',1),('FAC000078','Dept of Civil','Dept of Civil','--','Civil',1),('FAC000079','Dept of EEE','Dept of EEE','--','EEE',1),('FAC000080','suraj','srj','--','H&S',1),('FAC000084','venkat teja','vnk','--','ECE',2),('FAC000094','K Harish','KH','--','BME',1),('FAC000095','A sadanada charry','ASC','--','External',1),('FAC000096','sahadeva','SHD','--','External',1),('FAC000097','N Ram  Prasad','NRP','--','External',1),('FAC000101','Mrs.B.Gayathri','BG','--','BME',1),('FAC000102','Mr.K.E.Ch.Vidyasagar','VS','--','BME',0),('FAC000103','Mrs.G.Sujatha','GS','--','BME',1),('FAC000104','Mrs.V.Sridevi','VS','--','BME',1),('FAC000112','Mrs.P.Sumabindu','PS','--','H&S',1),('FAC000113','Dr.K.Ramesh Babu','KRB','--','CSE',1),('FAC000114','Prof.K.Shyamala','KSH','--','CSE',1),('FAC000115','Dr.L.K.Suresh Kumar','LKSK','--','CSE',1),('FAC000117','Mr.B.Ramesh','BR','--','ECE',1),('FAC000118','Dr.I.Govardhana Rao','IGR','--','CSE',1),('FAC000119','Mrs.V.Sukanya','VS','--','CSE',1),('FAC000120','Mr.K.Ramalingaiah','KR','--','CSE',1),('FAC000121','Mrs.A.Gayathri','AG','--','CSE',1),('FAC000122','Mr.Prem Kumar','PK','--','ECE',1),('FAC000123','Dr.M.Shyam Sunder','MSS','--','ECE',1),('FAC000124','Mr.R.Narender Reddy','RNR','--','ECE',1),('FAC000129','K Harish','lh','--','External',1),('FAC000130','Mrs.G.Shravanya','shy','--','External',1),('FAC000131','Mrs.G.Shravanya','hy','--','External',1),('FAC000132','Mr.K.E.Ch.Vidyasagar','mhj','--','External',1),('FAC000139','DR.K Rajesh Kumar','KR','--','External',1),('FAC000140','Mr.S.Srinivasa Rao','SSR','--','CSE',1),('FAC000141','Mrs.E.Pragnavi','EP','--','CSE',1),('FAC000142','Dr.M.Venkat Dass','MVD','--','CSE',1),('FAC000143','Mr M Prakash','M.P','--','MECH',1),('FAC000144','Prof. P.Laxminarayana','PLN','--','MECH',1),('FAC000145','Prof. Sriram Venkatesh','SV','--','MECH',1),('FAC000146','Prof. A.Krishnaiah','AK','--','MECH',1),('FAC000147','Prof. P.Usha Sri','PUS','--','MECH',1),('FAC000148','Prof.P Ramesh Babu','PRB','--','MECH',1),('FAC000149','Prof. R.Rajendra','RR','--','MECH',1),('FAC000150','Prof. M. Chandra Sekhar Reddy','MCSR','--','MECH',1),('FAC000151','Prof. B.Hadya','BH','--','MECH',1),('FAC000152','Prof.K.Saraswathamma','KS','--','MECH',1),('FAC000155','Prof.V.Uma Maheshwar','VUM','--','MECH',1),('FAC000156','Prof.L.Siva Rama Krishna','LSRK','--','MECH',1),('FAC000157','Prof.G Narendar','GN','--','MECH',1),('FAC000158','Mr.E.Madhusudhan Raju','EMR','--','MECH',1),('FAC000159','Dr.T.Nagaveni','TN','--','MECH',1),('FAC000160','Dr.TSRV Padmalatha','PL','--','MECH',1),('FAC000161','Dr.K.Buschaiah','KB','--','MECH',1),('FAC000162','Dr.G.Venkateshwarlu','GV','--','MECH',1),('FAC000163','Mr.K.L Uday Kiran','KLU','--','MECH',1),('FAC000164','Mr.K.Venkateswarlu','KV','--','MECH',1),('FAC000165','Dr.U Ashok Kumar','UAK','--','MECH',1),('FAC000166','Dr.P.Tirupathi','PT','--','H&S',1),('FAC000168','Dr.M.V.Ramana Murthy','MVRM','--','MECH',1),('FAC000169','Prof.Narsimhulu Sanke','NS','--','MECH',1),('FAC000170','Dept of MECH','Dept of MECH','--','MECH',1),('FAC000171','Dept of CSE','Dept of CSE','--','CSE',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_seq`
--

LOCK TABLES `faculty_seq` WRITE;
/*!40000 ALTER TABLE `faculty_seq` DISABLE KEYS */;
INSERT INTO `faculty_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171);
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
INSERT INTO `lab_faculty_allotment` VALUES ('LABFAC000101','SUB000245','FAC000060','FAC000094','','','I'),('LABFAC000102','SUB000246','FAC000064','FAC000098','','','I'),('LABFAC000103','SUB000247','FAC000064','FAC000098','','','I'),('LABFAC000141','SUB000296','FAC000103','FAC000104','','','I'),('LABFAC000142','SUB000297','FAC000059','FAC000101','','','I'),('LABFAC000143','SUB000298','FAC000057','FAC000060','','','I'),('LABFAC000144','SUB000297','FAC000059','FAC000101','','','II'),('LABFAC000145','SUB000298','FAC000057','FAC000060','','','II'),('LABFAC000146','SUB000309','FAC000102','','','','I'),('LABFAC000147','SUB000309','FAC000102','','','','II'),('LABFAC000148','SUB000310','FAC000064','FAC000072','','','II'),('LABFAC000149','SUB000310','FAC000064','FAC000072','','','I'),('LABFAC000150','SUB000311','FAC000076','','','','I'),('LABFAC000151','SUB000312','FAC000076','','','','I'),('LABFAC000191','SUB000361','FAC000123','FAC000124',' ',' ','I'),('LABFAC000192','SUB000361','FAC000123','FAC000124',' ',' ','II'),('LABFAC000193','SUB000361','FAC000123','FAC000124',' ',' ','III'),('LABFAC000194','SUB000362','FAC000115','FAC000118',' ',' ','I'),('LABFAC000195','SUB000362','FAC000115','FAC000118',' ',' ','II'),('LABFAC000196','SUB000363','FAC000119',' ',' ',' ','II'),('LABFAC000197','SUB000363','FAC000119',' ',' ',' ','I'),('LABFAC000198','SUB000352','FAC000002','FAC000041',' ',' ','II'),('LABFAC000199','SUB000352','FAC000002','FAC000041',' ',' ','I'),('LABFAC000200','SUB000355','FAC000114','FAC000115',' ',' ','I'),('LABFAC000201','SUB000354','FAC000112',' ',' ',' ','I'),('LABFAC000204','SUB000373','FAC000002','FAC000041',' ',' ','I'),('LABFAC000205','SUB000391','FAC000140',' ',' ',' ','I'),('LABFAC000206','SUB000391','FAC000140',' ',' ',' ','II'),('LABFAC000207','SUB000392','FAC000121','FAC000141',' ',' ','I'),('LABFAC000208','SUB000392','FAC000121','FAC000141',' ',' ','II'),('LABFAC000233','SUB000417','FAC000159','FAC000160',' ',' ','I'),('LABFAC000234','SUB000417','FAC000159','FAC000160',' ',' ','II'),('LABFAC000235','SUB000417','FAC000159','FAC000160',' ',' ','III'),('LABFAC000236','SUB000418','FAC000148','FAC000165',' ',' ','II'),('LABFAC000237','SUB000418','FAC000148','FAC000165',' ',' ','III'),('LABFAC000238','SUB000418','FAC000164','FAC000165',' ',' ','I'),('LABFAC000239','SUB000427','FAC000156','FAC000165',' ',' ','II'),('LABFAC000240','SUB000419','FAC000165',' ',' ',' ','I'),('LABFAC000241','SUB000427','FAC000156','FAC000165',' ',' ','III'),('LABFAC000242','SUB000427','FAC000150','FAC000156',' ',' ','I'),('LABFAC000244','SUB000428','FAC000147','FAC000151',' ',' ','II'),('LABFAC000245','SUB000429','FAC000165',' ',' ',' ','I'),('LABFAC000246','SUB000428','FAC000147','FAC000151',' ',' ','III');
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
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_faculty_allotment_seq`
--

LOCK TABLES `lab_faculty_allotment_seq` WRITE;
/*!40000 ALTER TABLE `lab_faculty_allotment_seq` DISABLE KEYS */;
INSERT INTO `lab_faculty_allotment_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(233),(234),(235),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246);
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
INSERT INTO `lecturer_details` VALUES ('LEC0000951','Monday','1','1','S-IV Lab','CSE',1,'THEOFAC000235'),('LEC0000953','Monday','1','1','209','CSE',1,'THEOFAC000209'),('LEC0000954','Monday','2','2','209','CSE',1,'THEOFAC000208'),('LEC0000955','Monday','3','3','209','CSE',1,'THEOFAC000207'),('LEC0000956','Monday','4','4','209','CSE',1,'THEOFAC000211'),('LEC0000959','Tuesday','1','1','209','CSE',1,'THEOFAC000209'),('LEC0000960','Tuesday','2','2','209','CSE',1,'THEOFAC000211'),('LEC0000961','Tuesday','3','3','209','CSE',1,'THEOFAC000207'),('LEC0000962','Tuesday','4','4','209','CSE',1,'THEOFAC000208'),('LEC0000963','Tuesday','6','7','S-IV Lab','CSE',1,'LABFAC000134'),('LEC0000964','Tuesday','6','7','S-II Lab','CSE',1,'LABFAC000131'),('LEC0000965','Wednesday','1','1','209','CSE',1,'THEOFAC000207'),('LEC0000966','Wednesday','2','2','209','CSE',1,'THEOFAC000211'),('LEC0000967','Wednesday','3','4','209','CSE',1,'THEOFAC000209'),('LEC0000968','Thursday','1','1','209','CSE',1,'THEOFAC000208'),('LEC0000969','Thursday','2','2','209','CSE',1,'THEOFAC000207'),('LEC0000970','Thursday','3','3','209','CSE',1,'THEOFAC000211'),('LEC0000971','Thursday','4','4','209','CSE',1,'THEOFAC000209'),('LEC0001062','Monday','1','1','201','CSE',1,'THEOFAC000274'),('LEC0001063','Monday','2','2','201','CSE',1,'THEOFAC000270'),('LEC0001064','Monday','3','4','201','CSE',1,'THEOFAC000272'),('LEC0001065','Monday','6','7','118','ECE',1,'LABFAC000186'),('LEC0001069','Tuesday','2','2','201','CSE',1,'THEOFAC000274'),('LEC0001070','Tuesday','1','1','201','CSE',1,'THEOFAC000270'),('LEC0001071','Tuesday','3','4','S-IV Lab','CSE',1,'LABFAC000187'),('LEC0001072','Tuesday','3','4','Ramanujan Lab','CSE',1,'LABFAC000190'),('LEC0001073','Tuesday','6','7','118','ECE',1,'LABFAC000185'),('LEC0001074','Wednesday','7','8','118','ECE',1,'LABFAC000184'),('LEC0001075','Wednesday','6','6','201','CSE',1,'THEOFAC000274'),('LEC0001076','Wednesday','3','4','S-II Lab','CSE',1,'LABFAC000188'),('LEC0001077','Wednesday','3','4','S-III Lab','CSE',1,'LABFAC000189'),('LEC0001078','Wednesday','2','2','201','CSE',1,'THEOFAC000270'),('LEC0001079','Wednesday','1','1','201','CSE',1,'THEOFAC000271'),('LEC0001080','Thursday','1','2','201','CSE',1,'THEOFAC000273'),('LEC0001081','Thursday','3','3','201','CSE',1,'THEOFAC000271'),('LEC0001082','Thursday','4','4','201','CSE',1,'THEOFAC000270'),('LEC0001083','Thursday','6','6','201','CSE',1,'THEOFAC000272'),('LEC0001084','Thursday','7','8','S-II Lab','CSE',1,'LABFAC000187'),('LEC0001085','Thursday','7','8','S-III Lab','CSE',1,'LABFAC000190'),('LEC0001086','Friday','6','7','S-II Lab','CSE',1,'LABFAC000188'),('LEC0001087','Friday','6','7','S-III Lab','CSE',1,'LABFAC000189'),('LEC0001088','Friday','4','4','201','CSE',1,'THEOFAC000271'),('LEC0001089','Friday','3','3','201','CSE',1,'THEOFAC000270'),('LEC0001090','Friday','1','2','201','CSE',1,'THEOFAC000273'),('LEC0001144','Friday','1','1','210','CSE',1,'THEOFAC000303'),('LEC0001145','Friday','2','2','210','CSE',1,'THEOFAC000305'),('LEC0001146','Friday','3','4','S-II Lab','CSE',1,'LABFAC000206'),('LEC0001147','Friday','3','4','S-III Lab','CSE',1,'LABFAC000207'),('LEC0001148','Friday','6','6','210','CSE',1,'THEOFAC000307'),('LEC0001149','Thursday','1','1','210','CSE',1,'THEOFAC000307'),('LEC0001150','Thursday','2','2','210','CSE',1,'THEOFAC000305'),('LEC0001151','Thursday','3','4','S-II Lab','CSE',1,'LABFAC000205'),('LEC0001152','Thursday','3','4','S-III Lab','CSE',1,'LABFAC000208'),('LEC0001153','Thursday','6','6','210','CSE',1,'THEOFAC000308'),('LEC0001154','Monday','7','8','S-II Lab','CSE',1,'LABFAC000205'),('LEC0001155','Monday','7','8','S-III Lab','CSE',1,'LABFAC000208'),('LEC0001156','Monday','6','6','210','CSE',1,'THEOFAC000304'),('LEC0001157','Monday','4','4','210','CSE',1,'THEOFAC000306'),('LEC0001158','Monday','3','3','210','CSE',1,'THEOFAC000308'),('LEC0001159','Monday','2','2','210','CSE',1,'THEOFAC000307'),('LEC0001160','Monday','1','1','210','CSE',1,'THEOFAC000309'),('LEC0001161','Tuesday','6','6','210','CSE',1,'THEOFAC000304'),('LEC0001162','Tuesday','7','7','210','CSE',1,'THEOFAC000303'),('LEC0001163','Tuesday','3','4','S-II Lab','CSE',1,'LABFAC000206'),('LEC0001164','Tuesday','3','4','S-III Lab','CSE',1,'LABFAC000207'),('LEC0001165','Tuesday','1','1','210','CSE',1,'THEOFAC000306'),('LEC0001166','Tuesday','2','2','210','CSE',1,'THEOFAC000309'),('LEC0001167','Wednesday','7','7','210','CSE',1,'THEOFAC000303'),('LEC0001168','Wednesday','6','6','210','CSE',1,'THEOFAC000304'),('LEC0001169','Wednesday','4','4','210','CSE',1,'THEOFAC000306'),('LEC0001170','Wednesday','3','3','210','CSE',1,'THEOFAC000308'),('LEC0001171','Wednesday','2','2','210','CSE',1,'THEOFAC000309'),('LEC0001172','Wednesday','1','1','210','CSE',1,'THEOFAC000305'),('LEC0001180','Monday','1','1','LH-2','Mech',1,'LABFAC000235'),('LEC0001181','Monday','2','2','LH-2','Mech',1,'THEOFAC000337'),('LEC0001182','Monday','3','3','LH-2','Mech',1,'THEOFAC000335'),('LEC0001183','Monday','4','4','LH-2','Mech',1,'THEOFAC000336'),('LEC0001184','Monday','6','8','Workshop','Mech',1,'LABFAC000233'),('LEC0001185','Monday','6','8','Workshop','Mech',1,'LABFAC000236'),('LEC0001186','Tuesday','2','2','LH-2','Mech',1,'THEOFAC000339'),('LEC0001187','Tuesday','1','1','LH-2','Mech',1,'THEOFAC000335'),('LEC0001188','Tuesday','3','3','LH-2','Mech',1,'THEOFAC000336'),('LEC0001189','Tuesday','4','4','LH-2','Mech',1,'THEOFAC000334'),('LEC0001190','Wednesday','1','1','LH-2','Mech',1,'THEOFAC000338'),('LEC0001191','Wednesday','1','1','LH-2','Mech',1,'THEOFAC000338'),('LEC0001192','Wednesday','2','2','LH-2','Mech',1,'THEOFAC000336'),('LEC0001193','Wednesday','3','3','LH-2','Mech',1,'THEOFAC000337'),('LEC0001194','Wednesday','6','8','Workshop','Mech',1,'LABFAC000234'),('LEC0001195','Wednesday','6','8','Workshop','Mech',1,'LABFAC000237'),('LEC0001196','Thursday','1','1','LH-2','Mech',1,'THEOFAC000338'),('LEC0001197','Thursday','2','2','LH-2','Mech',1,'THEOFAC000337'),('LEC0001198','Thursday','3','3','LH-2','Mech',1,'THEOFAC000339'),('LEC0001199','Thursday','4','4','LH-2','Mech',1,'THEOFAC000334'),('LEC0001200','Friday','1','1','LH-2','Mech',1,'THEOFAC000334'),('LEC0001201','Friday','2','2','LH-2','Mech',1,'THEOFAC000339'),('LEC0001202','Friday','3','3','LH-2','Mech',1,'THEOFAC000335'),('LEC0001203','Friday','4','4','LH-2','Mech',1,'THEOFAC000338'),('LEC0001204','Friday','6','8','Workshop','Mech',1,'LABFAC000235'),('LEC0001205','Friday','6','8','Workshop','Mech',1,'LABFAC000238');
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
) ENGINE=InnoDB AUTO_INCREMENT=1210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer_seq`
--

LOCK TABLES `lecturer_seq` WRITE;
/*!40000 ALTER TABLE `lecturer_seq` DISABLE KEYS */;
INSERT INTO `lecturer_seq` VALUES (2),(3),(4),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(233),(234),(235),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260),(261),(262),(263),(264),(265),(266),(267),(268),(269),(270),(271),(272),(273),(274),(275),(276),(277),(278),(279),(280),(281),(282),(283),(284),(285),(286),(287),(288),(289),(290),(291),(292),(293),(294),(295),(296),(297),(298),(299),(300),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(311),(312),(313),(314),(315),(316),(317),(318),(319),(320),(321),(322),(323),(324),(325),(326),(327),(328),(329),(330),(331),(332),(333),(334),(335),(336),(337),(338),(339),(340),(341),(342),(343),(344),(345),(346),(347),(348),(349),(350),(351),(352),(353),(354),(355),(356),(357),(358),(359),(360),(361),(362),(363),(364),(365),(366),(367),(368),(369),(370),(371),(372),(373),(374),(375),(376),(377),(378),(379),(380),(381),(382),(383),(384),(385),(386),(387),(388),(389),(390),(391),(392),(393),(394),(395),(396),(397),(398),(399),(400),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410),(411),(412),(413),(414),(415),(416),(417),(418),(419),(420),(421),(422),(423),(424),(425),(426),(427),(428),(429),(430),(431),(432),(433),(434),(435),(436),(437),(438),(439),(440),(441),(442),(443),(444),(445),(446),(447),(448),(449),(450),(451),(452),(453),(454),(455),(456),(457),(458),(459),(460),(461),(462),(463),(464),(465),(466),(467),(468),(469),(470),(471),(472),(473),(474),(475),(476),(477),(478),(479),(480),(481),(482),(483),(484),(485),(486),(487),(488),(489),(490),(491),(492),(493),(494),(495),(496),(497),(498),(499),(500),(501),(502),(503),(504),(505),(506),(507),(508),(509),(510),(511),(512),(513),(514),(515),(516),(517),(518),(519),(520),(521),(522),(523),(524),(525),(526),(527),(528),(529),(530),(531),(532),(533),(534),(535),(536),(537),(538),(539),(540),(541),(542),(543),(544),(545),(546),(547),(548),(549),(550),(551),(552),(553),(554),(555),(556),(557),(558),(559),(560),(561),(562),(563),(564),(565),(566),(567),(568),(569),(570),(571),(572),(573),(574),(575),(576),(577),(578),(579),(580),(581),(582),(583),(584),(585),(586),(587),(588),(589),(590),(591),(592),(593),(594),(595),(596),(597),(598),(599),(600),(601),(602),(603),(604),(605),(606),(607),(608),(609),(610),(611),(612),(613),(614),(615),(616),(617),(618),(619),(620),(621),(622),(623),(624),(625),(626),(627),(628),(629),(630),(631),(632),(633),(634),(635),(636),(637),(638),(639),(640),(641),(642),(643),(644),(645),(646),(647),(648),(649),(650),(651),(652),(653),(654),(655),(656),(657),(658),(659),(660),(661),(662),(663),(664),(665),(666),(667),(668),(669),(670),(671),(672),(673),(674),(675),(676),(677),(678),(679),(680),(681),(682),(683),(684),(685),(686),(687),(688),(689),(690),(691),(692),(693),(694),(695),(696),(697),(698),(699),(700),(701),(702),(703),(704),(705),(706),(707),(708),(709),(710),(711),(712),(713),(714),(715),(716),(717),(718),(719),(720),(721),(722),(723),(724),(725),(726),(727),(728),(729),(730),(731),(732),(733),(734),(735),(736),(737),(738),(739),(740),(741),(742),(743),(744),(745),(746),(747),(748),(749),(750),(751),(752),(753),(754),(755),(756),(757),(758),(759),(760),(761),(762),(763),(764),(765),(766),(767),(768),(769),(770),(771),(772),(773),(774),(775),(776),(777),(778),(779),(780),(781),(782),(783),(784),(785),(786),(787),(788),(789),(790),(791),(792),(793),(794),(795),(796),(797),(798),(799),(800),(801),(802),(803),(804),(805),(806),(807),(808),(809),(810),(811),(812),(813),(814),(815),(816),(817),(818),(819),(820),(821),(822),(823),(824),(825),(826),(827),(828),(829),(830),(831),(832),(833),(834),(835),(836),(837),(838),(839),(840),(841),(842),(843),(844),(845),(846),(847),(848),(849),(850),(851),(852),(853),(854),(855),(856),(857),(858),(859),(860),(861),(862),(863),(864),(865),(866),(867),(868),(869),(870),(871),(872),(873),(874),(875),(876),(877),(878),(879),(880),(881),(882),(883),(884),(885),(886),(887),(888),(889),(890),(891),(892),(893),(894),(895),(896),(897),(898),(899),(900),(901),(902),(903),(904),(905),(906),(907),(908),(909),(910),(911),(912),(913),(914),(915),(916),(917),(918),(919),(920),(921),(922),(923),(924),(925),(926),(927),(928),(929),(930),(931),(932),(933),(934),(935),(936),(937),(938),(939),(940),(941),(942),(943),(944),(945),(946),(947),(948),(949),(950),(951),(952),(953),(954),(955),(956),(957),(958),(959),(960),(961),(962),(963),(964),(965),(966),(967),(968),(969),(970),(971),(972),(973),(974),(975),(976),(977),(978),(979),(980),(981),(982),(983),(984),(985),(986),(987),(988),(989),(990),(991),(992),(993),(994),(995),(996),(997),(998),(999),(1000),(1001),(1002),(1003),(1004),(1005),(1006),(1007),(1008),(1009),(1010),(1011),(1012),(1013),(1014),(1015),(1016),(1017),(1018),(1019),(1020),(1021),(1022),(1023),(1024),(1025),(1026),(1027),(1028),(1029),(1030),(1031),(1032),(1033),(1034),(1035),(1036),(1037),(1038),(1039),(1040),(1041),(1042),(1043),(1044),(1045),(1046),(1047),(1048),(1049),(1050),(1051),(1052),(1053),(1054),(1055),(1056),(1057),(1058),(1059),(1060),(1061),(1062),(1063),(1064),(1065),(1066),(1067),(1068),(1069),(1070),(1071),(1072),(1073),(1074),(1075),(1076),(1077),(1078),(1079),(1080),(1081),(1082),(1083),(1084),(1085),(1086),(1087),(1088),(1089),(1090),(1091),(1092),(1093),(1094),(1095),(1096),(1097),(1098),(1099),(1100),(1101),(1102),(1103),(1104),(1105),(1106),(1107),(1108),(1109),(1110),(1111),(1112),(1113),(1114),(1115),(1116),(1117),(1118),(1119),(1120),(1121),(1122),(1123),(1124),(1125),(1126),(1127),(1128),(1129),(1130),(1131),(1132),(1133),(1134),(1135),(1136),(1137),(1138),(1139),(1140),(1141),(1142),(1143),(1144),(1145),(1146),(1147),(1148),(1149),(1150),(1151),(1152),(1153),(1154),(1155),(1156),(1157),(1158),(1159),(1160),(1161),(1162),(1163),(1164),(1165),(1166),(1167),(1168),(1169),(1170),(1171),(1172),(1173),(1174),(1175),(1176),(1177),(1178),(1179),(1180),(1181),(1182),(1183),(1184),(1185),(1186),(1187),(1188),(1189),(1190),(1191),(1192),(1193),(1194),(1195),(1196),(1197),(1198),(1199),(1200),(1201),(1202),(1203),(1204),(1205),(1206),(1207),(1208),(1209);
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
INSERT INTO `persons` VALUES ('Rama Krishna ','146000','CSE',1),('SHyAM','146002','CSE',1),('ABC','146003','CSE',1),('GOD','146004','CSE',1),('PLlead2','146005','CSE',1),('bhaskar','146011','CSE',1),('baskar','146012','CSE',1),('RAM','146022','CSE',1),('Bij','146060','CSE',1),('bijeet','146087','CSE',1),('SAKSHI CHOUDHARY','146126','CSE',1),('KOUSHIK','EMP00024','CSE',1),('BHASKER','EMP00025','CSE',1),('SURAJ','EMP00027','CSE',1),('chARAN','EMP00034','CSE',1),('kauhik','EMP00035','CSE',1),('Vamsha','EMP00039','CSE',1),('Charan teja','EMP00040','CSE',1),('PRAKASH','EMP00041','MECH',1),('E SRINIVAS','EMP00042','MINING',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons_seq`
--

LOCK TABLES `persons_seq` WRITE;
/*!40000 ALTER TABLE `persons_seq` DISABLE KEYS */;
INSERT INTO `persons_seq` VALUES (14),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42);
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
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_seq`
--

LOCK TABLES `su_seq` WRITE;
/*!40000 ALTER TABLE `su_seq` DISABLE KEYS */;
INSERT INTO `su_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(249),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260),(261),(262),(263),(264),(265),(266),(267),(268),(269),(270),(271),(272),(273),(274),(275),(276),(277),(278),(279),(280),(281),(282),(283),(284),(285),(286),(287),(290),(291),(292),(293),(294),(295),(296),(297),(298),(299),(300),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(311),(312),(313),(314),(315),(316),(317),(318),(319),(320),(321),(322),(323),(324),(325),(326),(327),(328),(329),(330),(331),(332),(333),(334),(335),(336),(337),(338),(339),(340),(341),(342),(343),(344),(345),(346),(347),(348),(349),(350),(351),(352),(353),(354),(355),(356),(357),(358),(359),(360),(361),(362),(363),(364),(365),(366),(367),(368),(369),(370),(371),(372),(373),(374),(375),(376),(377),(378),(379),(380),(381),(382),(383),(384),(385),(386),(387),(388),(389),(390),(391),(392),(393),(394),(395),(396),(397),(398),(399),(400),(401),(402),(403),(404),(405),(406),(407),(408),(409),(410),(411),(412),(413),(414),(415),(416),(417),(418),(419),(420),(421),(422),(423),(424),(425),(426),(427),(428),(429),(430),(431),(432),(433),(434),(435),(436),(437),(438),(439),(440),(441),(442);
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
INSERT INTO `subject_info` VALUES ('SUB000238','Theory','diagnostic and therapetic Equipment','DTE',1,'----','COMB000001'),('SUB000239','Theory','Advanced biomedical signal processing','ABMSP',1,'----','COMB000001'),('SUB000240','Theory','Bio nano technology','BNT',1,'----','COMB000001'),('SUB000241','Theory','Advanced medical imaging','AMI',1,'----','COMB000001'),('SUB000242','Theory','Stress managment by yoga','SMYOGA',1,'----','COMB000001'),('SUB000243','Theory','Personality development through life enchancement skills','PDES',1,'----','COMB000001'),('SUB000244','Theory','Constituion of india','COI',1,'----','COMB000001'),('SUB000245','Lab','biomedical signal and image  processing lab','BMSIP',1,'----','COMB000001'),('SUB000246','Lab','Virtual instrumentation lab','VI lab',1,'----','COMB000001'),('SUB000247','Lab','Mini project','mini project',1,'----','COMB000001'),('SUB000290','Theory','Micro Processors and Micro Controllers in Medical Applications','MPMC',1,NULL,'COMB000006'),('SUB000291','Theory','Biomedical Equipment-I','BME-I',1,NULL,'COMB000006'),('SUB000292','Theory','Biomedical Equipment-II','BME-II',1,NULL,'COMB000006'),('SUB000293','Theory','Medical Imaging Systems','MIS',1,NULL,'COMB000006'),('SUB000294','Theory','Biomechanics','BM',1,'Professional Elective-I','COMB000006'),('SUB000295','Theory','Biological Control Systems','BCS',1,'Professional Elective-II','COMB000006'),('SUB000296','Lab','Mandatory Course-I Environmental Science','MC-I ES',1,NULL,'COMB000006'),('SUB000297','Lab','Micro Processors and Micro Controllers in Medical Applications Lab','MPMC in MA Lab',1,NULL,'COMB000006'),('SUB000298','Lab','Biomedical Equipment Lab','BME Lab',1,NULL,'COMB000006'),('SUB000299','Theory','Bio Medical Signal Procesing','BMSP',1,NULL,'COMB000003'),('SUB000300','Theory','Medical Image Processing','MIP',1,NULL,'COMB000003'),('SUB000301','Theory','Hospital Administration Management','HAM',1,NULL,'COMB000003'),('SUB000302','Theory','Cell And Tissue Engineering','CTE',1,'Professional Elective- IV','COMB000003'),('SUB000303','Theory','Rehabilitation Engineering','RE',1,'Professional Elective- V','COMB000003'),('SUB000304','Theory','Green Building Technology','GBT',1,'Open Elective - II','COMB000003'),('SUB000305','Theory','Verilog HDL','Verilog HDL',1,'Open Elective - II','COMB000003'),('SUB000306','Theory','Non-Conventional Energy Sources','NCES',1,'Open Elective - II','COMB000003'),('SUB000307','Theory','Information Security','Information Security',1,'Open Elective - II','COMB000003'),('SUB000308','Theory','Startup Enterpreneurship','S & E',1,'Open Elective - II','COMB000003'),('SUB000309','Lab','Bio-Signal Processing Lab','BMSP Lab',1,NULL,'COMB000003'),('SUB000310','Lab','Medical Image Processing & Modeling Lab','MIP & ML Lab',1,NULL,'COMB000003'),('SUB000311','Lab','Project Stage - I','Project Stage - I',1,NULL,'COMB000003'),('SUB000312','Lab','Summer Internship','Summer InternShip',1,NULL,'COMB000003'),('SUB000348','Theory','Mathematics III','M-III',1,NULL,'COMB000237'),('SUB000349','Theory','Basic Electronic Engineering','BEE',1,NULL,'COMB000237'),('SUB000350','Theory','Data Structures and Algorithms','DSA',1,NULL,'COMB000237'),('SUB000351','Theory','Logic & Switching Theory','LST',1,NULL,'COMB000237'),('SUB000352','Lab','Basic Electronics Lab','BEE Lab',1,NULL,'COMB000237'),('SUB000353','Theory','Humanities_I (Operation Research)','OR',1,NULL,'COMB000237'),('SUB000354','Lab','Data Structures Lab','DS Lab',1,NULL,'COMB000237'),('SUB000355','Lab','IT Workshop(Python and MATLAB)','IT Workshop',1,NULL,'COMB000237'),('SUB000356','Theory','Mathematics III','M-III',1,NULL,'COMB000245'),('SUB000357','Theory','Basic Electronic Engineering','BEE',1,NULL,'COMB000245'),('SUB000358','Theory','Logic & Switching Theory','LST',1,NULL,'COMB000245'),('SUB000359','Theory','Data Structures and Algorithms','DSA',1,NULL,'COMB000245'),('SUB000360','Theory','Discrete Mathematics','DM',1,NULL,'COMB000245'),('SUB000361','Lab','Basic Electronics Lab','BEE Lab',1,NULL,'COMB000245'),('SUB000362','Lab','Data Structures Lab','DS Lab',1,NULL,'COMB000245'),('SUB000363','Lab','IT Workshop(Python)','IT Workshop',1,NULL,'COMB000245'),('SUB000365','Theory','Open Elective','OP',1,'Open Elective','COMB000016'),('SUB000367','Theory','Open Elective','OP',1,'Open Elective','COMB000043'),('SUB000373','Lab','op1','op',1,NULL,'COMB000002'),('SUB000374','Theory','op2','op2',1,NULL,'COMB000002'),('SUB000384','Theory','Positive Psychology','PP',1,NULL,'COMB000238'),('SUB000385','Theory','Essence of Indian Traditional Knowledge','EITK',1,NULL,'COMB000238'),('SUB000386','Theory','Signals & Systems','S & S',1,NULL,'COMB000238'),('SUB000387','Theory','Database Management Systems','DBMS',1,NULL,'COMB000238'),('SUB000388','Theory','Automata Languages & Computations','ALC',1,NULL,'COMB000238'),('SUB000389','Theory','Operating Systems','OS',1,NULL,'COMB000238'),('SUB000390','Theory','Web Programming','WP',1,'Professional Elective','COMB000238'),('SUB000391','Lab','Database Management Systems Lab','DBMS Lab',1,NULL,'COMB000238'),('SUB000392','Lab','Operating Systems Lab','OS Lab',1,NULL,'COMB000238'),('SUB000411','Theory','Applied Electronics','AE',1,NULL,'COMB000050'),('SUB000412','Theory','Mathematics-III','M-III',1,NULL,'COMB000050'),('SUB000413','Theory','Applied Mechanics','AM',1,NULL,'COMB000050'),('SUB000414','Theory','Engineering Thermodynamics','ETD',1,NULL,'COMB000050'),('SUB000415','Theory','Materials Engineering','ME',1,NULL,'COMB000050'),('SUB000416','Theory','Strength Of Materials','SM',1,NULL,'COMB000050'),('SUB000417','Lab','Materials Engineering Lab','ME Lab',1,NULL,'COMB000050'),('SUB000418','Lab','Strength Of Materials Lab','SM Lab',1,NULL,'COMB000050'),('SUB000419','Lab','Summer Internship-I','SI-I',1,NULL,'COMB000052'),('SUB000420','Theory','Thermal Turbo Machinery','TTM',1,NULL,'COMB000052'),('SUB000421','Theory','Automation in Manufacturing','AM',1,NULL,'COMB000052'),('SUB000422','Theory','Operation Research','OR',1,NULL,'COMB000052'),('SUB000423','Theory','Entrepreneurship','ENTP',1,'PE-IV','COMB000052'),('SUB000424','Theory','Design for Manufacturing','BFM',1,'PE-V','COMB000052'),('SUB000425','Theory','Mechanical Vibrations','MV',1,'PE-V','COMB000052'),('SUB000426','Theory','Open Elective','OE',1,'OE','COMB000052'),('SUB000427','Lab','CAM and Automation Lab','C&A Lab',1,NULL,'COMB000052'),('SUB000428','Lab','Thermal Engineering Lab-II','TE Lab',1,NULL,'COMB000052'),('SUB000429','Lab','Major Project Phase –I','MP-I',1,NULL,'COMB000052'),('SUB000430','Theory','Fluid Mechanics and Hydraulic Machines','FMHM',1,NULL,'COMB000051'),('SUB000431','Theory','Heat Transfer','HT',1,NULL,'COMB000051'),('SUB000432','Theory','Dynamics of Machines','DOM',1,NULL,'COMB000051'),('SUB000433','Theory','Machine Design','MD',1,NULL,'COMB000051'),('SUB000434','Theory','Metal Cutting and Machine Tools','MCMT',1,NULL,'COMB000051'),('SUB000435','Theory','Automobile Engineering','AE',1,'PE-I','COMB000051'),('SUB000436','Lab','Fluid Mechanics and Hydraulic Machines Lab','FMHM Lab',1,NULL,'COMB000051'),('SUB000437','Lab','Dynamics of Machines Lab','DOM Lab',1,NULL,'COMB000051'),('SUB000438','Lab','Summer Internship-I','SI-I',1,NULL,'COMB000051'),('SUB000439','Theory','Surface Mine Planning & Design','SMPD',1,NULL,'COMB000113'),('SUB000440','Theory','Rock Mechanics & Ground Control','RMGC',1,NULL,'COMB000113'),('SUB000441','Theory','Numerical Moeling in Mining','NMM',1,'Core III','COMB000113'),('SUB000442','Theory','Instrumentation in Mining','INM',1,'Professional Elective - I','COMB000113');
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
INSERT INTO `task_type` VALUES ('TT11100','Change Password','Change Password',1,NULL,NULL),('TT11101','Dept details','Dept details',1,NULL,NULL),('TT11178','User Managemnt','User Managemnt',1,NULL,NULL),('TT11186','Schedule TimeTable','Schedule TimeTable',1,NULL,NULL),('TT11187','Add subjects','Add subjects',1,NULL,NULL),('TT11188','Add faculty','Add faculty',1,NULL,NULL),('TT11189','Add Department','Add Department',1,NULL,NULL),('TT11192','Block Shedule','Block Shedule',0,NULL,NULL),('TT11196','view shedule','faculty',1,NULL,NULL),('TT11197','Clear Timetable','Clear Timetable',1,NULL,NULL),('TT11198','Clear Schedule','Clear Schedule',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_type_role_mapping`
--

LOCK TABLES `task_type_role_mapping` WRITE;
/*!40000 ALTER TABLE `task_type_role_mapping` DISABLE KEYS */;
INSERT INTO `task_type_role_mapping` VALUES ('TT11178','ROL00009','ROL00009',36),('TT11186','ROl00004','ROl00004',44),('TT11187','ROl00004','ROL00009',45),('TT11188','ROl00004','ROL00009',46),('TT11189','ROl00004','ROL00009',47),('TT11192','ROL00009','ROL00009',48),('TT11196','ROL00001','ROL00001',52),('TT11198','ROL00009','ROL00009',53),('TT11197','ROL00009','ROL00009',54),('TT11100','ROL00009','ROL00009',56),('TT11100','ROL00001','ROL00001',57),('TT11100','ROl00004','ROl00004',58),('TT11101','ROl00004','ROl00004',59),('TT11101','ROL00001','ROL00001',60),('TT11101','ROL00009','ROL00009',61);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasktype_seq`
--

LOCK TABLES `tasktype_seq` WRITE;
/*!40000 ALTER TABLE `tasktype_seq` DISABLE KEYS */;
INSERT INTO `tasktype_seq` VALUES (1),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101);
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
INSERT INTO `theory_fac_allotment` VALUES ('THEOFAC000161','SUB000238','FAC000064'),('THEOFAC000162','SUB000239','FAC000060'),('THEOFAC000163','SUB000240','FAC000072'),('THEOFAC000164','SUB000242','FAC000095'),('THEOFAC000165','SUB000243','FAC000096'),('THEOFAC000166','SUB000244','FAC000097'),('THEOFAC000218','SUB000290','FAC000101'),('THEOFAC000219','SUB000294','FAC000059'),('THEOFAC000220','SUB000291','FAC000058'),('THEOFAC000221','SUB000293','FAC000102'),('THEOFAC000222','SUB000292','FAC000072'),('THEOFAC000223','SUB000295','FAC000101'),('THEOFAC000224','SUB000299','FAC000057'),('THEOFAC000225','SUB000300','FAC000064'),('THEOFAC000226','SUB000301','FAC000060'),('THEOFAC000227','SUB000302','FAC000072'),('THEOFAC000228','SUB000303','FAC000102'),('THEOFAC000229','SUB000304','FAC000078'),('THEOFAC000230','SUB000305','FAC000053'),('THEOFAC000275','SUB000356','FAC000120'),('THEOFAC000276','SUB000357','FAC000122'),('THEOFAC000277','SUB000358','FAC000114'),('THEOFAC000278','SUB000359','FAC000115'),('THEOFAC000279','SUB000360','FAC000121'),('THEOFAC000280','SUB000348','FAC000113'),('THEOFAC000281','SUB000350','FAC000114'),('THEOFAC000282','SUB000349','FAC000002'),('THEOFAC000283','SUB000351','FAC000120'),('THEOFAC000302','SUB000374','FAC000005'),('THEOFAC000303','SUB000384','FAC000112'),('THEOFAC000304','SUB000385','FAC000139'),('THEOFAC000305','SUB000387','FAC000140'),('THEOFAC000306','SUB000386','FAC000002'),('THEOFAC000307','SUB000389','FAC000141'),('THEOFAC000308','SUB000388','FAC000142'),('THEOFAC000309','SUB000390','FAC000119'),('THEOFAC000334','SUB000411','FAC000122'),('THEOFAC000335','SUB000415','FAC000159'),('THEOFAC000336','SUB000414','FAC000151'),('THEOFAC000337','SUB000416','FAC000148'),('THEOFAC000338','SUB000413','FAC000162'),('THEOFAC000339','SUB000412','FAC000080'),('THEOFAC000340','SUB000420','FAC000147'),('THEOFAC000341','SUB000421','FAC000156'),('THEOFAC000342','SUB000422','FAC000160'),('THEOFAC000343','SUB000423','FAC000164'),('THEOFAC000344','SUB000424','FAC000149'),('THEOFAC000345','SUB000425','FAC000150'),('THEOFAC000346','SUB000426','FAC000143');
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
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theory_fac_allotment_seq`
--

LOCK TABLES `theory_fac_allotment_seq` WRITE;
/*!40000 ALTER TABLE `theory_fac_allotment_seq` DISABLE KEYS */;
INSERT INTO `theory_fac_allotment_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(233),(234),(235),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(249),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260),(261),(262),(263),(264),(265),(266),(267),(268),(269),(270),(271),(272),(273),(274),(275),(276),(277),(278),(279),(280),(281),(282),(283),(284),(285),(286),(287),(288),(289),(290),(291),(292),(293),(294),(295),(296),(297),(298),(299),(300),(301),(302),(303),(304),(305),(306),(307),(308),(309),(310),(311),(312),(313),(314),(315),(316),(317),(318),(319),(320),(321),(322),(323),(324),(325),(326),(327),(328),(329),(330),(331),(332),(333),(334),(335),(336),(337),(338),(339),(340),(341),(342),(343),(344),(345),(346);
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (37,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(38,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(39,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(40,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(41,'Monday','IT Workshop ( Ramya/IGR/ ) batch-III( CSE, B-209 ) & BEE Lab ( IGR/KSH/ ) batch-I( CSE, B-201 )','IT Workshop ( Ramya/IGR/ ) batch-III( CSE, B-209 ) & BEE Lab ( IGR/KSH/ ) batch-I( CSE, B-201 )','IT Workshop ( Ramya/IGR/ ) batch-III( CSE, B-209 ) & BEE Lab ( IGR/KSH/ ) batch-I( CSE, B-201 )','IT Workshop ( Ramya/IGR/ ) batch-III( CSE, B-209 ) & BEE Lab ( IGR/KSH/ ) batch-I( CSE, B-201 )','M-III (Ramya)  & LST (VS) ','M-III (Ramya)  & LST (VS) ','BEE (AG) ',0,'COMB000008'),(42,'Saturday','M-III (Ramya)  & OR (IGR) ','LST (VS)  & BEE Lab ( IGR/KSH/ ) batch-I( CSE, S-IV Lab )','BEE Lab ( IGR/KSH/ ) batch-III( Biomedical, 210 ) & IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 110 )','BEE Lab ( IGR/KSH/ ) batch-III( Biomedical, 110 ) & IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 110 )','LST (VS)  & IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 107 )','LST (VS)  & IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 107 )','IT Workshop ( Ramya/IGR/ ) batch-III( Biomedical, 110 ) & BEE Lab ( IGR/KSH/ ) batch-III( Biomedical, 110 )',0,'COMB000008'),(49,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000006'),(50,'Monday','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )','MPMC (BG) ','BME-II (GS) ','BCS (BG) ','MPMC in MA Lab ( BG/MM/ ) batch-I( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-II( Biomedical, 109 )','MPMC in MA Lab ( BG/MM/ ) batch-I( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-II( Biomedical, 109 )',NULL,1,'COMB000006'),(51,'Tuesday','BME-II (GS) ','MPMC (BG) ','MIS (VS) ','BCS (BG) ','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )',NULL,NULL,1,'COMB000006'),(52,'Wednesday','BME-I (MVR) ','BM (MM) ','MPMC (BG) ','MC-I ES ( VS/GS/ ) batch-I( Biomedical, 210 )','MPMC in MA Lab ( BG/MM/ ) batch-II( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-I( Biomedical, 109 )','MPMC in MA Lab ( BG/MM/ ) batch-II( Biomedical, 110 ) & BME Lab ( MS/DSR/ ) batch-I( Biomedical, 109 )',NULL,1,'COMB000006'),(53,'Thursday','BME-I (MVR) ','BM (MM) ','MIS (VS) ','BCS (BG) ',NULL,NULL,NULL,1,'COMB000006'),(54,'Friday','BME-I (MVR) ','MIS (VS) ','BME-II (GS) ','BM (MM) ',NULL,NULL,NULL,1,'COMB000006'),(55,'Monday','DSA (KSH) ','BEE (GKK) ','M-III (KRB) ','OR (CV) ','BEE ( GKK/ ) batch-I( CSE, B-210 )','BEE ( GKK/ ) batch-I( CSE, B-210 )',NULL,0,'COMB000008'),(56,'Tuesday','M-III (KRB) ','BEE (GKK) ','LST (MVD) ','OR (CV) ','BEE ( GKK/ ) batch-II( CSE, B-210 )','BEE ( GKK/ ) batch-II( CSE, B-210 )',NULL,0,'COMB000008'),(57,'Wednesday','IT Workshop ( Lavanya/Saida/MT/ ) batch-I( CSE, S-II Lab )','IT Workshop ( Lavanya/Saida/MT/ ) batch-II( CSE, S-III Lab )','M-III (KRB) ','OR (CV) ','LST (MVD) ',NULL,NULL,0,'COMB000008'),(58,'Thursday','BEE (GKK) ','M-III (KRB) ','BEE ( GKK/ ) batch-II( CSE, B-210 )','BEE ( GKK/ ) batch-II( CSE, B-210 )',NULL,NULL,NULL,0,'COMB000008'),(59,'Friday','DSA (KSH) ','DSA (KSH) ','LST (MVD) ','BEE (GKK) ',NULL,NULL,NULL,0,'COMB000008'),(60,'Saturday','DSA ( Ramya/Prashanthi/IGR/ ) batch-I( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) batch-II( CSE, S-III Lab )','DSA ( Ramya/Prashanthi/IGR/ ) batch-III( CSE, S-IV Lab )','DSA ( Ramya/Prashanthi/IGR/ ) batch-III( CSE, S-IV Lab )','IT Workshop ( Lavanya/Saida/MT/ ) batch-I( CSE, S-II Lab )','IT Workshop ( Lavanya/Saida/MT/ ) batch-II( CSE, S-III Lab )','IT Workshop ( Lavanya/Saida/MT/ ) batch-III( CSE, S-IV Lab )',0,'COMB000008'),(61,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(62,'Tuesday','PP (LM) ','PP (LM) ','S&S (MSS) ','ALC (MT) ','EITK (KR) ','DBMS (SSR) ',NULL,0,'COMB000009'),(63,'Wednesday',NULL,'S&S (MSS) ','OS (AG) ','DBMS (SSR) ','EITK (KR) ','OP Lab ( AG/N.Madhu/MT/ ) batch-I( CSE, S-III Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-II( CSE, S-II Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-III( CSE, S-IV Lab )','OP Lab ( AG/N.Madhu/MT/ ) batch-I( CSE, S-III Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-II( CSE, S-II Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-III( CSE, S-IV Lab )',0,'COMB000009'),(64,'Thursday',NULL,'DBMS (SSR) ','OS (AG) ','ALC (MT) ','WP (VS) ','OP Lab ( AG/N.Madhu/MT/ ) batch-I( CSE, R and D Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-II( CSE, Ramanujan Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-III( CSE, S-III Lab )','OP Lab ( AG/N.Madhu/MT/ ) batch-I( CSE, R and D Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-II( CSE, Ramanujan Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-III( CSE, S-III Lab )',0,'COMB000009'),(65,'Monday',NULL,'ALC (MT) ','WP (VS) ','OS (AG) ','EITK (KR) ','DBMS (SSR) ','DBMS (SSR) ',0,'COMB000009'),(66,'Friday',NULL,'WP (VS) ','PP (LM) ','S&S (MSS) ','DBMS Lab ( VS/Prakash/SSR/ ) batch-I( CSE, S-II Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-III( CSE, S-IV Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-II( CSE, S-III Lab )','DBMS Lab ( VS/Prakash/SSR/ ) batch-I( CSE, S-II Lab ) & DBMS Lab ( VS/Prakash/SSR/ ) batch-III( CSE, S-IV Lab ) & OP Lab ( AG/N.Madhu/MT/ ) batch-II( CSE, S-III Lab )',NULL,0,'COMB000009'),(67,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(68,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(69,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(70,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(71,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(72,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, R and D Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, R and D Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, R and D Lab )','BEE ( GKK/ ) -I( CSE, R and D Lab )',NULL,NULL,NULL,0,'COMB000008'),(73,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(74,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(75,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(76,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(77,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(78,'Monday','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-II Lab )',NULL,NULL,NULL,0,'COMB000008'),(79,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(80,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(81,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(82,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(83,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(84,'Monday','BEE ( GKK/ ) -I( CSE, S-II Lab )',NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000008'),(85,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000113'),(86,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000113'),(87,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000113'),(88,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000113'),(89,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000113'),(90,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000113'),(91,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(92,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(93,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(94,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(95,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(96,'Monday','ALC (MT) ','ALC (MT) ','ALC (MT) ','ALC (MT) ',NULL,NULL,NULL,0,'COMB000009'),(97,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(98,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(99,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(100,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(101,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(102,'Monday','ALC (MT) ','ALC (MT) ','ALC (MT) ','ALC (MT) ',NULL,NULL,NULL,0,'COMB000009'),(103,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(104,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(105,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(106,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(107,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000009'),(108,'Monday','ALC (MT) ','ALC (MT) ','ALC (MT) ','OS (AG) ','DBMS (SSR) ','DBMS (SSR) ','DBMS (SSR) ',0,'COMB000009'),(109,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(110,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(111,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(112,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(113,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(114,'Monday','ALC (MT) ',NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000009'),(115,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000008'),(116,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000008'),(117,'Monday','DSA (KSH) ','LST (MVD) ','BEE (GKK) ','M-III (KRB) ','IT Workshop ( Lavanya/Saida/MT/ ) -I( CSE, S-II Lab ) & DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )','IT Workshop ( Lavanya/Saida/MT/ ) -I( CSE, S-II Lab ) & DSA ( Ramya/Prashanthi/IGR/ ) -I( CSE, S-IV Lab )',NULL,1,'COMB000008'),(118,'Wednesday','BEE (GKK) ','M-III (KRB) ','DSA (KSH) ','DSA (KSH) ',NULL,NULL,NULL,1,'COMB000008'),(119,'Tuesday','DSA (KSH) ','M-III (KRB) ','BEE (GKK) ','LST (MVD) ','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab ) & IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, S-II Lab )','DSA ( Ramya/Prashanthi/IGR/ ) -II( CSE, S-IV Lab ) & IT Workshop ( Lavanya/Saida/MT/ ) -II( CSE, S-II Lab )',NULL,1,'COMB000008'),(120,'Thursday','LST (MVD) ','BEE (GKK) ','M-III (KRB) ','DSA (KSH) ',NULL,NULL,NULL,1,'COMB000008'),(121,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(122,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(123,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(124,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(125,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(126,'Monday','WP (VS) ','OS (IGR) ','ALC (MVD) ','S&S (GKK) ','EITK (KR) ','OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )','OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )',0,'COMB000156'),(127,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(128,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(129,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(130,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(131,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(132,'Monday','DBMS LAB ( SSR/Saida/ ) -II( CSE, Ramanujan Lab )','DBMS LAB ( SSR/Saida/ ) -II( CSE, Ramanujan Lab )','DBMS LAB ( SSR/Saida/ ) -II( CSE, Ramanujan Lab )','DBMS LAB ( SSR/Saida/ ) -II( CSE, Ramanujan Lab )',NULL,NULL,NULL,0,'COMB000156'),(133,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(134,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(135,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(136,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(137,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(138,'Monday','PP (PS) ','PP (PS) ','PP (PS) ',NULL,NULL,NULL,NULL,0,'COMB000156'),(139,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(140,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(141,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(142,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(143,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(144,'Monday','DBMS LAB ( KSH/Ramya/IGR/MVD/ ) -I( CSE, S-IV Lab ) & OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )','DBMS LAB ( KSH/Ramya/IGR/MVD/ ) -I( CSE, S-IV Lab ) & OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )','DBMS LAB ( KSH/Ramya/IGR/MVD/ ) -I( CSE, S-IV Lab ) & OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )','DBMS LAB ( KSH/Ramya/IGR/MVD/ ) -I( CSE, S-IV Lab ) & OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,0,'COMB000156'),(145,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(146,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(147,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(148,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(149,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000156'),(150,'Monday','ALC (MVD)  & DBMS LAB ( KSH/Ramya/IGR/MVD/ ) -I( CSE, S-IV Lab ) & OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )','ALC (MVD)  & DBMS LAB ( KSH/Ramya/IGR/MVD/ ) -I( CSE, S-IV Lab ) & OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )','ALC (MVD)  & DBMS LAB ( KSH/Ramya/IGR/MVD/ ) -I( CSE, S-IV Lab ) & OS LAB ( JU/AG/ ) -I( CSE, S-IV Lab )',NULL,NULL,NULL,NULL,0,'COMB000156'),(151,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000156'),(152,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000156'),(153,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000156'),(154,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000156'),(155,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000156'),(156,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000156'),(157,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000237'),(158,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000237'),(159,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000237'),(160,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000237'),(161,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000237'),(162,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000237'),(163,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000237'),(164,'Monday','OR (CV) ','BEE (GKK) ','LST (KSH) ','LST (KSH) ','BEE Lab ( BR/GKK/ ) -III( ECE, 118 )','BEE Lab ( BR/GKK/ ) -III( ECE, 118 )',NULL,0,'COMB000237'),(165,'Tuesday','M-III (KRB) ','OR (CV) ','DS Lab ( IGR/LKSK/ ) -I( CSE, S-IV Lab ) & IT Workshop ( VS/ ) -II( CSE, Ramanujan Lab )','DS Lab ( IGR/LKSK/ ) -I( CSE, S-IV Lab ) & IT Workshop ( VS/ ) -II( CSE, Ramanujan Lab )','BEE Lab ( BR/GKK/ ) -II( ECE, 118 )','BEE Lab ( BR/GKK/ ) -II( ECE, 118 )',NULL,0,'COMB000237'),(166,'Wednesday','BEE (GKK) ','M-III (KRB) ','DS Lab ( IGR/LKSK/ ) -II( CSE, S-II Lab ) & IT Workshop ( VS/ ) -I( CSE, S-III Lab )','DS Lab ( IGR/LKSK/ ) -II( CSE, S-II Lab ) & IT Workshop ( VS/ ) -I( CSE, S-III Lab )','OR (CV) ','BEE Lab ( BR/GKK/ ) -I( ECE, 118 )','BEE Lab ( BR/GKK/ ) -I( ECE, 118 )',0,'COMB000237'),(167,'Thursday','DSA (LKSK) ','DSA (LKSK) ','BEE (GKK) ','M-III (KRB) ','LST (KSH) ','DS Lab ( IGR/LKSK/ ) -I( CSE, S-II Lab ) & IT Workshop ( VS/ ) -II( CSE, S-III Lab )','DS Lab ( IGR/LKSK/ ) -I( CSE, S-II Lab ) & IT Workshop ( VS/ ) -II( CSE, S-III Lab )',0,'COMB000237'),(168,'Friday','DSA (LKSK) ','DSA (LKSK) ','M-III (KRB) ','BEE (GKK) ','IT Workshop ( VS/ ) -I( CSE, S-III Lab ) & DS Lab ( IGR/LKSK/ ) -II( CSE, S-II Lab )','IT Workshop ( VS/ ) -I( CSE, S-III Lab ) & DS Lab ( IGR/LKSK/ ) -II( CSE, S-II Lab )',NULL,0,'COMB000237'),(169,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000237'),(170,'Monday','OR (CV) ','M-III (KRB) ','LST (KSH) ','LST (KSH) ','BEE Lab ( BR/GKK/ ) -III( ECE, 118 )','BEE Lab ( BR/GKK/ ) -III( ECE, 118 )',NULL,1,'COMB000237'),(171,'Tuesday','M-III (KRB) ','OR (CV) ','IT Workshop ( VS/ ) -II( CSE, Ramanujan Lab ) & DS Lab ( IGR/LKSK/ ) -I( CSE, S-IV Lab )','IT Workshop ( VS/ ) -II( CSE, Ramanujan Lab ) & DS Lab ( IGR/LKSK/ ) -I( CSE, S-IV Lab )','BEE Lab ( BR/GKK/ ) -II( ECE, 118 )','BEE Lab ( BR/GKK/ ) -II( ECE, 118 )',NULL,1,'COMB000237'),(172,'Wednesday','BEE (GKK) ','M-III (KRB) ','IT Workshop ( VS/ ) -I( CSE, S-III Lab ) & DS Lab ( IGR/LKSK/ ) -II( CSE, S-II Lab )','IT Workshop ( VS/ ) -I( CSE, S-III Lab ) & DS Lab ( IGR/LKSK/ ) -II( CSE, S-II Lab )','OR (CV) ','BEE Lab ( BR/GKK/ ) -I( ECE, 118 )','BEE Lab ( BR/GKK/ ) -I( ECE, 118 )',1,'COMB000237'),(173,'Thursday','DSA (LKSK) ','DSA (LKSK) ','BEE (GKK) ','M-III (KRB) ','LST (KSH) ','DS Lab ( IGR/LKSK/ ) -I( CSE, S-II Lab ) & IT Workshop ( VS/ ) -II( CSE, S-III Lab )','DS Lab ( IGR/LKSK/ ) -I( CSE, S-II Lab ) & IT Workshop ( VS/ ) -II( CSE, S-III Lab )',1,'COMB000237'),(174,'Friday','DSA (LKSK) ','DSA (LKSK) ','M-III (KRB) ','BEE (GKK) ','IT Workshop ( VS/ ) -I( CSE, S-III Lab ) & DS Lab ( IGR/LKSK/ ) -II( CSE, S-II Lab )','IT Workshop ( VS/ ) -I( CSE, S-III Lab ) & DS Lab ( IGR/LKSK/ ) -II( CSE, S-II Lab )',NULL,1,'COMB000237'),(175,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000245'),(176,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000245'),(177,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000245'),(178,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000245'),(179,'Wednesday',NULL,NULL,NULL,NULL,NULL,'DS Lab ( IGR/LKSK/ ) -I( CSE, J-909 )','DS Lab ( IGR/LKSK/ ) -I( CSE, J-909 )',0,'COMB000245'),(180,'Monday','BEE (PK) ',NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000245'),(181,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000238'),(182,'Monday','WP (VS) ','OS (EP) ','ALC (MVD) ','S & S (GKK) ','EITK (KR) ','OS Lab ( EP/AG/ ) -II( CSE, S-III Lab ) & DBMS Lab ( SSR/ ) -I( CSE, S-II Lab )','OS Lab ( EP/AG/ ) -II( CSE, S-III Lab ) & DBMS Lab ( SSR/ ) -I( CSE, S-II Lab )',1,'COMB000238'),(183,'Tuesday','S & S (GKK) ','WP (VS) ','OS Lab ( EP/AG/ ) -I( CSE, S-III Lab ) & DBMS Lab ( SSR/ ) -II( CSE, S-II Lab )','OS Lab ( EP/AG/ ) -I( CSE, S-III Lab ) & DBMS Lab ( SSR/ ) -II( CSE, S-II Lab )','EITK (KR) ','PP (PS) ',NULL,1,'COMB000238'),(184,'Wednesday','DBMS (SSR) ','WP (VS) ','ALC (MVD) ','S & S (GKK) ','EITK (KR) ','PP (PS) ',NULL,1,'COMB000238'),(185,'Thursday','OS (EP) ','DBMS (SSR) ','DBMS Lab ( SSR/ ) -I( CSE, S-II Lab ) & OS Lab ( EP/AG/ ) -II( CSE, S-III Lab )','DBMS Lab ( SSR/ ) -I( CSE, S-II Lab ) & OS Lab ( EP/AG/ ) -II( CSE, S-III Lab )','ALC (MVD) ',NULL,NULL,1,'COMB000238'),(186,'Friday','PP (PS) ','DBMS (SSR) ','DBMS Lab ( SSR/ ) -II( CSE, S-II Lab ) & OS Lab ( EP/AG/ ) -I( CSE, S-III Lab )','DBMS Lab ( SSR/ ) -II( CSE, S-II Lab ) & OS Lab ( EP/AG/ ) -I( CSE, S-III Lab )','OS (EP) ',NULL,NULL,1,'COMB000238'),(187,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(188,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(189,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(190,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(191,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(192,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(193,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(194,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(195,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(196,'Friday',NULL,NULL,NULL,NULL,'ME Lab ( PL/TN/ ) -III( Mech, Workshop ) & SM Lab ( UAK/KV/ ) -I( Mech, Workshop )','ME Lab ( PL/TN/ ) -III( Mech, Workshop ) & SM Lab ( UAK/KV/ ) -I( Mech, Workshop )','ME Lab ( PL/TN/ ) -III( Mech, Workshop ) & SM Lab ( UAK/KV/ ) -I( Mech, Workshop )',0,'COMB000050'),(197,'Wednesday',NULL,NULL,NULL,NULL,'ME Lab ( PL/TN/ ) -II( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -III( Mech, Workshop )','ME Lab ( PL/TN/ ) -II( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -III( Mech, Workshop )','ME Lab ( PL/TN/ ) -II( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -III( Mech, Workshop )',0,'COMB000050'),(198,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(199,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(200,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(201,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(202,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(203,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000050'),(204,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000050'),(205,'Monday','ME Lab ( PL/TN/ ) -III( Mech, LH-2 )','SM (PRB) ','ME (TN) ','ETD (BH) ','ME Lab ( PL/TN/ ) -I( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -II( Mech, Workshop )','ME Lab ( PL/TN/ ) -I( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -II( Mech, Workshop )','ME Lab ( PL/TN/ ) -I( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -II( Mech, Workshop )',1,'COMB000050'),(206,'Tuesday','ME (TN) ','M-III (srj) ','ETD (BH) ','AE (PK) ',NULL,NULL,NULL,1,'COMB000050'),(207,'Wednesday','AM (GV) ','ETD (BH) ','SM (PRB) ',NULL,'ME Lab ( PL/TN/ ) -II( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -III( Mech, Workshop )','ME Lab ( PL/TN/ ) -II( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -III( Mech, Workshop )','ME Lab ( PL/TN/ ) -II( Mech, Workshop ) & SM Lab ( UAK/PRB/ ) -III( Mech, Workshop )',1,'COMB000050'),(208,'Thursday','AM (GV) ','SM (PRB) ','M-III (srj) ','AE (PK) ',NULL,NULL,NULL,1,'COMB000050'),(209,'Friday','AE (PK) ','M-III (srj) ','ME (TN) ','AM (GV) ','ME Lab ( PL/TN/ ) -III( Mech, Workshop ) & SM Lab ( UAK/KV/ ) -I( Mech, Workshop )','ME Lab ( PL/TN/ ) -III( Mech, Workshop ) & SM Lab ( UAK/KV/ ) -I( Mech, Workshop )','ME Lab ( PL/TN/ ) -III( Mech, Workshop ) & SM Lab ( UAK/KV/ ) -I( Mech, Workshop )',1,'COMB000050'),(210,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000052'),(211,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000052'),(212,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000052'),(213,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000052'),(214,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000052'),(215,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'COMB000052'),(216,'Monday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000052'),(217,'Tuesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000052'),(218,'Thursday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000052'),(219,'Wednesday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000052'),(220,'Friday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000052'),(221,'Saturday',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'COMB000052');
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
INSERT INTO `user_role_mapping` VALUES ('FAC000084','ROL00001'),('FAC000094','ROL00001'),('FAC000095','ROL00001'),('FAC000096','ROL00001'),('FAC000097','ROL00001'),('FAC000101','ROL00001'),('FAC000102','ROL00001'),('FAC000103','ROL00001'),('FAC000104','ROL00001'),('FAC000112','ROL00001'),('FAC000113','ROL00001'),('FAC000114','ROL00001'),('FAC000115','ROL00001'),('FAC000116','ROL00001'),('FAC000117','ROL00001'),('FAC000118','ROL00001'),('FAC000119','ROL00001'),('FAC000120','ROL00001'),('FAC000121','ROL00001'),('FAC000122','ROL00001'),('FAC000123','ROL00001'),('FAC000124','ROL00001'),('FAC000129','ROL00001'),('FAC000130','ROL00001'),('FAC000131','ROL00001'),('FAC000132','ROL00001'),('FAC000139','ROL00001'),('FAC000140','ROL00001'),('FAC000141','ROL00001'),('FAC000142','ROL00001'),('FAC000143','ROL00001'),('FAC000144','ROL00001'),('FAC000145','ROL00001'),('FAC000146','ROL00001'),('FAC000147','ROL00001'),('FAC000148','ROL00001'),('FAC000149','ROL00001'),('FAC000150','ROL00001'),('FAC000151','ROL00001'),('FAC000152','ROL00001'),('FAC000155','ROL00001'),('FAC000156','ROL00001'),('FAC000157','ROL00001'),('FAC000158','ROL00001'),('FAC000159','ROL00001'),('FAC000160','ROL00001'),('FAC000161','ROL00001'),('FAC000162','ROL00001'),('FAC000163','ROL00001'),('FAC000164','ROL00001'),('FAC000165','ROL00001'),('FAC000166','ROL00001'),('FAC000168','ROL00001'),('FAC000169','ROL00001'),('EMP00024','ROL00004'),('EMP00025','ROL00004'),('EMP00034','ROL00004'),('EMP00035','ROL00004'),('EMP00040','ROL00004'),('EMP00041','ROL00004'),('EMP00042','ROL00004'),('EMP00027','ROL00009'),('EMP00039','ROL00009'),('USR11116','ROL00009');
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
INSERT INTO `users` VALUES ('EMP00024','149e200961ea52955bd55cb49a127935','2022-06-22',1,'EMP00024',NULL),('EMP00025','e10adc3949ba59abbe56e057f20f883e','2022-06-23',1,'EMP00025',NULL),('EMP00027','e10adc3949ba59abbe56e057f20f883e','2022-09-19',0,'EMP00027',NULL),('EMP00034','e10adc3949ba59abbe56e057f20f883e','2022-10-28',1,'EMP00034',NULL),('EMP00035','a152e841783914146e4bcd4f39100686','2022-10-31',1,'EMP00035',NULL),('EMP00039','e10adc3949ba59abbe56e057f20f883e','2022-11-10',1,'EMP00039',NULL),('EMP00040','e10adc3949ba59abbe56e057f20f883e','2022-11-10',1,'EMP00040',NULL),('EMP00041','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,'EMP00041',NULL),('EMP00042','e10adc3949ba59abbe56e057f20f883e','2022-12-02',1,'EMP00042',NULL),('FAC000084','e10adc3949ba59abbe56e057f20f883e','2022-06-03',1,NULL,NULL),('FAC000094','e10adc3949ba59abbe56e057f20f883e','2022-06-20',1,NULL,NULL),('FAC000095','e10adc3949ba59abbe56e057f20f883e','2022-06-20',1,NULL,NULL),('FAC000096','e10adc3949ba59abbe56e057f20f883e','2022-06-20',1,NULL,NULL),('FAC000097','e10adc3949ba59abbe56e057f20f883e','2022-06-20',1,NULL,NULL),('FAC000101','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000102','e10adc3949ba59abbe56e057f20f883e','2022-09-20',0,NULL,NULL),('FAC000103','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000104','e10adc3949ba59abbe56e057f20f883e','2022-09-20',1,NULL,NULL),('FAC000112','e10adc3949ba59abbe56e057f20f883e','2022-10-31',1,NULL,NULL),('FAC000113','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000114','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000115','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000116','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000117','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000118','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000119','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000120','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000121','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000122','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000123','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000124','e10adc3949ba59abbe56e057f20f883e','2022-11-06',1,NULL,NULL),('FAC000129','e10adc3949ba59abbe56e057f20f883e','2022-11-10',1,NULL,NULL),('FAC000130','e10adc3949ba59abbe56e057f20f883e','2022-11-10',1,NULL,NULL),('FAC000131','e10adc3949ba59abbe56e057f20f883e','2022-11-10',1,NULL,NULL),('FAC000132','e10adc3949ba59abbe56e057f20f883e','2022-11-10',1,NULL,NULL),('FAC000139','e10adc3949ba59abbe56e057f20f883e','2022-11-11',1,NULL,NULL),('FAC000140','e10adc3949ba59abbe56e057f20f883e','2022-11-11',1,NULL,NULL),('FAC000141','e10adc3949ba59abbe56e057f20f883e','2022-11-11',1,NULL,NULL),('FAC000142','e10adc3949ba59abbe56e057f20f883e','2022-11-11',1,NULL,NULL),('FAC000143','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000144','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000145','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000146','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000147','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000148','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000149','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000150','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000151','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000152','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000155','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000156','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000157','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000158','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000159','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000160','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000161','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000162','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000163','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000164','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000165','e10adc3949ba59abbe56e057f20f883e','2022-11-25',1,NULL,NULL),('FAC000166','e10adc3949ba59abbe56e057f20f883e','2022-11-30',1,NULL,NULL),('FAC000168','e10adc3949ba59abbe56e057f20f883e','2022-12-01',1,NULL,NULL),('FAC000169','e10adc3949ba59abbe56e057f20f883e','2022-12-01',1,NULL,NULL),('USR11114','e10adc3949ba59abbe56e057f20f883e','2020-08-06',1,'146087',NULL),('USR11116','6531401f9a6807306651b87e44c05751','2020-08-21',1,'146002',NULL);
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
INSERT INTO `usersession` VALUES ('00294cc2-105c-4893-b6a9-4e678e27702a','FAC000004',1,'2022-11-02 20:29:54','2022-08-13 18:15:35'),('02579ecc-5679-4917-83ed-3b014415c705','USR00001',1,'2021-01-07 09:31:58','2021-01-07 11:15:31'),('0413add1-cc64-4314-9484-9418f294418e','FAC000092',1,'2022-06-07 18:04:35','2022-06-07 18:04:39'),('0c4af59c-b090-4dd6-b19a-1b76d003cc40','EMP00021',1,'2022-06-19 09:13:41','2022-06-20 04:45:17'),('1146984a-8689-46e0-af4e-27f48fc5fd85','USR11119',1,'2021-04-19 10:42:50','2021-04-19 10:42:58'),('2569d40a-3890-4214-a35f-476033dc3b61','USR11110',1,'2020-08-05 10:03:37','2020-08-04 07:21:17'),('26a2558d-0786-4e85-8f1d-4c0cf0db5830','USR00002',1,'2020-07-29 11:25:40',NULL),('2e95a6ae-928f-4cc8-9985-e6691e68633f','EMP00026',1,'2022-09-27 11:11:25','2022-09-19 09:25:14'),('3b6b0b7c-9d72-46ae-a94e-edb7bd920a48','USR22221',1,'2020-07-29 11:58:56',NULL),('453a0319-4704-43dd-8ed0-e3a0fe1ccff0','USR11124',1,'2021-01-29 06:15:06',NULL),('4948e672-b8b1-40fd-982c-352e71f9b16d','FAC000084',1,'2022-10-15 07:02:35','2022-06-20 15:47:39'),('5062fcce-9159-40bd-8a9e-6069343bce82','FAC000111',1,'2022-10-28 15:02:51',NULL),('520afb86-a6d1-440e-867b-c901ee9db79b','USR11135',1,'2021-02-04 04:52:13',NULL),('54e0c49d-cb69-4da5-b9ac-2284eaa31a44','FAC000088',1,'2022-06-03 18:34:44',NULL),('5bfd7f6d-9e21-4cc4-ae8c-dab871337d72','EMP00034',1,'2022-10-28 11:59:03',NULL),('63a6897c-5c93-40d7-95a3-56fa2afc019f','EMP00036',1,'2022-11-10 09:54:20',NULL),('6afc3829-53fb-4cd9-ad9a-4effbe9f7e35','USR11112',1,'2020-08-05 10:02:59','2020-08-05 10:03:28'),('6da219f9-04f9-458c-b791-92718702fed2','USR22225',1,'2020-07-30 05:24:48','2020-07-30 04:58:11'),('730117a5-636c-431f-8a03-9105b6b9d5b4','EMP00039',1,'2022-12-05 09:04:47',NULL),('767c74bb-3108-4f3e-9627-c0271b33cbc6','EMP00035',1,'2022-11-11 15:22:12',NULL),('76d0a5f3-af76-45d3-bcf7-82e66f164585','USR11121',1,'2021-04-19 10:57:11','2021-04-19 10:43:27'),('773965c5-44c6-4f7a-9743-f9d92ccaebe3','FAC000082',1,'2022-06-03 08:53:11','2022-05-31 17:41:20'),('7758701c-d839-43d2-8df4-fdd8640ba55f','FAC000097',1,'2022-06-24 10:04:07','2022-06-20 16:49:34'),('78403cb2-b219-430b-949a-c242b986e0d4','USR11120',1,'2022-06-12 09:32:43','2022-06-03 17:53:48'),('7e1d603e-d65d-4259-b918-56e3faacecfd','USR11125',1,'2021-01-29 06:00:10',NULL),('827779e4-9784-4837-9474-bdb6251829e0','FAC000114',1,'2022-11-10 09:32:43',NULL),('89009f24-97f5-4236-8059-08f7970a2bb3','EMP00037',1,'2022-11-10 14:14:14',NULL),('905b0536-3833-4649-b4a7-1c0ebb071339','EMP00040',1,'2022-11-11 06:57:56',NULL),('9f1af8b2-cbb2-4d02-ad65-956050945a38','EMP00024',1,'2022-11-16 06:54:56','2022-09-21 06:43:20'),('a5e21591-c548-4259-acb7-0480752d7a70','USR11114',1,'2022-02-17 17:03:48','2022-01-24 13:27:51'),('a71fcb32-34bb-4479-9ffc-1f7fa07445cd','USR11116',1,'2022-11-12 06:38:10','2022-09-20 10:41:47'),('b5d6a085-a084-4e2c-9923-254d9e27a5f1','FAC000126',1,'2022-11-11 06:43:28',NULL),('bfab18df-4af5-4064-8486-04baf7e3e429','FAC000083',1,'2022-09-19 07:29:11','2022-09-19 07:29:13'),('c1ffc3b3-8791-49df-9459-324bcabe6c3a','USR11158',1,'2021-04-19 04:48:15','2021-04-19 04:48:25'),('c2625829-8770-4fb5-8633-a21226887397','USR11118',1,'2021-11-11 08:45:05','2021-11-11 08:45:00'),('c660220c-7404-46de-acb6-e9a1bad60f12','FAC000087',1,'2022-06-07 17:48:31',NULL),('c9a63e93-a8d8-43f9-923e-bc2bc4321124','FAC000086',1,'2022-06-03 18:22:27',NULL),('cd69d2b1-360a-40ae-bbdf-0a5a3603712d','EMP00022',1,'2022-06-20 07:42:35','2022-06-20 07:22:40'),('ced0520b-1cf8-4973-bcb9-e3aa54857353','USR11128',1,'2021-02-04 05:14:02','2021-01-30 10:51:40'),('d07ef168-736e-4672-af3e-55b6433abdfd','USR11111',1,'2020-08-04 04:56:08','2020-08-04 04:56:42'),('d0eb3221-f954-4085-9828-0388f9ebc977','USR11117',1,'2021-04-19 09:48:45','2021-04-19 09:48:52'),('d16bbdd5-7cf9-499b-a436-75c6f54123ce','FAC000099',1,'2022-06-23 10:35:55',NULL),('dabbfd29-196f-44e1-81e7-8167b7727ace','USR11131',1,'2021-01-30 10:51:46','2021-01-30 10:51:50'),('db256187-badc-4d75-b185-705efd20fc65','EMP00025',1,'2022-09-19 09:03:06','2022-09-19 09:03:09'),('dd1600cd-c2c5-4005-9021-84ab6d2c4f1b','EMP00041',1,'2022-12-01 10:20:11',NULL),('e1929034-75c8-4c75-be34-c96508d27bb9','EMP00023',1,'2022-06-20 07:24:02','2022-06-20 07:27:07'),('e6a30de0-7fce-4d57-8df2-8dbc33c957c8','FAC000085',1,'2022-06-03 18:00:13',NULL),('f4a42e7a-303d-48cf-8d34-83b53c0c9267','2',1,'2020-07-29 10:30:24',NULL),('f88da053-26cd-440a-9fd9-1cc37222d312','FAC000098',1,'2022-06-20 16:50:10','2022-06-20 16:49:59');
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

-- Dump completed on 2022-12-05 17:01:27
