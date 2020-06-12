CREATE DATABASE  IF NOT EXISTS `inventario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventario`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: inventario
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `box`
--

DROP TABLE IF EXISTS `box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box`
--

LOCK TABLES `box` WRITE;
/*!40000 ALTER TABLE `box` DISABLE KEYS */;
INSERT INTO `box` VALUES (1,'2020-01-01 10:22:50'),(2,'2020-01-01 10:36:28'),(3,'2020-01-02 17:41:02'),(4,'2020-01-06 14:35:02'),(5,'2020-01-09 15:24:50'),(6,'2020-01-18 11:31:10'),(7,'2020-01-21 09:09:53'),(8,'2020-01-22 16:55:17'),(9,'2020-01-24 12:45:20'),(10,'2020-01-28 18:56:27'),(11,'2020-02-02 10:17:48'),(12,'2020-02-05 16:04:57'),(13,'2020-02-08 10:53:35'),(14,'2020-02-13 16:16:07'),(15,'2020-02-15 12:26:44'),(16,'2020-02-16 17:43:45'),(17,'2020-02-20 08:54:03'),(18,'2020-02-20 09:14:03'),(19,'2020-02-20 14:46:49'),(20,'2020-02-22 13:08:28'),(21,'2020-02-28 09:45:56'),(22,'2020-02-28 13:15:36'),(23,'2020-02-28 14:11:00'),(24,'2020-02-28 17:22:09'),(25,'2020-03-05 14:07:52'),(26,'2020-03-05 15:52:16'),(27,'2020-03-10 13:33:41'),(28,'2020-03-16 17:04:13'),(29,'2020-03-17 11:22:58'),(30,'2020-03-17 16:33:34'),(31,'2020-03-22 16:23:49'),(32,'2020-03-24 17:31:07'),(33,'2020-03-27 11:17:19'),(34,'2020-04-01 17:14:08'),(35,'2020-04-02 18:54:56'),(36,'2020-04-03 16:57:48'),(37,'2020-04-04 09:59:19'),(38,'2020-04-04 15:55:49'),(39,'2020-04-05 10:53:39'),(40,'2020-04-06 15:09:36'),(41,'2020-04-07 10:49:28'),(42,'2020-04-10 09:32:58'),(43,'2020-04-10 17:20:00'),(44,'2020-04-14 16:34:44'),(45,'2020-04-18 12:05:09'),(46,'2020-04-21 16:30:53'),(47,'2020-04-22 12:23:24'),(48,'2020-04-24 08:35:49'),(49,'2020-04-27 11:47:02'),(50,'2020-05-04 09:33:43'),(51,'2020-05-06 18:56:41'),(52,'2020-05-07 10:43:01'),(53,'2020-05-10 14:05:44'),(54,'2020-05-11 17:24:04'),(55,'2020-05-16 13:20:22'),(56,'2020-05-16 13:58:30'),(57,'2020-05-18 09:25:18'),(58,'2020-05-18 17:07:34'),(59,'2020-05-20 12:01:22'),(60,'2020-05-22 10:01:59'),(61,'2020-05-27 10:39:23'),(62,'2020-05-27 15:14:29');
/*!40000 ALTER TABLE `box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,NULL,'Verdura',NULL,'2017-10-25 20:31:06'),(2,NULL,'Fruta',NULL,'2020-03-01 21:03:43');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `short` (`short`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'title','Titulo del Sistema',2,'Sistema de Inventario'),(2,'use_image_product','Utilizar Imagenes en los productos',1,'0'),(3,'active_clients','Activar clientes',1,'0'),(4,'active_providers','Activar proveedores',1,'0'),(5,'active_categories','Activar categorias',1,'0'),(6,'active_reports_word','Activar reportes en Word',1,'0'),(7,'active_reports_excel','Activar reportes en Excel',1,'0'),(8,'active_reports_pdf','Activar reportes en PDF',1,'0');
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `q` float DEFAULT NULL,
  `operation_type_id` int(11) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `operation_type_id` (`operation_type_id`),
  KEY `sell_id` (`sell_id`),
  CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_type` (`id`),
  CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`sell_id`) REFERENCES `sell` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES (1,3,20,1,1,'2020-01-01 10:22:50'),(2,10,25,1,2,'2020-01-01 10:36:28'),(3,27,12,1,3,'2020-01-02 17:41:02'),(4,12,22,1,4,'2020-01-06 14:35:02'),(5,11,25,1,5,'2020-01-09 15:24:50'),(6,10,19,1,6,'2020-01-18 11:31:10'),(7,21,17,1,7,'2020-01-21 09:09:53'),(8,25,6,1,8,'2020-01-22 16:55:17'),(9,12,9,1,9,'2020-01-24 12:45:20'),(10,18,23,1,10,'2020-01-28 18:56:27'),(11,19,23,1,11,'2020-02-02 10:17:48'),(12,29,18,1,12,'2020-02-05 16:04:57'),(13,18,16,1,13,'2020-02-08 10:53:35'),(14,30,10,1,14,'2020-02-13 16:16:07'),(15,17,10,1,15,'2020-02-15 12:26:44'),(16,27,9,1,16,'2020-02-16 17:43:45'),(17,5,17,1,17,'2020-02-20 08:54:03'),(18,19,9,1,18,'2020-02-20 09:14:03'),(19,15,18,1,19,'2020-02-20 14:46:49'),(20,8,14,1,20,'2020-02-22 13:08:28'),(21,28,20,1,21,'2020-02-28 09:45:56'),(22,10,14,1,22,'2020-02-28 13:15:36'),(23,26,23,1,23,'2020-02-28 14:11:00'),(24,27,10,1,24,'2020-02-28 17:22:09'),(25,12,15,1,25,'2020-03-05 14:07:52'),(26,6,11,1,26,'2020-03-05 15:52:16'),(27,18,25,1,27,'2020-03-10 13:33:41'),(28,11,20,1,28,'2020-03-16 17:04:13'),(29,20,7,1,29,'2020-03-17 11:22:58'),(30,11,6,1,30,'2020-03-17 16:33:34'),(31,19,12,1,31,'2020-03-22 16:23:49'),(32,28,19,1,32,'2020-03-24 17:31:07'),(33,6,25,1,33,'2020-03-27 11:17:19'),(34,29,15,1,34,'2020-04-01 17:14:08'),(35,22,14,1,35,'2020-04-02 18:54:56'),(36,21,8,1,36,'2020-04-03 16:57:48'),(37,14,14,1,37,'2020-04-04 09:59:19'),(38,13,19,1,38,'2020-04-04 15:55:49'),(39,26,6,1,39,'2020-04-05 10:53:39'),(40,7,23,1,40,'2020-04-06 15:09:36'),(41,29,23,1,41,'2020-04-07 10:49:28'),(42,19,8,1,42,'2020-04-10 09:32:58'),(43,17,17,1,43,'2020-04-10 17:20:00'),(44,1,18,1,44,'2020-04-14 16:34:44'),(45,4,13,1,45,'2020-04-18 12:05:09'),(46,25,9,1,46,'2020-04-21 16:30:53'),(47,27,17,1,47,'2020-04-22 12:23:24'),(48,6,8,1,48,'2020-04-24 08:35:49'),(49,21,21,1,49,'2020-04-27 11:47:02'),(50,26,10,1,50,'2020-05-04 09:33:43'),(51,22,14,1,51,'2020-05-06 18:56:41'),(52,14,18,1,52,'2020-05-07 10:43:01'),(53,20,10,1,53,'2020-05-10 14:05:44'),(54,12,10,1,54,'2020-05-11 17:24:04'),(55,28,8,1,55,'2020-05-16 13:20:22'),(56,17,19,1,56,'2020-05-16 13:58:30'),(57,24,22,1,57,'2020-05-18 09:25:18'),(58,27,13,1,58,'2020-05-18 17:07:34'),(59,11,14,1,59,'2020-05-20 12:01:22'),(60,1,22,1,60,'2020-05-22 10:01:59'),(61,16,24,1,61,'2020-05-27 10:39:23'),(62,16,6,1,62,'2020-05-27 15:14:29'),(63,6,10,2,64,'2020-06-08 23:08:35'),(64,3,5,2,64,'2020-06-08 23:08:35'),(65,29,6,2,64,'2020-06-08 23:08:35'),(66,2,45,1,65,'2020-06-08 23:12:12'),(67,3,5,2,66,'2020-06-09 01:09:17'),(68,21,5,2,66,'2020-06-09 01:09:17');
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_type`
--

DROP TABLE IF EXISTS `operation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_type`
--

LOCK TABLES `operation_type` WRITE;
/*!40000 ALTER TABLE `operation_type` DISABLE KEYS */;
INSERT INTO `operation_type` VALUES (1,'entrada'),(2,'salida');
/*!40000 ALTER TABLE `operation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `phone1` varchar(50) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,NULL,'Amelia','Ramirez',NULL,'cerca',NULL,'22222222',NULL,'hhhh@jjj.com',NULL,1,'2017-10-25 20:32:36'),(2,NULL,'Aventurera verde','Natural',NULL,'lejos',NULL,'67367368289',NULL,'jj@jj,cv',NULL,2,'2017-10-25 20:48:57'),(3,NULL,'Rogelio','Ramirez',NULL,'lejos',NULL,'2',NULL,'hhh',NULL,1,'2020-03-01 21:04:15'),(4,NULL,'Gerardo','Rivera',NULL,'Test',NULL,'1234556',NULL,'test@test.com',NULL,1,'2020-05-06 19:32:57');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `inventary_min` int(11) DEFAULT '10',
  `price_in` float DEFAULT NULL,
  `price_out` float DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'001-beetroot.png','rem001','Remolacha','Libra de Remolacha',5,0.97,5.04,'25','',1,1,'2020-06-08 21:32:53',1),(2,'002-carrot.png','zan002','Zanahoria','Libra de Zanahoria',8,1.21,3.43,'30','',1,1,'2020-06-08 21:32:53',1),(3,'003-apple.png','man003','Manzana','Libra de Manzana',3,2.2,3.21,'19','',1,2,'2020-06-08 21:32:53',1),(4,'004-apricot.png','alb004','Albaricoque','Libra de Albaricoque',4,0.9,2.45,'25','',1,1,'2020-06-08 21:32:53',1),(5,'005-avocado.png','agu005','Aguacate','Libra de Aguacate',9,0.33,4.7,'21','',1,2,'2020-06-08 21:32:53',1),(6,'006-bananas.png','gui006','Guineo','Libra de Guineo',6,1.66,5.61,'22','',1,2,'2020-06-08 21:32:53',1),(7,'007-Bell pepper.png','chi007','Chile','Libra de Chile',8,2.09,4.07,'30','',1,1,'2020-06-08 21:32:53',1),(8,'008-berry.png','cer008','Cerezas','Libra de Cerezas',3,2.07,3.18,'24','',1,2,'2020-06-08 21:32:53',1),(9,'009-blueberry.png','cer009','Cerezas Azules','Libra de Cerezas Azules',9,0.62,4.38,'23','',1,2,'2020-06-08 21:32:53',1),(10,'010-eggplant.png','ber010','Berenjena','Libra de Berenjena',6,0.55,4.22,'23','',1,1,'2020-06-08 21:32:53',1),(11,'011-broccoli.png','bro011','Brocoli','Libra de Brocoli',9,0.64,6.46,'19','',1,1,'2020-06-08 21:32:53',1),(12,'012-Capsicum.png','chi012','Chille Morron','Libra de Chille Morron',7,2.46,6.82,'30','',1,1,'2020-06-08 21:32:53',1),(13,'013-cauliflower.png','col013','Coliflor','Verdura',0,2.02,3.75,'28','',NULL,1,'2020-06-08 23:04:47',1),(14,'014-corn.png','elo014','Elote','Verdura',0,0.23,3.55,'25','',NULL,1,'2020-06-08 23:04:47',1),(15,'015-dragon fruit.png','pim015','Pimentón','Verdura',0,1.67,2.37,'17','',NULL,1,'2020-06-08 23:04:47',1),(16,'016-eggplant.png','ber016','Berenjena','Verdura',0,2.43,4.98,'16','',NULL,1,'2020-06-08 23:04:47',1),(17,'017-garlic.png','ajo017','Ajo','Verdura',0,0.94,3.46,'29','',NULL,1,'2020-06-08 23:04:47',1),(18,'018-green chili pepper.png','chi018','Chille Verde','Verdura',0,0.45,3.83,'18','',NULL,1,'2020-06-08 23:04:47',1),(19,'019-okra.png','esp019','Espárrago','Verdura',0,0.29,5.53,'19','',NULL,1,'2020-06-08 23:04:47',1),(20,'020-lemon.png','lim020','Limon','Verdura',0,2.82,2.96,'28','',NULL,1,'2020-06-08 23:04:47',1),(21,'021-mango.png','man021','Mango','Fruta',0,1.83,4.28,'22','',NULL,2,'2020-06-08 23:04:47',1),(22,'022-orange.png','nar022','Naranja','Fruta',0,0.09,2.72,'28','',NULL,2,'2020-06-08 23:04:47',1),(23,'023-papaya.png','pap023','Papaya','Fruta',0,2.08,6.02,'21','',NULL,2,'2020-06-08 23:04:47',1),(24,'024-pear.png','per024','Pera','Fruta',0,0.39,5.03,'24','',NULL,2,'2020-06-08 23:04:47',1),(25,'025-pomegranate.png','gra025','Granada','Fruta',0,1.63,4.92,'15','',NULL,2,'2020-06-08 23:04:47',1),(26,'026-pumpkin.png','cal026','Calabaza','Fruta',0,0.37,3.23,'20','',NULL,2,'2020-06-08 23:04:47',1),(27,'027-rose apple.png','ráb027','Rábano','Verdura',0,0.75,3.28,'30','',NULL,1,'2020-06-08 23:04:47',1),(28,'028-strawberry.png','fre028','Fresa','Fruta',0,1.6,2.84,'29','',NULL,2,'2020-06-08 23:04:47',1),(29,'029-tomato.png','tom029','Tomate','Fruta',0,1.89,5.4,'23','',NULL,2,'2020-06-08 23:04:47',1),(30,'030-watermelon.png','zan030','Zandia','Fruta',0,1.96,2.73,'26','',NULL,2,'2020-06-08 23:04:47',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sell`
--

DROP TABLE IF EXISTS `sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `operation_type_id` int(11) DEFAULT '2',
  `box_id` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `cash` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `box_id` (`box_id`),
  KEY `operation_type_id` (`operation_type_id`),
  KEY `user_id` (`user_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`),
  CONSTRAINT `sell_ibfk_2` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_type` (`id`),
  CONSTRAINT `sell_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `sell_ibfk_4` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sell`
--

LOCK TABLES `sell` WRITE;
/*!40000 ALTER TABLE `sell` DISABLE KEYS */;
INSERT INTO `sell` VALUES (1,2,1,1,1,44,0,0,'2020-01-01 10:22:50'),(2,1,1,2,2,0,0,0,'2020-01-01 10:36:28'),(3,3,1,2,3,9,0,0,'2020-01-02 17:41:02'),(4,4,1,2,4,54.12,0,0,'2020-01-06 14:35:02'),(5,4,1,2,5,16,0,0,'2020-01-09 15:24:50'),(6,2,1,1,6,0,0,0,'2020-01-18 11:31:10'),(7,3,1,2,7,31.11,0,0,'2020-01-21 09:09:53'),(8,1,1,2,8,9.78,0,0,'2020-01-22 16:55:17'),(9,3,1,2,9,22.14,0,0,'2020-01-24 12:45:20'),(10,4,1,2,10,10.35,0,0,'2020-01-28 18:56:27'),(11,1,1,2,11,6.67,0,0,'2020-02-02 10:17:48'),(12,4,1,2,12,34.02,0,0,'2020-02-05 16:04:57'),(13,1,1,2,13,7.2,0,0,'2020-02-08 10:53:35'),(14,3,1,2,14,19.6,0,0,'2020-02-13 16:16:07'),(15,1,1,2,15,9.4,0,0,'2020-02-15 12:26:44'),(16,3,1,2,16,6.75,0,0,'2020-02-16 17:43:45'),(17,4,1,2,17,5.61,0,0,'2020-02-20 08:54:03'),(18,1,1,2,18,2.61,0,0,'2020-02-20 09:14:03'),(19,1,1,2,19,30.06,0,0,'2020-02-20 14:46:49'),(20,3,1,2,20,28.98,0,0,'2020-02-22 13:08:28'),(21,2,1,1,21,32,0,0,'2020-02-28 09:45:56'),(22,2,1,1,22,0,0,0,'2020-02-28 13:15:36'),(23,4,1,2,23,8.51,0,0,'2020-02-28 14:11:00'),(24,1,1,2,24,7.5,0,0,'2020-02-28 17:22:09'),(25,4,1,2,25,36.9,0,0,'2020-03-05 14:07:52'),(26,2,1,1,26,18.26,0,0,'2020-03-05 15:52:16'),(27,1,1,2,27,11.25,0,0,'2020-03-10 13:33:41'),(28,2,1,1,28,12.8,0,0,'2020-03-16 17:04:13'),(29,3,1,2,29,19.74,0,0,'2020-03-17 11:22:58'),(30,1,1,2,30,3.84,0,0,'2020-03-17 16:33:34'),(31,2,1,1,31,3.48,0,0,'2020-03-22 16:23:49'),(32,2,1,1,32,30.4,0,0,'2020-03-24 17:31:07'),(33,1,1,2,33,41.5,0,0,'2020-03-27 11:17:19'),(34,1,1,2,34,28.35,0,0,'2020-04-01 17:14:08'),(35,1,1,2,35,1.26,0,0,'2020-04-02 18:54:56'),(36,3,1,2,36,14.64,0,0,'2020-04-03 16:57:48'),(37,3,1,2,37,3.22,0,0,'2020-04-04 09:59:19'),(38,4,1,2,38,38.38,0,0,'2020-04-04 15:55:49'),(39,4,1,2,39,2.22,0,0,'2020-04-05 10:53:39'),(40,3,1,2,40,48.07,0,0,'2020-04-06 15:09:36'),(41,1,1,2,41,43.47,0,0,'2020-04-07 10:49:28'),(42,2,1,1,42,2.32,0,0,'2020-04-10 09:32:58'),(43,2,1,1,43,15.98,0,0,'2020-04-10 17:20:00'),(44,3,1,2,44,17.46,0,0,'2020-04-14 16:34:44'),(45,2,1,1,45,11.7,0,0,'2020-04-18 12:05:09'),(46,1,1,2,46,14.67,0,0,'2020-04-21 16:30:53'),(47,1,1,2,47,12.75,0,0,'2020-04-22 12:23:24'),(48,2,1,1,48,13.28,0,0,'2020-04-24 08:35:49'),(49,1,1,2,49,38.43,0,0,'2020-04-27 11:47:02'),(50,3,1,2,50,3.7,0,0,'2020-05-04 09:33:43'),(51,4,1,2,51,1.26,0,0,'2020-05-06 18:56:41'),(52,1,1,2,52,4.14,0,0,'2020-05-07 10:43:01'),(53,1,1,2,53,28.2,0,0,'2020-05-10 14:05:44'),(54,2,1,1,54,24.6,0,0,'2020-05-11 17:24:04'),(55,1,1,2,55,12.8,0,0,'2020-05-16 13:20:22'),(56,2,1,1,56,17.86,0,0,'2020-05-16 13:58:30'),(57,1,1,2,57,8.58,0,0,'2020-05-18 09:25:18'),(58,2,1,1,58,9.75,0,0,'2020-05-18 17:07:34'),(59,3,1,2,59,8.96,0,0,'2020-05-20 12:01:22'),(60,3,1,2,60,21.34,0,0,'2020-05-22 10:01:59'),(61,4,1,2,61,58.32,0,0,'2020-05-27 10:39:23'),(62,4,1,2,62,14.58,0,0,'2020-05-27 15:14:29'),(64,1,1,2,NULL,104.55,NULL,0,'2020-06-08 23:08:35'),(65,2,1,1,NULL,NULL,NULL,NULL,'2020-06-08 23:12:12'),(66,4,1,2,NULL,37.45,NULL,0,'2020-06-09 01:09:17');
/*!40000 ALTER TABLE `sell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Administrador','',NULL,'admin','90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad',NULL,1,1,'2017-09-17 08:51:16'),(2,'183s','16t','admin2','','90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad',NULL,1,0,'2017-10-25 14:45:55'),(3,'Vendor','seller','vendor','verdor@gmail.com','5cb2c992ee64f4e98c951a31381b5a0ed9eac805',NULL,1,0,'2020-03-01 20:23:56');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 22:49:46
