CREATE DATABASE  IF NOT EXISTS `new_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `new_schema`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_schema
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `AdminID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `PhoneNum` int DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'Letha Bolt',804601922,'Bolt@nowhere.com'),(2,'Vanita Kelleher',286849082,'Morehead@example.com'),(3,'Marcos Abraham',762300368,'qpzre411@example.com'),(4,'Miyoko Mckinney',767478644,'Bray162@example.com'),(5,'Adolph Francisco',496315878,'Sidney_Agnew3@nowhere.com'),(6,'Oma Lawler',400937535,'xmhz1900@nowhere.com'),(7,'Felix Alba',134115891,'Monroe.Rinehart@nowhere.com'),(8,'Eusebia Noland',693795705,'Gutierrez73@example.com'),(9,'Denisha Mcginnis',398695329,'FelipaAbernathy@nowhere.com'),(10,'Stanford Sullivan',326176457,'Adler@example.com'),(11,'Nathan Salisbury',335893201,'uadm55@example.com'),(12,'Burton Bunnell',488231168,'Caldwell@example.com'),(13,'Adah Jameson',740141451,'NathanielC_Christman823@example.com'),(14,'Adam Geer',627822183,'Valdez@example.com'),(15,'Freeman Selby',842355629,'Rich.F_Hutchins@example.com'),(16,'Laura Barger',760869646,'phkfhcmu_jjjdjuvrms@example.com'),(17,'Ariel Hermann',524936858,'AdalineW.Radford8@example.com'),(18,'Adam Maddox',204878184,'SmalleyS@nowhere.com'),(19,'Winnifred Brantley',404620089,'gxsgr25@example.com'),(20,'Gayle Baugh',429947426,'ikzv7@nowhere.com'),(21,'Delcie Abney',635550989,'AmosBliss189@example.com'),(22,'Kasey Furr',203167930,'jajk3595@example.com'),(23,'Gertie Abel',634381517,'sdyfq9887@nowhere.com'),(24,'Myles Angel',692700762,'Newsome21@example.com'),(25,'Jerome Gipson',222599070,'Hoover@example.com'),(26,'Lilla Perez',628884504,'Russell@nowhere.com'),(27,'Josephine Norwood',370580023,'DorcasLadner5@example.com'),(28,'Elli Robertson',688476304,'OlgaFerry@example.com'),(29,'Curtis Hutson',715944328,'pqfmmt48@example.com'),(30,'Melia Gates',100278688,'OdellG752@example.com'),(31,'Marc Pickering',920482481,'LakeeshaAbel8@example.com'),(32,'Alida Jobe',65056141,'Scarborough@example.com'),(33,'Cordelia Key',300364487,'MathewDeal16@example.com'),(34,'Reba Gregg',981750455,'LaveraLRoberge63@nowhere.com'),(35,'Jarod Bourgeois',106329407,'LucillaAbreu267@example.com'),(36,'Oliva Coble',619541724,'Sturgill@example.com'),(37,'Corey Musgrove',714178447,'pcvmbj959@nowhere.com'),(38,'Bud Grubbs',862223300,'Ketchum@example.com'),(39,'Newton Graves',390296898,'CierraCheatham@nowhere.com'),(40,'Tamica Goins',373937286,'Tanner_Banuelos@example.com'),(41,'Bertram Herzog',219404210,'MalcomKnutson757@nowhere.com'),(42,'Malcolm Coward',880565998,'Alley91@example.com'),(43,'Carley Valdez',790908603,'Nickie_B_Ambrose@nowhere.com'),(44,'Lizzie Krueger',823586550,'SanfordRivas721@example.com'),(45,'Celestine Hong',183432286,'Rudolph358@example.com'),(46,'Shonda Leake',669093376,'Tenisha_Mcclintock@nowhere.com'),(47,'Hubert Waldrop',576541095,'utxpbh4739@example.com'),(48,'Alphonso Meeks',746857855,'Adolph.Antoine@example.com'),(49,'Aimee Stamm',474826358,'BalderasG5@example.com'),(50,'Sonia Ackerman',630979535,'Ted.Mace49@example.com');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BooksID` int NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Edition` int DEFAULT NULL,
  `Available` int DEFAULT NULL,
  `Genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BooksID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Alteration of Bilateral Breast','Kleiner',3,1,'Travel'),(2,'Revision of Infusion Dev in Retroperitoneum','Zurbriggen',11,1,'Horror'),(3,'Alteration of Bi Breast with Nonaut Sub','Albrecht',7,1,'Horror'),(4,'Resection of Spleen','Büchner',6,1,'Cooking'),(5,'Removal of Drainage Device from Cranial Cav','Altmann',11,1,'History'),(6,'Release Pons','Treviranus',7,1,'Travel'),(7,'Bypass Transverse Colon to Sigmoid Colon','osenmüller',3,1,'Horror'),(8,'Reposition R Humeral Shaft w Monopln Ext Fix','Buhmann',8,1,'Cooking'),(9,'Removal of Nonaut Sub from Tracheobronc Tree','choll',2,1,'Adventure'),(10,'Release Right Inferior Parathyroid Gland','Leist',2,1,'Cooking'),(11,'Bypass L Fem Art to B Femor A with Synth Sub','elke',5,1,'Mystery'),(12,'Extirpation of Matter from Cerebral Ventricle','Freund',5,1,'History'),(13,'Insertion of Ext Fix into Skull','Kleinermann',4,1,'Mystery'),(14,'Bypass Cereb Vent to Cereb Cistern w Synth Sub','Herzog',10,1,'Travel'),(15,'Bypass Jejunum to Ascending Colon','Leitner',8,1,'Cooking'),(16,'Replace R Hip Jt','Anger',8,1,'History'),(17,'Bypass Accessory Pancreatic Duct to Sm Int','Kleinmann',8,1,'Dystopian'),(18,'Drainage of Skull','Bülow',2,1,'Cooking'),(19,'Excision of Intracranial Vein','Lemm',8,1,'Cooking'),(20,'Extirpation of Matter from Left Kidney','össler',10,1,'History'),(21,'Bypass R Axilla Art to Low Arm Vein w Nonaut Sub','Trübner',1,1,'Mystery'),(22,'Supplement Lumbosacral Disc with Nonaut Sub','Kleist',6,1,'Scientific'),(23,'Fusion 2-7 T Jt w Intbd Fus Dev','chön',7,1,'Mystery'),(24,'Removal of Drain Dev from Tracheobronc Tree','Angst',4,1,'Thriller'),(25,'Fragmentation in Stomach','Burgdorf',1,1,'Thriller'),(26,'Bypass R Subclav Art to Bi Up Arm Art w Autol Art','Appel',10,1,'Thriller'),(27,'Restrict L Hepatic Duct w Intralum Dev','euenburg',6,1,'Adventure'),(28,'Removal of Synthetic Substitute from Lum Disc','Bürger',7,1,'Thriller'),(29,'Repair Chest Wall','otmann',10,1,'Adventure'),(30,'Bypass L Radial Art to Low Arm Vein w Autol Vn','Ude',9,1,'History'),(31,'Excision of Sacrum','chönberg',3,1,'Humor'),(32,'Removal of Monitoring Device from Cereb Vent','Lengefeld',1,1,'Scientific'),(33,'Abortion of Products of Conception','eumann',2,1,'Cooking'),(34,'Bypass R Kidney Pelvis to Cutan w Nonaut Sub','Arnold',1,1,'Dystopian'),(35,'Supplement Left Main Bronchus with Synth Sub','otschield',3,1,'Fantasy'),(36,'Insert Intspin Prcs Stabl Dev in C-thor Jt','Fries',11,1,'Adventure'),(37,'Supplement Left Knee Joint with Liner','Burkhard',4,1,'Dystopian'),(38,'Bypass L Ext Iliac Vein to Low Vein w Autol Vn','Klemperer',2,1,'Dystopian'),(39,'Destruction of Pituitary Gland','euner',4,1,'Horror'),(40,'Drainage of Accessory Pancreatic Duct','Assmann',8,1,'History'),(41,'Insert Intspin Prcs Stabl Dev in T-lum Jt','Uhlig',3,1,'Adventure'),(42,'Destruction of Right Lower Lung Lobe','Hess',6,1,'Thriller'),(43,'Bypass L Axilla Art to R Extracran Art w Nonaut Su','Lenz',10,1,'Fantasy'),(44,'Bypass Left Femoral Artery to Peroneal Artery','Frisch',2,1,'Cooking'),(45,'Bypass 2 Cor Art from Thor Art','Hesse',1,1,'Cooking'),(46,'Fusion >7 T Jt w Nonaut Sub','Dahrendorf',11,1,'Adventure'),(47,'Excision of Thoracic Sympathetic Nerve','Auerbach',10,1,'Scientific'),(48,'Detachment at Right Foot','Fuchs',11,1,'Dystopian'),(49,'Excision of Right Middle Lung Lobe','üdiger',3,1,'History'),(50,'Drainage of Right Lower Lung Lobe','Heuer',10,1,'Adventure');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashlogininfo`
