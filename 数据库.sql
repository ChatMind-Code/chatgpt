-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: chatgpt
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `chat_admin`
--

DROP TABLE IF EXISTS `chat_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL DEFAULT '',
  `pass` varchar(100) NOT NULL DEFAULT '',
  `wzmc` varchar(100) NOT NULL DEFAULT '',
  `zdms` varchar(100) NOT NULL DEFAULT '',
  `yzfid` varchar(100) NOT NULL DEFAULT '',
  `yzfmy` varchar(100) NOT NULL DEFAULT '',
  `yzfym` varchar(100) NOT NULL DEFAULT '',
  `ddmc` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_admin`
--

LOCK TABLES `chat_admin` WRITE;
/*!40000 ALTER TABLE `chat_admin` DISABLE KEYS */;
INSERT INTO `chat_admin` VALUES (1,'admin','12345678','Chatgpt中文版','Chatgpt中文版','易支付ID','易支付密钥','易支付域名','Chatgpt次数');
/*!40000 ALTER TABLE `chat_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_ip`
--

DROP TABLE IF EXISTS `chat_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_ip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `time` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_ip`
--

LOCK TABLES `chat_ip` WRITE;
/*!40000 ALTER TABLE `chat_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_key`
--

DROP TABLE IF EXISTS `chat_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miyao` varchar(100) NOT NULL DEFAULT '',
  `time` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_key`
--

LOCK TABLES `chat_key` WRITE;
/*!40000 ALTER TABLE `chat_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_order`
--

DROP TABLE IF EXISTS `chat_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanhao` varchar(100) NOT NULL DEFAULT '',
  `yonghuming` varchar(100) NOT NULL DEFAULT '',
  `czdsed` varchar(100) NOT NULL DEFAULT '',
  `sfcl` int(100) DEFAULT '0',
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_order`
--

LOCK TABLES `chat_order` WRITE;
/*!40000 ALTER TABLE `chat_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_taocan`
--

DROP TABLE IF EXISTS `chat_taocan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_taocan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taocanjiage` varchar(100) NOT NULL DEFAULT '',
  `taocangedu` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_taocan`
--

LOCK TABLES `chat_taocan` WRITE;
/*!40000 ALTER TABLE `chat_taocan` DISABLE KEYS */;
INSERT INTO `chat_taocan` VALUES (1,'1','100'),(2,'19.9','250'),(3,'39.9','500'),(4,'50','1500'),(5,'120','10000'),(6,'240','999999999');
/*!40000 ALTER TABLE `chat_taocan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_tiwen`
--

DROP TABLE IF EXISTS `chat_tiwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_tiwen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tiwen` longtext NOT NULL,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `time` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_tiwen`
--

LOCK TABLES `chat_tiwen` WRITE;
/*!40000 ALTER TABLE `chat_tiwen` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_tiwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_yonghu`
--

DROP TABLE IF EXISTS `chat_yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yhmc` varchar(100) NOT NULL DEFAULT '',
  `yhyx` varchar(100) NOT NULL DEFAULT '',
  `yhmm` varchar(100) NOT NULL DEFAULT '',
  `time` datetime NOT NULL,
  `sycs` varchar(100) NOT NULL DEFAULT '0',
  `vip` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_yonghu`
--

LOCK TABLES `chat_yonghu` WRITE;
/*!40000 ALTER TABLE `chat_yonghu` DISABLE KEYS */;
INSERT INTO `chat_yonghu` VALUES (1,'admin','10001@qq.com','123456','2023-04-15 11:10:00','9',''),(3,'123456','123456@qq.com','123456','2023-04-16 08:10:02','0','');
/*!40000 ALTER TABLE `chat_yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'chatgpt'
--

--
-- Dumping routines for database 'chatgpt'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-16  8:50:46
