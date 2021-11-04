-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `ID_ADDRESS` int NOT NULL AUTO_INCREMENT,
  `STEET_NUM` varchar(8) NOT NULL,
  `STREET_NAME` varchar(30) NOT NULL,
  `RESIDENCE_NAME` varchar(30) DEFAULT NULL,
  `BUILDING_NAME` varchar(30) DEFAULT NULL,
  `FLOOR` int DEFAULT NULL,
  `POSTAL_CODE` int NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `ID_EMPLOYEE` int DEFAULT NULL,
  PRIMARY KEY (`ID_ADDRESS`),
  KEY `ADDRESS_EMPLOYEE0_FK` (`ID_EMPLOYEE`),
  CONSTRAINT `ADDRESS_EMPLOYEE0_FK` FOREIGN KEY (`ID_EMPLOYEE`) REFERENCES `employee` (`ID_EMPLOYEE`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'18','Avenue Jean Portalis',NULL,NULL,6,78621,'TRAPPES',NULL),(2,'45','boulevard Bryas','Les CHEVREFEUILLES',NULL,NULL,92026,'COURBEVOIE',NULL),(3,'97','rue Sébastopol',NULL,NULL,NULL,42218,'SAINT-ÉTIENNE',NULL),(4,'55','rue Ernest Renan','Les Flots Bleus',NULL,NULL,77108,'CHELLES',NULL),(5,'42','Cours Jean Jaures',NULL,'Batiment C',NULL,33063,'BORDEAUX',1),(6,'87','Rue Sadi Carnot',NULL,'Batiment 7',2,32000,'AUCH',2),(7,'2','Avenue Millies Lacroix',NULL,NULL,NULL,38151,'ECHIROLLES',NULL),(8,'95','Route De Lyon',NULL,NULL,NULL,37300,'JOUE-LES-TOURS',NULL),(9,'82','Rue Lenotre',NULL,NULL,NULL,35238,'RENNES',3),(10,'24','Rue Grande Fusterie',NULL,NULL,NULL,62700,'BRUAY-LA-BUISSIERE',5),(11,'32','avenue du Marechal Juin',NULL,NULL,NULL,70000,'VESOUL',NULL),(12,'43','rue Banaudon','Fond Vert',NULL,NULL,13014,'MARSEILLE',NULL),(14,'42','route de Lyon',NULL,NULL,NULL,40000,'MONT-DE-MARSAN',4),(15,'93','Place de la Gare',NULL,NULL,4,18000,'BOURGES',NULL),(16,'47',' rue Gouin de Beauchesne',NULL,NULL,NULL,53000,'LAVAL',NULL),(17,'5','avenue du Marechal Juin',NULL,NULL,NULL,78500,'SARTROUVILLE',NULL),(18,'78','Rue Marie De Médicis',NULL,NULL,NULL,95200,'SARCELLES',NULL),(19,'75','Avenue Millies Lacroix',NULL,NULL,NULL,59200,'TOURCOING',11),(20,'94','Rue de l\'Epeule',NULL,NULL,NULL,97440,'SAINT-ANDRÉ',12),(21,'35','Rue Descartes',NULL,NULL,NULL,94370,'SUCY-EN-BRIE',6),(22,'10','Boulevard Albin Durand',NULL,NULL,NULL,73000,'CHAMBÉRY',NULL),(23,'2','Avenue Voltaire',NULL,NULL,NULL,78600,'MAISONS-LAFFITTE',NULL),(24,'50','Rue des Lacs',NULL,NULL,NULL,62110,'HÉNIN-BEAUMONT',7),(25,'16','Rue de Goya',NULL,NULL,NULL,97160,'LE MOULE',8),(26,'14','Rue des Coudriers',NULL,NULL,NULL,76130,'MONT-SAINT-AIGNAN',NULL),(27,'35','Rue des lieutemants Thomazo',NULL,NULL,NULL,4000,'DIGNE-LES-BAINS',9),(28,'95','Boulevard Albin Durand',NULL,NULL,NULL,51000,'CHÂLONS-EN-CHAMPAGNE',NULL),(29,'98','Rue Porte d\'Orange',NULL,NULL,NULL,33150,'CENON',NULL),(30,'60','Rue des Coudriers',NULL,NULL,NULL,76130,'MONT-SAINT-AIGNAN',10),(31,'94','Boulevard Amiral Courbet',NULL,NULL,NULL,45100,'ORLÉANS',NULL),(32,'1','Rue Petite Fusterie',NULL,NULL,NULL,29200,'BREST',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `ID_JOURNEY` int NOT NULL,
  `ID_CLIENT` int NOT NULL,
  `BOOKING_DATE` date NOT NULL,
  PRIMARY KEY (`ID_JOURNEY`,`ID_CLIENT`),
  KEY `BOOKING_CLIENT1_FK` (`ID_CLIENT`),
  CONSTRAINT `BOOKING_CLIENT1_FK` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`),
  CONSTRAINT `BOOKING_JOURNEY0_FK` FOREIGN KEY (`ID_JOURNEY`) REFERENCES `journey` (`ID_JOURNEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,'2019-06-04'),(2,2,'2019-07-10'),(3,3,'2019-09-01'),(4,4,'2019-09-02'),(5,5,'2019-10-28'),(6,6,'2019-11-02'),(7,7,'2019-11-20'),(8,8,'2019-12-09'),(9,9,'2019-12-09'),(10,10,'2019-12-31');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ID_CLIENT` int NOT NULL AUTO_INCREMENT,
  `CLIENT_FIRSTNAME` varchar(20) NOT NULL,
  `CLIENT_SURNAME` varchar(20) NOT NULL,
  `CLIENT_TEL_NUM` int NOT NULL,
  `CLIENT_EMAIL` varchar(30) NOT NULL,
  `CLIENT_GENDER` tinyint(1) NOT NULL,
  `CLIENT_BIRTHDATE` date NOT NULL,
  `ID_ADDRESS` int DEFAULT NULL,
  `ID_ADDRESS_2` int DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Chloé','Sennet',777446697,'SennetChloé@armyspy.com',1,'2009-05-10',1,1),(2,'Victoire','Francoeur',607098068,'VictoireFrancoeur@dayrep.com',1,'1996-11-21',2,2),(3,'Ferragus','Goddu',486712997,'FerragusGoddu@jourrapide.com',0,'1983-01-11',3,3),(4,'Iva','Saurel',563663027,'IvaSaurel@dayrep.com',1,'1991-09-05',4,4),(5,'Andrée','Couet',523701544,'AndreeCouet@teleworm.us',0,'1962-04-14',7,7),(6,'Mika','Mercier',584745723,'MikaMercier@teleworm.us',0,'1981-09-24',8,8),(7,'Honoré','Ayot',490377303,'HonoreAyot@teleworm.us',0,'1971-12-10',11,11),(8,'Arthur','Guédry',216060338,'ArthurGuedry@jourrapide.com',0,'2001-03-30',12,12),(9,'Christabel','Bourassa',296394223,'ChristabelBourassa@teleworm.us',1,'1969-02-27',13,13),(10,'Claudette','Trudeau',202228889,'ClaudetteTrudeau@dayrep.com',1,'1947-09-05',15,15),(11,'Pascal','Arnoux',158306090,'PascalArnoux@armyspy.com',0,'1952-04-25',16,16),(12,'Laurent','Gagné',308453423,'LaurentGagne@dayrep.com',0,'1961-11-28',17,17),(13,'Héloise','Royer',625399641,'HeloiseRoyer@jourrapide.com',1,'1990-04-04',18,18),(14,'Gilbert','Mercier',670534303,'GilbertMercier@jourrapide.com',0,'1949-10-25',22,22),(15,'Arnaud','Laisné',523698212,'ArnaudLaisne@teleworm.us',0,'1981-02-21',23,23),(16,'Gustave','Lebel',698712253,'GustaveLebel@cuvox.de',0,'1979-06-30',26,26),(17,'Philip','Dubeau',695770023,'PhilipDubeau@dayrep.com',0,'1959-11-05',28,28),(18,'Gaspard','Janty',683066092,'Gaspardjnt@gmail.com',0,'2001-05-25',29,29),(19,'Dominique','Desroches',178256342,'DominiqueDesroches@einrot.com',1,'1941-07-23',31,31),(20,'Babette','Jodion',132332698,'BabetteJodion@fleckens.hu',1,'1951-05-11',32,32);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_information`
