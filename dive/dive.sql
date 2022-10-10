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
-- Table structure for table `dive_users`
--

DROP TABLE IF EXISTS `dive_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dive_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dive_users`
--

LOCK TABLES `dive_users` WRITE;
/*!40000 ALTER TABLE `dive_users` DISABLE KEYS */;
INSERT INTO `dive_users` VALUES (1,'6789.tinik@gmail.com','$2y$10$.O9nAu319RBERunPiKMOdOfaRmOISqlXV0uXbMhfsNvV61Ql1nL42'),(2,'i.tarasevich@belvg.com','$2y$10$igF9qTPkigwYoqAT/5agiuRAtQYUdcgr4Fe8vqJJDqg5sK0H6HDNS'),(18,'admin@ledpowerstore.com','$2y$10$MrfRSYvAM33fhQoGqsosJuUtHbp1jF5x3GzFQdlXtbQ7660Ps1U8q'),(19,'suvorev@belvg.com','$2y$10$S4J7ajQmftLKSIiWudlhdOcp.sZ5S83gib5A0LIEQ21Yj8zMlr2..'),(20,'k.suvorev@belvg.co','$2y$10$o0AsnrKRtbOs.yUiGHW5.OzkncNZj4LQj499xH4e6Zxst5lsI.BQu'),(21,'89.tinik@gmail.com','$2y$10$hSVCMteL87Z7Wvs2WZP9g.SHFvZT/ro6WWlLlWl1wXMWBpk6qq1ge'),(22,'789.tinik@gmail.com','$2y$10$0b120P.ThITsU1UmEQ5Kae9nII8nj4kpbnLtUROhYQGTKzINs5jdG'),(23,'79.tinik@gmail.com','$2y$10$pcGYzveN2Qr2Tz8BpSzRYecPHcL.7MLtUZxj8A.Wuo0SpYDVWjWve'),(24,'tinik@gmail.com','$2y$10$GsJBrZMkYusRcuxk.O71vOOyOP1Br84YPupC5aUxPpeONLz6lLn3G'),(25,'6789@gmail.com','$2y$10$DeCmnN0Ecd2cI3u2rHDOnun9gKozD76C0GDcVMxNWk1FDYsKCjIXu'),(26,'689@gmail.com','$2y$10$FcUS7NGM7nTUI0hJU4LITuMdG6c3EfLNt9vsJwnKiuYhnptqIcFw6'),(27,'6w89@gmail.com','$2y$10$go.zIeZEF8jjjEJZLWR6C.b3eOd4vGJg6f1IHUaXtJE4zTbHayRmK'),(28,'6wf89@gmail.com','$2y$10$Bp4Gh8zDMOKNMfEB2tC8FeF9wNQMgi.G0d9S3hQX0u1XR.X..lcQu'),(29,'6wdf89@gmail.com','$2y$10$fp6tuKvs88ytlQoOqRc4ieyjD8PMmEfBgo0RPreZ0I0vZgZzK8Cd6'),(30,'6wd4f89@gmail.com','$2y$10$4vQ19bjiT97jpxmFJ/MKWuxIXmRePwaFcB5BBwXv56yM8GaJvfa1a'),(31,'admin@ledpowerstore.co','$2y$10$moJ70sTk59ivsRIczvs3oOAQwkkKZ7NcRlyFkPdHuGhjDEg96Id/m'),(32,'k.sdf@belvg.com','$2y$10$an7m3b6Gbmo0hnaq.XSGOeplnVRFnZd1EBzHBFqK2Jgg.RRC/yuVK'),(33,'dfsf@ledpowerstore.com','$2y$10$CeGlZVPI.adYOyQ../qG6ey2/QQuli1pWCDN/BY0fwTDIM4j6VZfy'),(34,'k.qweq@belvg.com','$2y$10$5Rf4zgWQs0p/kSEI8lDQoOQs4K0VWGwvARairjjFIzeRpX7OJVYt6'),(35,'k.qw2eq@belvg.com','$2y$10$XGvAo3MZBCe99YqMks4Fx.NgT36fqogrtbOzMrGdL/XkwzWHeiAEi'),(36,'k.suvorev@dfsf.com','$2y$10$vi5OKCfwrQODQEnxWC0GY.12rc3boXKzHWNURcYSaBf.MjUlGA0uy'),(37,'k.xdf@dfsf.com','$2y$10$J1JzQ9YjpXIMxDquAKtNg.gHKRD9c0/n4l5tGG6qY5w.CkxS3CvvK'),(40,'k.qqqq@belvg.com1','$2y$10$ylRQYJ1GS8bg9uv3OVlE.OJxvqwfD60uyhWSB9qDN70Yl0EpYzgnS'),(41,'k.ww@belvg.com','$2y$10$HFom/U.s1Lxoah/ZMpvHL.LHo5Bo.HWc3zf4fl.LGiTm5AXWWfOOu');
/*!40000 ALTER TABLE `dive_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dive_users_data`
--

DROP TABLE IF EXISTS `dive_users_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dive_users_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `work` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `vk` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `telegramm` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inst` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dive_users_data`
--

LOCK TABLES `dive_users_data` WRITE;
/*!40000 ALTER TABLE `dive_users_data` DISABLE KEYS */;
INSERT INTO `dive_users_data` VALUES (1,1,'admin','danger','6789.tinik@gmail.com','ivan','work','123123123','adressssss',NULL,NULL,NULL,NULL),(2,2,'user','warning','i.tarasevich@belvg.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,18,'user','danger','admin@ledpowerstore.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,19,'user','warning','suvorev@belvg.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,20,'user','success','k.suvorev@belvg.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,21,'user','warning','89.tinik@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,22,'user','danger','789.tinik@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,23,'user','success','79.tinik@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,24,'user','success','tinik@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,25,'user','success','6789@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,26,'user','danger','689@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,27,'user','warning','6w89@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,28,'user','success','6wf89@gmail.com',NULL,NULL,'123123',NULL,NULL,NULL,NULL,NULL),(15,29,'user','danger','6wdf89@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,30,'user','success','6wd4f89@gmail.com','standart','work','123123','adressss',NULL,'vk','tg','in'),(17,31,'user','success','admin@ledpowerstore.co','standart','work','123123','adressss',NULL,'vk','tg','in'),(18,32,'user','success','k.sdf@belvg.com','standart','work','123123','adressss',NULL,'vk','tg','in'),(19,33,'user','success','dfsf@ledpowerstore.com','temp_pdf','workasd','12312323','adressssrrr',NULL,'vk','tg','in'),(20,34,'user','success','k.qweq@belvg.com','temp_pdf','workasd','1324545','adressssrrr',NULL,'vk','','in'),(21,35,'user','success','k.qw2eq@belvg.com','temp_pdf','workasd','1324545','adressssrrr',NULL,'vk','asd','in'),(22,36,'user',NULL,'k.suvorev@dfsf.com','standartadf','workasdsdf','123123432','adressssdsd',NULL,'vksdf','tgsdfs','sdfsdf'),(23,37,'user','success','k.xdf@dfsf.com','standartadf','workasdsdf','123123432','adressssdsd','photo/1664900955logo_php8_1.svg','vksdf','tgsdfs','sdfsdf'),(26,40,'user','danger','k.qqqq@belvg.com','ggggg','gggg','ggg','gggg','photo/16651622472022-09-26_15-20.png',NULL,NULL,NULL),(27,41,'user','success','k.ww@belvg.com','www','www','www','wwww',NULL,'rrrr','rrrr','rrr');
/*!40000 ALTER TABLE `dive_users_data` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2022-10-10  5:09:33
