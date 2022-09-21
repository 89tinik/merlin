-- MariaDB dump 10.19  Distrib 10.5.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: magento
-- ------------------------------------------------------
-- Server version	10.4.26-MariaDB-1:10.4.26+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (5,'uploads/1663795026download.svg'),(6,'uploads/16637950595a312cf9-d1fa-4aa5-8a90-0644e87c4d1b.jpeg'),(8,'uploads/16637961895a312cf9-d1fa-4aa5-8a90-0644e87c4d1b.jpeg'),(9,'uploads/1663796254download.svg'),(10,'uploads/1663796293download.svg'),(11,'uploads/632b8907f26bedownload.svg'),(12,'uploads/632b890cd3ca1logo_php8_1.svg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoUrl` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `banned` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'img/demo/authors/sunny.png','Sunny A.','Lead Author','UI/UX Expert','myplaneticket',0),(2,'img/demo/authors/josh.png','Jos K.','Partner & Contributor','ASP.NET Developer','atlantez',0),(3,'img/demo/authors/jovanni.png','Jovanni L.','Partner &amp; Contributor','PHP Developer','lodev09',1),(4,'img/demo/authors/roberto.png','Roberto R.','Partner &amp; Contributor','Rails Developer','sildur',1);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t13_users`
--

DROP TABLE IF EXISTS `t13_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t13_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t13_users`
--

LOCK TABLES `t13_users` WRITE;
/*!40000 ALTER TABLE `t13_users` DISABLE KEYS */;
INSERT INTO `t13_users` VALUES (1,'123','11111123'),(2,'12355','5511111123'),(3,'73','ew'),(4,'hjkhk','ewqee'),(5,'6789.tinik@gmail.com','$2y$10$sJc0hUJG7ro0cn2yTBMoOOjoaZCt6ie8m1hrqq22i8smPyKnMJehS'),(6,'tinik@gmail.com','$2y$10$YqeEJc0KeSqHnDKPPY8N6uzBQ/CYEfGqbn6LgEAx3LNgBTSQedYSu'),(7,'qw@qw.qw','$2y$10$pvljhKmmgFiERymS2reQsuhagC/DP7X3CPU6WRJ2nLnAQXaBBTWOy');
/*!40000 ALTER TABLE `t13_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text`
--

DROP TABLE IF EXISTS `text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text`
--

LOCK TABLES `text` WRITE;
/*!40000 ALTER TABLE `text` DISABLE KEYS */;
INSERT INTO `text` VALUES (1,'проверка'),(2,'Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ°'),(3,'123'),(4,'Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ°'),(5,'Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ°1'),(6,'Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ°1'),(7,'ÑƒÑƒÑƒ'),(8,'ааа'),(9,'ггг'),(10,'ййй'),(11,'ууу'),(12,'проверка213'),(13,'1234'),(14,'asd');
/*!40000 ALTER TABLE `text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mark','Otto','@mdo'),(2,'Jacob','Thornton','@fat'),(3,'Larry','the Bird','@twitter'),(4,'Larry the Bird','Bird','@twitter');
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

-- Dump completed on 2022-09-21 22:06:14