--

DROP TABLE IF EXISTS `client_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_information` (
  `ID_CLIENT_INFORMATION` int NOT NULL AUTO_INCREMENT,
  `CLIENT_PAYEMENT` double NOT NULL,
  `PAYEMENT_METHOD` varchar(30) NOT NULL,
  `PAYEMENT_BY_INSTALEMENT` tinyint(1) NOT NULL,
  `PAYEMENT_DATE` date NOT NULL,
  `BOOKING_DATE` date NOT NULL,
  `ID_CLIENT` int NOT NULL,
  `ID_JOURNEY` int DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT_INFORMATION`),
  UNIQUE KEY `CLIENT_INFORMATION_JOURNEY0_AK` (`ID_JOURNEY`),
  KEY `CLIENT_INFORMATION_CLIENT0_FK` (`ID_CLIENT`),
  CONSTRAINT `CLIENT_INFORMATION_CLIENT0_FK` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`),
  CONSTRAINT `CLIENT_INFORMATION_JOURNEY1_FK` FOREIGN KEY (`ID_JOURNEY`) REFERENCES `journey` (`ID_JOURNEY`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_information`
--

LOCK TABLES `client_information` WRITE;
/*!40000 ALTER TABLE `client_information` DISABLE KEYS */;
INSERT INTO `client_information` VALUES (1,500,'Cash',0,'2019-06-05','2019-06-04',1,1),(2,110,'CB',1,'2019-07-11','2019-07-10',2,2),(3,32,'CB',0,'2019-09-02','2019-09-01',3,3),(4,630,'CB',0,'2019-09-03','2019-09-02',4,4),(5,720,'CB',1,'2019-10-29','2019-10-28',5,5),(6,548,'CB',0,'2019-11-03','2019-11-02',6,6),(7,900,'Cash',0,'2019-11-21','2019-11-20',7,7),(8,455,'CB',0,'2019-12-10','2019-12-09',8,8),(9,142,'CB',1,'2019-12-10','2019-12-09',9,9),(10,132,'CB',0,'2021-04-01','2021-04-01',10,10);
/*!40000 ALTER TABLE `client_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID_EMPLOYEE` int NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_FIRSTNAME` varchar(20) NOT NULL,
  `EMPLOYEE_SURNAME` varchar(20) NOT NULL,
  `EMPLOYEE_TEL_NUM` int NOT NULL,
  `EMPLOYEE_CORPORATE_MAIL` varchar(30) NOT NULL,
  `EMPLOYEE_HIRING_DATE` date NOT NULL,
  PRIMARY KEY (`ID_EMPLOYEE`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Tanguy','Gadbois',540400504,'TanguyGadbois@armyspy.com','1998-02-26'),(2,'Wyatt','Paquet',536225939,'WyattPaquet@einrot.com','1998-06-18'),(3,'Jacqueline','Blondlot',377572897,'JacquelineBlondlot@armyspy.com','2002-04-11'),(4,'Ameede','Mercure',460939029,'AmedeeMercure@teleworm.us','1999-12-29'),(5,'Edith','Gougeon',396181753,'EdithGougeon@superrito.com','2001-10-08'),(6,'Noémie','Dupuy',217970304,'NoemiDupuy@fleckens.hu','2000-04-24'),(7,'Diane','Paradis',169165580,'DianeParadis@einrot.com','2002-09-21'),(8,'Pauline','Lebrun',443851246,'PaulineLebrun@fleckens.hu','1999-12-12'),(9,'Alexis','Galarneau',342862931,'AlexisGalarneau@jourrapide.com','2001-05-25'),(10,'Alexandre','Rocheleau ',342892627,'AlexandreRocheleau@rhyta.com','2003-11-17'),(11,'Arthur','De Brisay',386574212,'ArthurdeBrisay@armyspy.com','1999-06-30'),(12,'Josephe','Plourde',261136704,'JosephePlourde@teleworm.us','1998-09-21');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `included_in`
--

DROP TABLE IF EXISTS `included_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `included_in` (
  `ID_JOURNEY` int NOT NULL,
  `PACKAGE` int NOT NULL,
  PRIMARY KEY (`ID_JOURNEY`,`PACKAGE`),
  KEY `INCLUDED_IN_STEP1_FK` (`PACKAGE`),
  CONSTRAINT `INCLUDED_IN_JOURNEY0_FK` FOREIGN KEY (`ID_JOURNEY`) REFERENCES `journey` (`ID_JOURNEY`),
  CONSTRAINT `INCLUDED_IN_STEP1_FK` FOREIGN KEY (`PACKAGE`) REFERENCES `step` (`PACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `included_in`
--

LOCK TABLES `included_in` WRITE;
/*!40000 ALTER TABLE `included_in` DISABLE KEYS */;
INSERT INTO `included_in` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `included_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journey`
--

DROP TABLE IF EXISTS `journey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journey` (
  `ID_JOURNEY` int NOT NULL AUTO_INCREMENT,
  `DEPARTURE_CITY` varchar(30) NOT NULL,
  `DEPARTURE_DATE` date NOT NULL,
  `DEPARTURE_HOUR` time NOT NULL,
  `ARRIVAL_CITY` varchar(30) NOT NULL,
  `ARRIVAL_DATE` date NOT NULL,
  `ARRIVAL_HOUR` time NOT NULL,
  `PRICE` double NOT NULL,
  `KILOMETER` int NOT NULL,
  `PACKAGE` tinyint(1) NOT NULL,
  `TRANSPORT_TYPE` varchar(30) NOT NULL,
  `ID_EMPLOYEE` int NOT NULL,
  `ID_CLIENT_INFORMATION` int NOT NULL,
  PRIMARY KEY (`ID_JOURNEY`),
  UNIQUE KEY `ID_CLIENT_INFORMATION_UNIQUE` (`ID_CLIENT_INFORMATION`),
  KEY `JOURNEY_EMPLOYEE0_FK` (`ID_EMPLOYEE`),
  CONSTRAINT `JOURNEY_CLIENT_INFORMATION1_FK` FOREIGN KEY (`ID_CLIENT_INFORMATION`) REFERENCES `client_information` (`ID_CLIENT_INFORMATION`),
  CONSTRAINT `JOURNEY_EMPLOYEE0_FK` FOREIGN KEY (`ID_EMPLOYEE`) REFERENCES `employee` (`ID_EMPLOYEE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journey`
--

LOCK TABLES `journey` WRITE;
/*!40000 ALTER TABLE `journey` DISABLE KEYS */;
INSERT INTO `journey` VALUES (1,'Paris','2019-06-25','08:55:00','Los Angeles','2019-06-26','02:32:00',450,9080,1,'Plane',1,1),(2,'Bordeaux','2019-07-31','06:00:00','Londre','2019-07-31','16:30:00',90,1051,1,'Bus',2,2),(3,'Marseille','2019-09-04','09:15:00','Paris','2019-09-04','12:15:00',25,774,0,'Bus',3,3),(4,'Paris','2019-09-17','15:25:00','Sao Paulo','2019-09-18','02:45:00',600,9396,0,'Plane',4,4),(5,'Paris','2019-11-07','08:00:00','Bankok','2019-11-08','00:36:00',669,9437,0,'Plane',5,5),(6,'Paris','2019-11-29','12:30:00','Tokyo','2019-11-30','00:30:00',525,9710,0,'Plane',6,6),(7,'Paris','2019-12-03','17:40:00','Oslo','2019-12-03','10:00:00',860,1707,0,'Plane',7,7),(8,'Paris','2019-12-11','04:00:00','Montreal','2019-12-11','10:00:00',425,5502,0,'Plane',8,8),(9,'Toulouse','2019-12-25','08:09:00','Casa Blanca ','2019-12-25','10:10:00',130,1859,0,'Train',9,9),(10,'Paris','2020-01-07','10:00:00','Budapest','2021-05-07','12:24:00',120,1820,0,'Train',10,10);
/*!40000 ALTER TABLE `journey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `step`
--

DROP TABLE IF EXISTS `step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `step` (
  `PACKAGE` int NOT NULL AUTO_INCREMENT,
  `STEP_NUMBER` int NOT NULL,
  `CITY_STEP` varchar(30) NOT NULL,
  PRIMARY KEY (`PACKAGE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `step`
--

LOCK TABLES `step` WRITE;
/*!40000 ALTER TABLE `step` DISABLE KEYS */;
INSERT INTO `step` VALUES (1,1,'New York'),(2,1,'Callais');
/*!40000 ALTER TABLE `step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-27  9:31:57
