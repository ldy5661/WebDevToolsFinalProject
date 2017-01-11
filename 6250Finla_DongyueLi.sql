-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: 6250final
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contactstable`
--

DROP TABLE IF EXISTS `contactstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactstable` (
  `ContactID` bigint(20) NOT NULL,
  `Comments` varchar(255) DEFAULT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `DateAdded` varchar(255) DEFAULT NULL,
  `UserName` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ContactID`),
  KEY `FK64c4fr4wb2bxkmnifdrawom3a` (`UserName`),
  CONSTRAINT `FK64c4fr4wb2bxkmnifdrawom3a` FOREIGN KEY (`UserName`) REFERENCES `userstable` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactstable`
--

LOCK TABLES `contactstable` WRITE;
/*!40000 ALTER TABLE `contactstable` DISABLE KEYS */;
INSERT INTO `contactstable` VALUES (17,'this is dongyue5','Dongyue5','2016-04-26 01:07:10',2),(18,'this is jenny','jenny','2016-04-26 01:08:46',2),(19,'bowei','wangbowei','2016-04-26 01:14:49',2),(20,'this is dongyue2','Dongyue2','2016-04-26 01:21:58',2),(26,'this is marry','marry','2016-04-26 01:25:51',2),(27,'this is linda','linda','2016-04-26 01:26:10',2),(29,'this is tiffy','tiffy','2016-04-26 01:27:56',2),(45,'safddsaf','yusuf1','2016-04-26 01:35:10',2),(46,'fdsafasfasf','yusuf2','2016-04-26 01:35:17',2),(50,'dsfadfasdf','yusuf3','2016-04-26 01:37:31',2),(51,'sdfasfdsaf','yusuf4','2016-04-26 01:37:42',2),(52,'dsfafdsaf','yusuf5','2016-04-26 01:37:54',2);
/*!40000 ALTER TABLE `contactstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (53),(53),(53);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagestable`
--

DROP TABLE IF EXISTS `messagestable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagestable` (
  `MessageID` bigint(20) NOT NULL,
  `FromUser` varchar(255) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  `MessageDate` varchar(255) DEFAULT NULL,
  `UserName` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`MessageID`),
  KEY `FKp23jfdjpkude68b76yrg1n20t` (`UserName`),
  CONSTRAINT `FKp23jfdjpkude68b76yrg1n20t` FOREIGN KEY (`UserName`) REFERENCES `userstable` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagestable`
--

