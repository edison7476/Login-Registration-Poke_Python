-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: poke
-- ------------------------------------------------------
-- Server version	5.5.41-log

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
-- Table structure for table `pokes`
--

DROP TABLE IF EXISTS `pokes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poker_id` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pokes_users_idx` (`user_id`),
  CONSTRAINT `fk_pokes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokes`
--

LOCK TABLES `pokes` WRITE;
/*!40000 ALTER TABLE `pokes` DISABLE KEYS */;
INSERT INTO `pokes` VALUES (27,'5','2016-06-02 17:37:52',NULL,4),(28,'5','2016-06-02 17:37:54',NULL,4),(29,'4','2016-06-02 17:44:27',NULL,5),(30,'4','2016-06-02 17:44:44',NULL,5),(31,'4','2016-06-02 17:44:44',NULL,5),(32,'4','2016-06-02 17:44:45',NULL,5),(33,'4','2016-06-02 17:44:46',NULL,5),(34,'6','2016-06-02 17:45:09',NULL,4),(35,'6','2016-06-02 17:45:11',NULL,5),(36,'4','2016-06-02 17:45:45',NULL,6),(37,'4','2016-06-02 18:02:34',NULL,5),(38,'4','2016-06-02 18:02:36',NULL,6),(39,'4','2016-06-02 18:03:23',NULL,6),(40,'4','2016-06-02 18:03:27',NULL,6),(41,'4','2016-06-02 18:03:34',NULL,5),(42,'6','2016-06-02 18:04:06',NULL,4),(43,'6','2016-06-02 18:04:07',NULL,4),(44,'6','2016-06-02 18:04:08',NULL,4),(45,'5','2016-06-02 18:04:21',NULL,6),(46,'5','2016-06-02 18:04:22',NULL,6),(47,'5','2016-06-02 18:04:23',NULL,6),(48,'7','2016-06-02 18:05:09',NULL,4),(49,'7','2016-06-02 18:05:11',NULL,5),(50,'7','2016-06-02 18:05:14',NULL,6),(51,'4','2016-06-02 18:10:02',NULL,7),(52,'4','2016-06-02 18:10:03',NULL,7),(53,'7','2016-06-02 18:10:47',NULL,4),(54,'7','2016-06-02 18:10:48',NULL,5),(55,'7','2016-06-02 18:10:49',NULL,6);
/*!40000 ALTER TABLE `pokes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `aliad` varchar(45) DEFAULT NULL,
  `email` varchar(115) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Edison','ed','edison7476@hotmail.com','$2b$12$tSm3TDmtOjOFmQiaLqxPIewXl9s4sNiK179qLTLthJ3vR6B8fNQPK','1985-05-31','2016-06-02 17:37:23',NULL),(5,'sharon','sh','sharon7476@hotmail.com','$2b$12$1NcJSvJ/gT8kzmghhfG2vOHlKAG2pDqWP9CaEGv9IEokwNSYePaGK','1991-03-29','2016-06-02 17:37:50',NULL),(6,'joy','joy','joy7476@hotmail.com','$2b$12$1T4zz7wbLcYJQ8aZDnQ0POhF.zW3rXgVIFxE.lHDLLqaapjvu7wu6','1991-01-16','2016-06-02 17:45:05',NULL),(7,'mike','mike','mike7476@hotmail.com','$2b$12$/rrs9a1.ubUZx2D3AkUWDO9Dm4SKf74TnK2AqzGP45i.YeHU/jk/e','1991-01-01','2016-06-02 18:05:05',NULL);
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

-- Dump completed on 2016-06-02 18:16:05
