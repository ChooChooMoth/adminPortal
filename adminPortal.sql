-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: adminPortal
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `app_id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `app_name` char(255) DEFAULT NULL,
  `vendor_name` char(255) DEFAULT NULL,
  `licence_required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'fallout 3','steam',1),(5,'xampp','apachefriends',0);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computer_app`
--

DROP TABLE IF EXISTS `computer_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computer_app` (
  `computer_id` int(255) unsigned NOT NULL,
  `app_id` int(255) unsigned NOT NULL,
  KEY `relation_computer_id` (`computer_id`),
  KEY `relation_app_id` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer_app`
--

LOCK TABLES `computer_app` WRITE;
/*!40000 ALTER TABLE `computer_app` DISABLE KEYS */;
INSERT INTO `computer_app` VALUES (1,1),(2,5);
/*!40000 ALTER TABLE `computer_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computers`
--

DROP TABLE IF EXISTS `computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computers` (
  `computer_id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `computer_name` char(255) DEFAULT NULL,
  `ip_adress` int(255) unsigned DEFAULT NULL,
  `login` char(255) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  PRIMARY KEY (`computer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computers`
--

LOCK TABLES `computers` WRITE;
/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
INSERT INTO `computers` VALUES (1,'gamer-PC',152112,'home','111222'),(2,'stani-PC',12312,'mad','222111');
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ban_date` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '10',
  `auth_key` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Kael','$2y$13$EctLcFK6kdDeL1sA2/R6y..iQD/KpP9uq1xpfbwUsE8SFHKbJvDey',1,NULL,'2017-02-16 12:29:40',NULL,10,'sg33M2LzK4uuk0H5FEGAQTjmEmVIJ_Xf'),(4,'12','$2y$13$.NjJZustIYxuLXKPgZ63AOnX7FSrxqkESl3YDXSKX2cUUDDaQy11G',2,'','2017-02-17 10:58:47',NULL,10,'WhW7y3Kf57b0EPRsjerCaIT2yVDegc7-'),(5,'choochoo','$2y$13$PjTTACODN3UVsTR.LpOniOFGFDpdx4lVtwQBSAm8cx.sNpYEPu4um',2,'','2017-02-16 10:46:31',NULL,10,'Tc_zM6-qJe7wZBf5goRS6RCz9hqfJDvJ'),(6,'11','$2y$13$.g8WuEf4R7MYAAtEkjoCJejf7mAIo5CVmMp01oLZQGfioZ7MMUiRK',1,NULL,'2017-02-17 10:58:02',NULL,10,'RYAtud4uhj-bktRFexJUuihEsZC2KB49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-17 14:04:49
