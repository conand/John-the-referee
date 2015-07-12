-- MySQL dump 10.13  Distrib 5.6.16, for Linux (x86_64)
--
-- Host: localhost    Database: johnreferee
-- ------------------------------------------------------
-- Server version	5.6.16

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

-- Create DB
DROP DATABASE IF EXISTS `johnreferee`;
CREATE DATABASE `johnreferee` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE `johnreferee`;

--
-- Table structure for table `uniforms`
--

DROP TABLE IF EXISTS `uniforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniforms`
--

LOCK TABLES `uniforms` WRITE;
/*!40000 ALTER TABLE `uniforms` DISABLE KEYS */;
INSERT INTO `uniforms` VALUES (1,'Froxy','This professional ref jersey wicks away sweat, keeping you cool and dry while running the field.',1),(2,'Jamal','This professional ref jersey wicks away sweat, keeping you cool and dry while running the field.',1),(3,'Povino','ClimaLite jersey with two front pockets. Strategically-placed mesh at back for ultimate comfort. 100% polyester.',1),(4,'Shaman','100% polyester jersey with open rib-knit collar and cuffs, two flap pockets on chest, and Velcro badge.',1),(5,'Sanji','100% polyester jersey with open rib-knit collar and cuffs, two flap pockets on chest, and Velcro badge.',1),(6,'Roronoa','100% polyester jersey with open rib-knit collar and cuffs, two flap pockets on chest, and Velcro badge.',1),(7,'Doffy','This professional ref jersey wicks away sweat, keeping you cool and dry while running the field.',1),(8,'Nami','Super comfortable jersey with two front pockets. Strategically-placed mesh at back. 100% polyester.',1),(9,'John','flag{Damn_John!_CBC_1s_not_the_best_s0lution_in_this_c4se}',0),(10,'Captaintsubasa','ClimaLite jersey with two front pockets. Strategically-placed mesh at back for ultimate comfort. 100% polyester.',1);
/*!40000 ALTER TABLE `uniforms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-24 19:27:09