--

DROP TABLE IF EXISTS `hashlogininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashlogininfo` (
  `LoginID` int NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `login` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashlogininfo`
--

LOCK TABLES `hashlogininfo` WRITE;
/*!40000 ALTER TABLE `hashlogininfo` DISABLE KEYS */;
INSERT INTO `hashlogininfo` VALUES (1,'Ao+PEM7gpDaTdy6kR+Jq9Q==','Acker7'),(2,'rWyxwCj9JuvkiVBrEcsnmA==','Rodolfo36'),(3,'NPG8/GR8+ikx9bHnjYAR0g==','Leigh6'),(4,'Ye+JLwo83m2q3D/b26LYSQ==','Alaniz9'),(5,'pGw7VPLJhxzYHa96kySZwA==','Rebecca1983'),(6,'hCM2EzTU8GhraouigYtcCA==','Avery1956'),(7,'58c7jlmY9lgw6miwk6DaiA==','Angel1992'),(8,'sHQASRZDPuTeB2B6yUcRxg==','Adler762'),(9,'5n9+sW+T+pWb0M1Adet0qQ==','Tania597'),(10,'iduT4Daa5J4Tb8hmDqAM2Q==','Annamaria2005'),(11,'BeK19PPoM28am73prVysgg==','Lyons2007'),(12,'5x+pY/yKtK3ojo5aeOy2Qg==','Katelin2027'),(13,'w1YecaD0yE5VhDbQygcdJw==','Edward1982'),(14,'S5Ga9x8tIBNKVX38BelGaw==','Mac2024'),(15,'eofuhqyWZj5eL2OAlFuLxA==','Charlette2012'),(16,'Gi8CNnmsUmjIG2x5nBS8Hg==','Rufus845'),(17,'o67WdUIQD5TFRTR/KE9h8g==','Clary2024'),(18,'IJEEMwd4/JVYzWPFH2IF1Q==','Lawrence8'),(19,'RHXzq4j7a0nxZFdph+hbng==','Dan4'),(20,'nHSSrUwZUd0aNFPgEJTwNA==','Antony98'),(21,'jo21msGjRKG2abQ39NheqA==','Garret2012'),(22,'zRB12Eil4BQr07XWZyYEHA==','Shea3'),(23,'BtSWMsncm8tirq75lhK6aw==','Albertine968'),(24,'kEMX3V2s3V0Z3vcYZkKa+w==','Crysta621'),(25,'7+OaRfUeUq+/ZjShIsgC0Q==','Crocker2021'),(26,'Dq9qk0yNTRZgRD0whuzy+Q==','Alarcon257'),(27,'Bvcnvv0EHmiaCMQWDtY0bQ==','Abram1'),(28,'qr+0y1kXqrKBnsAppYglbA==','Floria291'),(29,'i0Pg5skKOKcdz9bjHxHDEg==','Marcelle62'),(30,'HkZCWPm1hCHiz+/6nv1HjA==','Garland5'),(31,'A5OPQBdL/bsScJaiSn0uxA==','Norberto665'),(32,'qp4iBtTHUi+Ei6znr789gQ==','Keck1972'),(33,'i0Pg5skKOKcdz9bjHxHDEg==','Dalia2024'),(34,'jUU2KCKrk8MnimeYga5+CQ==','Cora2009'),(35,'kgLvk1vYMGlCwYLAVjVNPA==','Allen1984'),(36,'Bvcnvv0EHmiaCMQWDtY0bQ==','Marhta5'),(37,'Id8jhGybmFVz6mPts3zdkg==','Tomas2002'),(38,'57nNuPPmHsaVsYD4gBLoLw==','Julio1986'),(39,'OO11z7fAUMKFixKYUARogQ==','Perry166'),(40,'dkBlHXt2lxL81/pyQLcbtg==','Maryellen126'),(41,'UwoIpQe3XCnMLzzhV+NYUw==','Adalberto972'),(42,'/4EHLH18Wy2PPCtbpy3T5w==','Carmelo1971'),(43,'i0Pg5skKOKcdz9bjHxHDEg==','Kati61'),(44,'gQT0Hy85bNgBZgLaKtkKaA==','Hooker2016'),(45,'BnHb8BgS1WoYDV/PPgyiAw==','Kellie7'),(46,'4TCQYB1SGrD/4qy3M7QSAA==','Valdes5'),(47,'wPGaprSh9rJ75U/YQqO3Sw==','Louise368'),(48,'7BaBwcMcsOmAgyRfJtCeow==','Elbert1966'),(49,'+7+YnpBH45PH8GAMd3Fm/g==','Adan97'),(50,'dBDWL46eVObd0F6Ws86IEw==','Mccann2018');
/*!40000 ALTER TABLE `hashlogininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader`
--

DROP TABLE IF EXISTS `reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reader` (
  `ReaderID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PhoneNum` int DEFAULT NULL,
  PRIMARY KEY (`ReaderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader`
--

LOCK TABLES `reader` WRITE;
/*!40000 ALTER TABLE `reader` DISABLE KEYS */;
INSERT INTO `reader` VALUES (1,'Norris Calderon','NorrisCalderon@example.com',311707705),(2,'Aileen Pitts','TaggartY@example.com',957474254),(3,'Alaine Hickey','JoeannPHuang@example.com',212612073),(4,'Trey Christopher','Ada_Anglin6@nowhere.com',323831270),(5,'Monroe Gatewood','LoydBranham258@example.com',622264201),(6,'Adolfo Parks','oytxgpgm.ebekzhq@example.com',413477282),(7,'Waltraud Lerma','SamuelGunn@example.com',587627093),(8,'Clair Montes','Burgos@nowhere.com',194143734),(9,'Lyndsay Biggs','Moreno@nowhere.com',662638770),(10,'Candice Houser','GerryBarrow@example.com',683728810),(11,'Buena Abreu','tsredn9393@example.com',609386608),(12,'Kourtney Flood','Iliana.Acevedo52@example.com',507653462),(13,'Minta Caruso','FlorencioF_Marlow7@nowhere.com',136325822),(14,'Hailey Cardwell','Enoch_Tillery@nowhere.com',148951686),(15,'Bonita Draper','MorrisAbraham@example.com',957040587),(16,'Tawna Abel','DinoJaeger742@example.com',501035876),(17,'Carylon Mintz','Rigby@example.com',963492040),(18,'Gale Maldonado','Houser@example.com',107235576),(19,'Alana Means','AdanHuerta523@example.com',640815066),(20,'Allan Whittaker','CharlieNoriega688@example.com',863450419),(21,'Verlie Burnside','Abrams@example.com',956583075),(22,'Victor Tejeda','fazsmgzr.vbbx@example.com',92549843),(23,'Addie Jacobsen','Cota424@example.com',739178350),(24,'Andrew Quinonez','kqavbr3100@example.com',25621405),(25,'Luanne Jenkins','Brant.Abreu@example.com',187099710),(26,'Scotty Kinney','sneygl8904@example.com',41172145),(27,'Venice Steffen','stnhpti6@nowhere.com',449011151),(28,'Tanna Moreno','Fortner@nowhere.com',567097498),(29,'Felicidad Lentz','Mccue@example.com',417984223),(30,'Adalberto Bishop','LeighP_Redding7@example.com',397539967),(31,'Cristy Andre','Montoya@nowhere.com',855349426),(32,'Josef Abrams','Abney@nowhere.com',517620136),(33,'Scarlett Dugger','Zack_Mcnair199@example.com',137355767),(34,'Lala Bachman','mlocd761@example.com',374481020),(35,'Duane Alaniz','Slone@nowhere.com',923472254),(36,'Shirlee Healy','Mac_Amaya79@nowhere.com',776718372),(37,'Monroe Hamblin','Roush@example.com',426687173),(38,'Velva Harder','Acosta@example.com',817030308),(39,'Kathie Bunn','Williford893@example.com',488232510),(40,'Latosha Covey','AbernathyF@nowhere.com',685862914),(41,'Tommye Allman','Baugh@example.com',576220978),(42,'Florentino Cranford','Sharpe26@example.com',816949334),(43,'Emilio Burnside','MichalEdmond@example.com',761780539),(44,'Winford Milner','Perryman455@nowhere.com',213720865),(45,'Andres Soria','vbzbfpb0034@nowhere.com',23710611),(46,'Gale Heffner','Aguilera912@nowhere.com',829293150),(47,'Myles Gatewood','Forrest718@nowhere.com',504400919),(48,'Adalberto Thurston','Drew_Brennan3@nowhere.com',788140693),(49,'Maddie Abraham','Stiltner@example.com',742648354),(50,'Barry Allred','Rock@example.com',188553273);
/*!40000 ALTER TABLE `reader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_list`
--

DROP TABLE IF EXISTS `rental_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_list` (
  `RentalID` int NOT NULL,
  `Date` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `BookID` int DEFAULT NULL,
  `ReaderID` int DEFAULT NULL,
  PRIMARY KEY (`RentalID`),
  KEY `BookID_idx` (`BookID`),
  KEY `ReaderID_idx` (`ReaderID`),
  CONSTRAINT `BookID` FOREIGN KEY (`BookID`) REFERENCES `books` (`BooksID`),
  CONSTRAINT `ReaderID` FOREIGN KEY (`ReaderID`) REFERENCES `reader` (`ReaderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_list`
--

LOCK TABLES `rental_list` WRITE;
/*!40000 ALTER TABLE `rental_list` DISABLE KEYS */;
INSERT INTO `rental_list` VALUES (1,'2020-01-08','2020-05-12',NULL,NULL),(2,'2020-04-03','2020-02-05',NULL,NULL),(3,'2020-03-23','2020-06-05',NULL,NULL),(4,'2020-01-15','2020-06-18',NULL,NULL),(5,'2020-03-29','2020-02-23',NULL,NULL),(6,'2020-04-11','2020-02-16',NULL,NULL),(7,'2020-03-27','2020-04-13',NULL,NULL),(8,'2020-04-11','2020-04-11',NULL,NULL),(9,'2020-02-10','2020-04-16',NULL,NULL),(10,'2020-01-01','2020-04-30',NULL,NULL),(11,'2020-01-03','2020-04-23',NULL,NULL),(12,'2020-01-16','2020-04-16',NULL,NULL),(13,'2020-03-03','2020-04-17',NULL,NULL),(14,'2020-04-20','2020-05-12',NULL,NULL),(15,'2020-03-19','2020-03-20',NULL,NULL),(16,'2020-03-07','2020-05-28',NULL,NULL),(17,'2020-04-03','2020-02-11',NULL,NULL),(18,'2020-02-29','2020-03-21',NULL,NULL),(19,'2020-02-10','2020-06-18',NULL,NULL),(20,'2020-01-19','2020-06-04',NULL,NULL),(21,'2020-03-14','2020-01-09',NULL,NULL),(22,'2020-03-21','2020-03-31',NULL,NULL),(23,'2020-03-03','2020-01-02',NULL,NULL),(24,'2020-02-17','2020-01-01',NULL,NULL),(25,'2020-01-06','2020-03-05',NULL,NULL),(26,'2020-02-19','2020-01-03',NULL,NULL),(27,'2020-03-09','2020-03-02',NULL,NULL),(28,'2020-01-03','2020-03-06',NULL,NULL),(29,'2020-02-25','2020-03-14',NULL,NULL),(30,'2020-02-23','2020-02-11',NULL,NULL),(31,'2020-03-24','2020-05-27',NULL,NULL),(32,'2020-01-16','2020-03-30',NULL,NULL),(33,'2020-03-13','2020-05-15',NULL,NULL),(34,'2020-02-14','2020-05-09',NULL,NULL),(35,'2020-03-14','2020-02-15',NULL,NULL),(36,'2020-03-28','2020-01-09',NULL,NULL),(37,'2020-03-24','2020-02-23',NULL,NULL),(38,'2020-02-24','2020-05-16',NULL,NULL),(39,'2020-03-19','2020-04-24',NULL,NULL),(40,'2020-04-03','2020-01-09',NULL,NULL),(41,'2020-01-27','2020-03-26',NULL,NULL),(42,'2020-03-09','2020-06-19',NULL,NULL),(43,'2020-04-18','2020-02-05',NULL,NULL),(44,'2020-02-27','2020-04-02',NULL,NULL),(45,'2020-02-13','2020-03-06',NULL,NULL),(46,'2020-04-04','2020-01-22',NULL,NULL),(47,'2020-01-06','2020-04-16',NULL,NULL),(48,'2020-02-01','2020-06-17',NULL,NULL),(49,'2020-01-28','2020-05-07',NULL,NULL),(50,'2020-02-23','2020-04-30',NULL,NULL);
/*!40000 ALTER TABLE `rental_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-20 18:21:16