LOCK TABLES `messagestable` WRITE;
/*!40000 ALTER TABLE `messagestable` DISABLE KEYS */;
INSERT INTO `messagestable` VALUES (21,'Dongyue1','hi','2016-04-26 01:23:19',3),(22,'Dongyue1','hello','2016-04-26 01:23:29',5),(23,'Dongyue1','good morning','2016-04-26 01:23:42',6),(30,'Dongyue1','dsfafd','2016-04-26 01:29:29',3),(31,'Dongyue1','dsafafda','2016-04-26 01:29:34',3),(32,'Dongyue1','nothing','2016-04-26 01:29:41',3),(33,'Dongyue1','nice day','2016-04-26 01:29:49',3),(34,'Dongyue1','hello again','2016-04-26 01:30:00',3),(35,'Dongyue1','well done','2016-04-26 01:30:12',3),(36,'Dongyue1','holiday','2016-04-26 01:30:23',3),(37,'Dongyue1','funny','2016-04-26 01:30:34',3),(38,'Dongyue1','beautiful','2016-04-26 01:30:42',3),(39,'Dongyue1','Is Cruz-Kasich alliance doomed','2016-04-26 01:31:16',3),(40,'Dongyue1','Autopsies completed in shooting massacre that killed 8 Ohio relatives','2016-04-26 01:32:12',3),(41,'jenny','Hello Dongyue','2016-04-26 01:32:51',2);
/*!40000 ALTER TABLE `messagestable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstable`
--

DROP TABLE IF EXISTS `userstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstable` (
  `UserID` bigint(20) NOT NULL,
  `AboutMe1` varchar(255) DEFAULT NULL,
  `AboutMe2` varchar(255) DEFAULT NULL,
  `ActivityLevel` varchar(255) DEFAULT NULL,
  `AppearanceImportance` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `BodyType` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Cuisine` varchar(255) DEFAULT NULL,
  `Custody` varchar(255) DEFAULT NULL,
  `DOBday` int(11) DEFAULT NULL,
  `DOBmonth` int(11) DEFAULT NULL,
  `DOByear` int(11) DEFAULT NULL,
  `DrinkingHabits` varchar(255) DEFAULT NULL,
  `EducationLeve` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `EntertainmentLocation` varchar(255) DEFAULT NULL,
  `Ethnicity` varchar(255) DEFAULT NULL,
  `EyeColor` varchar(255) DEFAULT NULL,
  `FileLocation` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `GrewUpIn` varchar(255) DEFAULT NULL,
  `HairColor` varchar(255) DEFAULT NULL,
  `Headline` varchar(255) DEFAULT NULL,
  `Height` varchar(255) DEFAULT NULL,
  `IdealRelationshipEssay` varchar(255) DEFAULT NULL,
  `IncomeLevel` varchar(255) DEFAULT NULL,
  `IntelligenceImportance` varchar(255) DEFAULT NULL,
  `Languages` varchar(255) DEFAULT NULL,
  `LearnFromThePastEssay` varchar(255) DEFAULT NULL,
  `LeisureActivity` varchar(255) DEFAULT NULL,
  `MaritalStatus` varchar(255) DEFAULT NULL,
  `MoreChildrenFlag` varchar(255) DEFAULT NULL,
  `Music` varchar(255) DEFAULT NULL,
  `Occupation` varchar(255) DEFAULT NULL,
  `OccupationDescription` varchar(255) DEFAULT NULL,
  `PerfectFirstDateEssay` varchar(255) DEFAULT NULL,
  `PerfectMatchEssay` varchar(255) DEFAULT NULL,
  `PersonalityTrait` varchar(255) DEFAULT NULL,
  `PhysicalActivity` varchar(255) DEFAULT NULL,
  `PoliticalOrientation` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `Reading` varchar(255) DEFAULT NULL,
  `RelationshipType` varchar(255) DEFAULT NULL,
  `Religion` varchar(255) DEFAULT NULL,
  `RelocateFlag` varchar(255) DEFAULT NULL,
  `SeekingGender` varchar(255) DEFAULT NULL,
  `SmokingHabits` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `StudiesEmphasis` varchar(255) DEFAULT NULL,
  `UserName` varchar(25) NOT NULL,
  `UserPassword` varchar(50) NOT NULL,
  `Weight` double DEFAULT NULL,
  `ZodiacSign` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstable`
--

LOCK TABLES `userstable` WRITE;
/*!40000 ALTER TABLE `userstable` DISABLE KEYS */;
INSERT INTO `userstable` VALUES (1,'haha','haha','Selected activities','Low Importance','admin','LeanSlender','Malden','USA','American','They are far away',1,1,1986,'Socially','High School','dongyueli1992@gmail.com',1,'Art Galleries','Asian','Blue','1461645843817lady1.jpg','Male','good','Brown','abc','134','good','Under 15000','Not important','Chinese,English','good','Antiquing','Divorced','No','Big BandSwing','AdministrativeHuman Resources','good','good day','good man','AdventurousWildSpontaneous','Biking','Extreme Liberal','02148','Fiction','Friend,Marriage','Anglican','No','Male','Occasional Smoker','Massachusetts','abc','Dongyue','65bb86549756830caa529e032f829eb2',36288,'Aquarius'),(2,'dfsadsag','fdsaasfasf','Selected activities','Medium Importance','user','AthleticFit','Malden','USA','Korean','I have no kids',1,1,1967,'Never','Some College','dongyueli1992@gmail.com',1,'Libraries','Asian','Blue Green','1461646034294lady1.jpg','Male','dsfafdas','Blonde','dsaf','150','dsfafaf','Under 15000','Medium Importance','Arabic,English','afdsfdasf','PaintingDrawing','Separated','No','Latin','AutomotiveAviationTransportation','asdfafdsa','dsafafdasf','dafsafdsaf','High Maintenance','Horseback Riding','Liberal','02148','Poetry','Friend','Atheist','Yes','Male','Non-Smoker','Massachusetts','adsfafdsaf','Dongyue1','65bb86549756830caa529e032f829eb2',39010,'Capricorn'),(3,'dfsafdsaf','agrdgv','Selected activities','Medium Importance','user','A Few Extra Pounds','Malden','USA','ChineseDim Sum','Sometimes',1,1,1986,'Socially','High School','dongyueli1992@gmail.com',1,'Movies','CaucasianWhite','Blue Green','1461646169144lady3.jpg','Female','asdfasdf','Brown','fdsafa','147','argagad','Under 15000','Medium Importance','Bengali,English','dgagdsa','Antiquing','Divorced','No','Jazz','AutomotiveAviationTransportation','dsfafda','fadsfdafes','dsafdsaf','Compulsive','JoggingRunning','Extreme Liberal','02148','Magazines','A Date','Anglican','No','Male','Occasional Smoker','Massachusetts','fsdfa','jenny','4b4891f0e8dab16aad2d618045ee9add',39917,'Cancer'),(4,'dasfdafd','','','','user','','Malden','USA',NULL,'',1,1,1992,'','','dongyueli1992@gmail.com',1,NULL,'','','1461646323939lady4.jpg','Female','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','mabiying','65bb86549756830caa529e032f829eb2',NULL,''),(5,'asfdfsafsf','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','1461646362576lady3.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','wangbowei','65bb86549756830caa529e032f829eb2',NULL,''),(6,'gagdsav','','','','user','','Malden','USA',NULL,'',1,1,1958,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Female','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Female','','Massachusetts','','Dongyue2','65bb86549756830caa529e032f829eb2',NULL,''),(7,'adfadsfa','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','1461646453995lady5.jpg','Female','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Female','','Massachusetts','','Dongyue3','65bb86549756830caa529e032f829eb2',NULL,''),(8,'fsdafdasf','','','','user','','Malden','USA',NULL,'',1,1,1990,'','','dongyueli1992@gmail.com',1,NULL,'','','1461646499285lady3.jpg','Female','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,'BaseballSoftball','','02148',NULL,NULL,'','No','Male','','Massachusetts','','Dongyue4','65bb86549756830caa529e032f829eb2',NULL,''),(9,'dsafdsaf','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Female','','Massachusetts','','Dongyue5','65bb86549756830caa529e032f829eb2',NULL,''),(10,'dgdsgadag','','','','user','','Malden','USA',NULL,'',1,1,1980,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','Dongyue6','65bb86549756830caa529e032f829eb2',NULL,''),(11,'dsfads','','','','user','','Boston','USA',NULL,'',1,1,1988,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02119',NULL,NULL,'','No','Female','','Massachusetts','','wangbowei1','65bb86549756830caa529e032f829eb2',NULL,''),(12,'dsafdsaf','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Female','','Massachusetts','','bob','65bb86549756830caa529e032f829eb2',NULL,''),(13,'gdagsdga','','','','user','','Boston','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02119',NULL,NULL,'','No','Male','','NewYork','','wangbowei11','65bb86549756830caa529e032f829eb2',NULL,''),(24,'','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','linda','65bb86549756830caa529e032f829eb2',NULL,''),(25,'','','','','user','','Boston','USA',NULL,'',1,1,1989,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','marry','65bb86549756830caa529e032f829eb2',NULL,''),(28,'','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','tiffy','65bb86549756830caa529e032f829eb2',NULL,''),(42,'','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','yusuf','65bb86549756830caa529e032f829eb2',NULL,''),(43,'','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','yusuf1','65bb86549756830caa529e032f829eb2',NULL,''),(44,'dsfa','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','yusuf2','65bb86549756830caa529e032f829eb2',NULL,''),(47,'dsfaf','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','yusuf3','65bb86549756830caa529e032f829eb2',NULL,''),(48,'dasff','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','yusuf4','65bb86549756830caa529e032f829eb2',NULL,''),(49,'','','','','user','','Malden','USA',NULL,'',1,1,1986,'','','dongyueli1992@gmail.com',1,NULL,'','','resources/images/nopicture.jpg','Male','','','','','','','','English','',NULL,'','No',NULL,'','','','',NULL,NULL,'','02148',NULL,NULL,'','No','Male','','Massachusetts','','yusuf5','65bb86549756830caa529e032f829eb2',NULL,'');
/*!40000 ALTER TABLE `userstable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-26  1:39:45
