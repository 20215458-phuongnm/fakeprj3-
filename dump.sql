-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: phucanhduong
-- ------------------------------------------------------
-- Server version	8.0.37

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
use phucanhduong;

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `province_id` bigint DEFAULT NULL,
  `district_id` bigint DEFAULT NULL,
  `ward_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ADDRESS_ON_DISTRICT` (`district_id`),
  KEY `FK_ADDRESS_ON_PROVINCE` (`province_id`),
  KEY `FK_ADDRESS_ON_WARD` (`ward_id`),
  CONSTRAINT `FK_ADDRESS_ON_DISTRICT` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`),
  CONSTRAINT `FK_ADDRESS_ON_PROVINCE` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`),
  CONSTRAINT `FK_ADDRESS_ON_WARD` FOREIGN KEY (`ward_id`) REFERENCES `ward` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-07-29 21:58:33','2024-07-30 14:27:56',NULL,NULL,'140 Commercial Way',7,28,1),(2,'2024-07-22 21:08:28','2024-07-31 07:42:14',NULL,NULL,'9121 Calypso Street',7,26,2),(3,'2024-07-15 21:35:21','2024-07-08 22:22:57',NULL,NULL,'59 Del Sol Road',10,2,3),(4,'2024-07-20 14:32:29','2024-07-27 23:10:58',NULL,NULL,'3918 Bashford Junction',29,1,8937),(5,'2024-07-01 05:12:07','2024-07-21 06:36:16',NULL,NULL,'18726 Delaware Parkway',1,26,4),(6,'2024-07-26 06:31:10','2024-07-01 07:54:22',NULL,NULL,'83027 Ludington Center',6,25,NULL),(7,'2024-07-13 06:41:51','2024-07-19 08:19:18',NULL,NULL,'85044 Troy Place',2,28,NULL),(8,'2024-07-28 17:20:12','2024-07-22 14:17:25',NULL,NULL,'72 Thackeray Plaza',4,23,NULL),(9,'2024-07-23 15:51:19','2024-07-15 17:31:00',NULL,NULL,'92473 Russell Drive',4,17,NULL),(10,'2024-07-03 09:46:55','2024-07-25 00:13:34',NULL,NULL,'0 Coleman Park',29,6,NULL),(11,'2024-07-09 20:34:48','2024-07-13 17:34:12',NULL,NULL,'7 Mosinee Street',1,22,NULL),(12,'2024-07-19 07:16:28','2024-07-04 11:25:57',NULL,NULL,'8 Farragut Drive',3,26,NULL),(13,'2024-07-27 12:22:55','2024-07-08 09:57:39',NULL,NULL,'07 Miller Place',29,9,NULL),(14,'2024-07-30 04:00:41','2024-07-04 14:46:37',NULL,NULL,'5 Loeprich Crossing',29,6,NULL),(15,'2024-07-07 03:47:45','2024-07-19 06:49:55',NULL,NULL,'65 Londonderry Pass',1,21,NULL),(16,'2024-07-17 22:12:31','2024-07-06 03:02:27',NULL,NULL,'04629 New Castle Avenue',9,8,NULL),(17,'2024-07-12 09:34:29','2024-07-06 17:04:51',NULL,NULL,'6765 Mallard Lane',8,2,NULL),(18,'2024-07-06 22:09:52','2024-07-01 20:25:02',NULL,NULL,'5 South Way',4,1,NULL),(19,'2024-07-21 00:55:56','2024-07-27 21:36:55',NULL,NULL,'04290 Donald Way',4,28,NULL),(20,'2024-07-20 13:38:31','2024-07-13 18:17:15',NULL,NULL,'4 Kings Drive',8,28,NULL),(21,'2024-07-14 03:01:01','2024-07-06 18:06:42',NULL,NULL,'3851 Kinsman Trail',4,18,NULL),(22,'2024-07-23 11:49:42','2024-07-10 03:18:32',NULL,NULL,'551 Ridge Oak Crossing',8,5,NULL),(23,'2024-07-21 14:13:51','2024-07-09 09:31:20',NULL,NULL,'6 Harper Plaza',5,20,NULL),(24,'2024-07-03 09:02:06','2024-07-15 09:32:12',NULL,NULL,'27 7th Alley',10,28,NULL),(25,'2024-07-11 12:01:03','2024-07-12 08:01:05',NULL,NULL,'76 Clarendon Court',10,10,NULL),(26,'2024-07-20 04:35:08','2024-07-22 13:41:17',NULL,NULL,'135 Memorial Junction',10,21,NULL),(27,'2024-07-28 21:00:34','2024-07-17 08:15:04',NULL,NULL,'0763 Elmside Crossing',10,13,NULL),(28,'2024-07-26 21:20:15','2024-07-23 07:47:24',NULL,NULL,'77847 Hanson Hill',5,15,NULL),(29,'2024-07-28 17:13:08','2024-07-28 19:16:21',NULL,NULL,'1706 Carberry Lane',2,10,NULL),(30,'2024-07-06 19:21:11','2024-07-03 08:50:28',NULL,NULL,'02 Moland Court',9,10,NULL),(31,'2024-09-05 16:27:58','2024-09-05 16:27:58',NULL,NULL,'Thu duc -TP HCM',29,705,NULL),(32,'2024-09-05 16:47:17','2024-09-05 16:47:17',NULL,NULL,'Thanh Xuân - Hà Nội',1,20,NULL),(33,'2024-09-05 16:52:15','2024-09-05 16:52:15',NULL,NULL,'Thanh Xuân - Hà Nội',1,20,NULL),(34,'2024-09-05 16:59:52','2024-09-05 16:59:52',NULL,NULL,'Thanh Trì - Hà Nội',1,25,NULL),(35,'2024-09-05 17:21:11','2024-09-05 17:21:11',NULL,NULL,'Triều khúc',1,25,503),(36,'2024-09-16 19:42:06','2024-09-16 19:42:06',NULL,NULL,'ngõ a ',63,692,10477),(37,'2024-09-17 12:23:48','2024-09-17 12:23:48',NULL,NULL,'ngõ b',29,705,NULL),(38,'2024-09-17 12:27:28','2024-09-17 12:27:28',NULL,NULL,'Ngo b',1,20,NULL),(39,'2024-09-17 12:40:09','2024-09-17 12:40:09',NULL,NULL,'Ngõ C',19,83,NULL),(40,'2024-09-17 13:23:32','2024-09-17 13:23:32',NULL,NULL,'Ngõ cv',34,321,NULL),(41,'2024-09-17 13:25:19','2024-09-17 13:25:19',NULL,NULL,'9/8/7 van bac',59,698,NULL),(42,'2024-09-17 20:31:35','2024-09-17 20:31:35',NULL,NULL,'Triều khúc',1,25,NULL),(43,'2024-09-17 20:40:13','2024-09-17 20:40:13',NULL,NULL,'Cầu mộc',19,86,NULL),(44,'2024-09-17 21:07:00','2024-09-17 21:07:00',NULL,NULL,'Triều khúc',1,20,NULL),(45,'2024-09-20 21:42:27','2024-09-20 21:42:27',NULL,NULL,'xóm 2',34,321,5879),(46,'2024-09-22 15:12:43','2024-09-22 15:12:43',NULL,NULL,'sadasd',63,694,10493);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(35) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_brand_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (5,'2024-07-05 12:40:37','2024-07-04 01:57:04',NULL,NULL,'Gỗ Mỹ Nghệ Đồng Kỵ','5025','Lap abltn liver les/tiss',1),(6,'2024-07-18 10:09:09','2024-07-30 13:45:08',NULL,NULL,'Gỗ Đá Phong Thủy','4994','Reduction anal prolapse',1),(7,'2024-07-06 05:08:25','2024-07-22 11:02:07',NULL,NULL,'Panasonic','8884','Muscle thermography',1),(8,'2024-07-09 20:12:46','2024-07-21 12:10:28',NULL,NULL,'Sunhouse','3941','Postop vasc op hem contr',1),(9,'2024-07-26 14:16:19','2024-07-13 04:01:51',NULL,NULL,'Gỗ Mỹ Nghệ Đồng Kỵ','5186','Endosc inser nasobil tub',1),(10,'2024-07-17 19:52:18','2024-07-13 11:02:33',NULL,NULL,'Phong Thủy Tam Nguyên','4059','Rad node dissection NEC',1),(11,'2024-07-23 02:03:55','2024-07-01 08:09:25',NULL,NULL,'Minh Long','8625','Dermabrasion',1),(12,'2024-07-18 09:21:11','2024-07-11 18:26:51',NULL,NULL,'Bát Tràng','1269','Scler fistulizing op NEC',1),(13,'2024-07-18 18:12:14','2024-07-30 01:28:04',NULL,NULL,'Trà tân cương','9616','Other vaginal dilation',1),(14,'2024-09-17 12:38:16','2024-09-17 12:38:16',NULL,NULL,'Bạc Minh Cảnh','1111',NULL,1),(15,'2024-09-17 12:38:29','2024-09-17 12:38:29',NULL,NULL,'Bạc Phong Thủy Quang Thắng','2345',NULL,1),(16,'2024-09-17 12:38:41','2024-09-17 12:38:41',NULL,NULL,'Bạc Xưa','2567',NULL,1),(17,'2024-09-17 12:39:00','2024-09-17 12:39:00',NULL,NULL,'Ngọc Quang','9786',NULL,1),(18,'2024-09-17 13:26:07','2024-09-17 13:26:07',NULL,NULL,'Trà Phổ Nhĩ','6784',NULL,1),(19,'2024-09-17 13:26:19','2024-09-17 13:26:19',NULL,NULL,'Trà Ô Long Lâm Đồng','4354',NULL,1),(20,'2024-09-17 20:40:39','2024-09-17 20:40:39',NULL,NULL,'Trà Việt','9009',NULL,1);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CART_ON_USER` (`user_id`),
  CONSTRAINT `FK_CART_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2024-09-16 19:43:36','2024-09-16 19:43:36',NULL,NULL,3,2),(2,'2024-09-16 19:51:30','2024-09-16 19:51:30',NULL,NULL,4,1),(3,'2024-07-03 21:16:01','2024-07-18 00:55:52',NULL,NULL,4,1),(4,'2024-09-16 21:13:43','2024-09-16 21:13:43',NULL,NULL,3,2),(5,'2024-09-17 12:11:52','2024-09-17 12:11:52',NULL,NULL,3,2),(6,'2024-09-17 12:49:39','2024-09-17 12:49:39',NULL,NULL,3,2),(7,'2024-09-17 12:50:25','2024-09-17 12:50:25',NULL,NULL,3,2),(8,'2024-09-17 14:47:55','2024-09-17 14:47:55',NULL,NULL,3,2),(9,'2024-09-17 15:14:26','2024-09-17 15:14:26',NULL,NULL,3,2),(10,'2024-09-17 15:15:05','2024-09-17 15:15:05',NULL,NULL,3,2),(11,'2024-09-17 21:20:12','2024-09-17 21:20:12',NULL,NULL,3,2),(12,'2024-09-17 22:24:53','2024-09-17 22:24:53',NULL,NULL,3,2),(13,'2024-09-18 09:38:03','2024-09-18 09:38:03',NULL,NULL,3,2),(14,'2024-09-18 10:32:32','2024-09-18 10:32:32',NULL,NULL,3,2),(15,'2024-09-20 20:34:14','2024-09-20 20:34:14',NULL,NULL,3,2),(16,'2024-09-20 20:37:23','2024-09-20 20:37:23',NULL,NULL,3,2),(17,'2024-09-20 21:43:31','2024-09-20 21:43:31',NULL,NULL,6,2),(18,'2024-09-20 21:54:13','2024-09-20 21:54:13',NULL,NULL,3,2),(19,'2024-09-21 17:03:24','2024-09-21 17:03:24',NULL,NULL,3,2),(20,'2024-09-21 20:14:17','2024-09-21 20:14:17',NULL,NULL,3,2),(21,'2024-09-22 10:56:26','2024-09-22 10:56:26',NULL,NULL,3,2),(22,'2024-10-09 12:20:37','2024-10-09 12:20:37',NULL,NULL,3,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_variant`
--

DROP TABLE IF EXISTS `cart_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_variant` (
  `cart_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cart_id`,`variant_id`),
  KEY `FK_CART_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_CART_VARIANT_ON_CART` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK_CART_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_variant`
--

LOCK TABLES `cart_variant` WRITE;
/*!40000 ALTER TABLE `cart_variant` DISABLE KEYS */;
INSERT INTO `cart_variant` VALUES (1,1,'2024-09-16 20:37:49',1),(2,3,'2024-09-16 20:02:06',3),(4,5,'2024-09-16 21:13:43',3),(5,2,'2024-09-17 12:11:52',2),(6,1,'2024-09-17 12:49:39',1),(7,5,'2024-09-17 12:50:25',1),(8,10,'2024-09-17 14:47:55',2),(9,1,'2024-09-17 15:14:26',3),(10,1,'2024-09-17 15:15:05',2),(10,3,'2024-09-17 15:15:08',2),(11,12,'2024-09-17 21:20:12',1),(12,11,'2024-09-17 22:24:53',1),(13,11,'2024-09-18 09:38:03',1),(14,10,'2024-09-18 10:32:32',17),(15,1,'2024-09-20 20:34:14',3),(16,10,'2024-09-20 20:37:23',1),(17,6,'2024-09-20 21:43:31',22),(17,12,'2024-09-20 21:46:48',1),(18,6,'2024-09-20 21:54:13',1),(19,12,'2024-09-21 17:03:24',1),(20,16,'2024-09-21 20:14:17',1),(21,18,'2024-09-22 10:56:26',1),(22,23,'2024-10-09 12:20:37',10);
/*!40000 ALTER TABLE `cart_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_category_slug` (`slug`),
  KEY `FK_CATEGORY_ON_CATEGORY` (`category_id`),
  CONSTRAINT `FK_CATEGORY_ON_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2024-09-05 16:29:12','2024-09-05 16:29:12',NULL,NULL,'Ấm Trà Đơn','am-tra-don','Ấm trà đơn dùng để pha trà',NULL,NULL,1),(2,'2024-09-05 16:30:15','2024-09-05 16:30:15',NULL,NULL,'Bộ ấm chén trà du lịch','bo-am-chen-tra-du-lich','Bộ ấm chén trà tiện lợi mang đi lu lịch',NULL,NULL,1),(3,'2024-09-05 16:31:00','2024-09-05 16:31:00',NULL,NULL,'Bếp điện và dụng cụ pha trà','bep-dien-va-dung-cu-pha-tra','Bếp điện và dụng cụ được sử dụng để pha trà',NULL,NULL,1),(4,'2024-09-05 16:31:38','2024-09-05 16:31:38',NULL,NULL,'Tượng và Đồ phong thủy','tuong-va-do-phong-thuy','Tượng và đồ phong thủy',NULL,NULL,1),(5,'2024-09-05 16:32:24','2024-09-05 16:32:24',NULL,NULL,'Bộ Ấm Chén Full Phụ Kiện','bo-am-chen-full-phu-kien','Bộ ấm chén phun phụ kiện',NULL,NULL,1),(6,'2024-09-05 16:32:55','2024-09-05 16:32:55',NULL,NULL,'Trà Hảo Hạng','tra-hao-hang','Trà hảo hạng được triết xuất từ thiên nhiên',NULL,NULL,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count`
--

DROP TABLE IF EXISTS `count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `warehouse_id` bigint NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_count_code` (`code`),
  KEY `FK_COUNT_ON_WAREHOUSE` (`warehouse_id`),
  CONSTRAINT `FK_COUNT_ON_WAREHOUSE` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count`
--

LOCK TABLES `count` WRITE;
/*!40000 ALTER TABLE `count` DISABLE KEYS */;
INSERT INTO `count` VALUES (1,'2024-09-05 17:00:19','2024-09-05 17:00:19',NULL,NULL,'kk-01',1,NULL,3),(2,'2024-09-21 22:45:02','2024-09-21 22:45:02',NULL,NULL,'kk-1211',1,NULL,3);
/*!40000 ALTER TABLE `count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count_variant`
--

DROP TABLE IF EXISTS `count_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count_variant` (
  `count_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `inventory` int NOT NULL,
  `actual_inventory` int NOT NULL,
  PRIMARY KEY (`count_id`,`variant_id`),
  KEY `FK_COUNT_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_COUNT_VARIANT_ON_COUNT` FOREIGN KEY (`count_id`) REFERENCES `count` (`id`),
  CONSTRAINT `FK_COUNT_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count_variant`
--

LOCK TABLES `count_variant` WRITE;
/*!40000 ALTER TABLE `count_variant` DISABLE KEYS */;
INSERT INTO `count_variant` VALUES (1,2,20,40),(2,17,1,1),(2,18,15,15),(2,19,50,50),(2,20,100,100),(2,21,200,200),(2,22,122,122),(2,23,132,132);
/*!40000 ALTER TABLE `count_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `customer_group_id` bigint NOT NULL,
  `customer_status_id` bigint NOT NULL,
  `customer_resource_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_customer_user` (`user_id`),
  KEY `FK_CUSTOMER_ON_CUSTOMER_GROUP` (`customer_group_id`),
  KEY `FK_CUSTOMER_ON_CUSTOMER_RESOURCE` (`customer_resource_id`),
  KEY `FK_CUSTOMER_ON_CUSTOMER_STATUS` (`customer_status_id`),
  CONSTRAINT `FK_CUSTOMER_ON_CUSTOMER_GROUP` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`id`),
  CONSTRAINT `FK_CUSTOMER_ON_CUSTOMER_RESOURCE` FOREIGN KEY (`customer_resource_id`) REFERENCES `customer_resource` (`id`),
  CONSTRAINT `FK_CUSTOMER_ON_CUSTOMER_STATUS` FOREIGN KEY (`customer_status_id`) REFERENCES `customer_status` (`id`),
  CONSTRAINT `FK_CUSTOMER_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'2024-09-05 17:21:42','2024-09-05 17:21:42',NULL,NULL,3,1,1,1),(3,'2024-09-16 19:51:02','2024-09-16 19:51:02',NULL,NULL,4,1,1,1),(4,'2024-09-20 21:42:55','2024-09-20 21:42:55',NULL,NULL,6,1,1,1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_customer_group_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` VALUES (1,'2024-07-23 14:14:28','2024-07-24 07:08:47',NULL,NULL,'52270-001','Facebook','Other and unspecified malignant neoplasms of lymphoid and histiocytic tissue, lymph nodes of multiple sites','Blue',1);
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_resource`
--

DROP TABLE IF EXISTS `customer_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_customer_resource_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_resource`
--

LOCK TABLES `customer_resource` WRITE;
/*!40000 ALTER TABLE `customer_resource` DISABLE KEYS */;
INSERT INTO `customer_resource` VALUES (1,'2024-07-26 01:48:14','2024-07-19 04:58:04',NULL,NULL,'53499-5971','Facebook','Congenital mitral insufficiency','Blue',1);
/*!40000 ALTER TABLE `customer_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_status`
--

DROP TABLE IF EXISTS `customer_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_customer_status_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_status`
--

LOCK TABLES `customer_status` WRITE;
/*!40000 ALTER TABLE `customer_status` DISABLE KEYS */;
INSERT INTO `customer_status` VALUES (1,'2024-07-06 12:54:55','2024-07-01 01:22:53',NULL,NULL,'55045-3602','Active','Miliary tuberculosis, unspecified, unspecified','Pink',1);
/*!40000 ALTER TABLE `customer_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'2024-07-02 00:50:54','2024-07-28 15:01:05',NULL,NULL,'Legal',1),(2,'2024-07-21 23:55:27','2024-07-06 07:26:20',NULL,NULL,'Training',2),(3,'2024-07-02 02:55:33','2024-07-28 21:13:39',NULL,NULL,'Human Resources',3),(4,'2024-07-07 23:28:26','2024-07-20 15:29:28',NULL,NULL,'Support',3),(5,'2024-07-21 01:50:28','2024-07-01 01:58:22',NULL,NULL,'Human Resources',2);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destination` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `contact_fullname` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `address_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_destination_address` (`address_id`),
  CONSTRAINT `FK_DESTINATION_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination`
--

LOCK TABLES `destination` WRITE;
/*!40000 ALTER TABLE `destination` DISABLE KEYS */;
INSERT INTO `destination` VALUES (1,'2024-09-05 16:52:15','2024-09-05 16:52:15',NULL,NULL,'Nguyen Van B','nguyenvanb@gmail.com','0366619640',33,1);
/*!40000 ALTER TABLE `destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(35) NOT NULL,
  `province_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_DISTRICT_ON_PROVINCE` (`province_id`),
  CONSTRAINT `FK_DISTRICT_ON_PROVINCE` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=706 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 1','760',29),(2,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 12','761',29),(3,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 3','770',29),(4,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 10','771',29),(5,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 11','772',29),(6,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 4','773',29),(7,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 5','774',29),(8,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 6','775',29),(9,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 8','776',29),(10,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận 7','778',29),(11,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thuận An','725',27),(12,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ba Đình','001',1),(13,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hoàn Kiếm','002',1),(14,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Tây Hồ','003',1),(15,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Long Biên','004',1),(16,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Cầu Giấy','005',1),(17,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Đống Đa','006',1),(18,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hai Bà Trưng','007',1),(19,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hoàng Mai','008',1),(20,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Thanh Xuân','009',1),(21,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sóc Sơn','016',1),(22,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Anh','017',1),(23,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gia Lâm','018',1),(24,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Nam Từ Liêm','019',1),(25,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Trì','020',1),(26,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Bắc Từ Liêm','021',1),(27,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mê Linh','250',1),(28,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hà Đông','268',1),(29,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Sơn Tây','269',1),(30,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Vì','271',1),(31,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phúc Thọ','272',1),(32,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đan Phượng','273',1),(33,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoài Đức','274',1),(34,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quốc Oai','275',1),(35,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạch Thất','276',1),(36,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chương Mỹ','277',1),(37,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Oai','278',1),(38,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thường Tín','279',1),(39,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Xuyên','280',1),(40,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ứng Hòa','281',1),(41,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỹ Đức','282',1),(42,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hà Giang','024',10),(43,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đồng Văn','026',10),(44,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mèo Vạc','027',10),(45,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Minh','028',10),(46,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quản Bạ','029',10),(47,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vị Xuyên','030',10),(48,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Mê','031',10),(49,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoàng Su Phì','032',10),(50,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Xín Mần','033',10),(51,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Quang','034',10),(52,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quang Bình','035',10),(53,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cao Bằng','040',11),(54,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Lâm','042',11),(55,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Lạc','043',11),(56,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hà Quảng','045',11),(57,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trùng Khánh','047',11),(58,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hạ Lang','048',11),(59,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Hòa','049',11),(60,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoà An','051',11),(61,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nguyên Bình','052',11),(62,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạch An','053',11),(63,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bắc Kạn','058',12),(64,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Pác Nặm','060',12),(65,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Bể','061',12),(66,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ngân Sơn','062',12),(67,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bạch Thông','063',12),(68,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Đồn','064',12),(69,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Mới','065',12),(70,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Na Rì','066',12),(71,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tuyên Quang','070',13),(72,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lâm Bình','071',13),(73,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Na Hang','072',13),(74,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chiêm Hóa','073',13),(75,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hàm Yên','074',13),(76,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Sơn','075',13),(77,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Dương','076',13),(78,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Lào Cai','080',19),(79,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bát Xát','082',19),(80,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Khương','083',19),(81,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Si Ma Cai','084',19),(82,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Hà','085',19),(83,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Thắng','086',19),(84,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Yên','087',19),(85,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Sa Pa','088',19),(86,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Bàn','089',19),(87,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Điện Biên Phủ','094',20),(88,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Mường Lay','095',20),(89,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Nhé','096',20),(90,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Chà','097',20),(91,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tủa Chùa','098',20),(92,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuần Giáo','099',20),(93,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Điện Biên','100',20),(94,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Điện Biên Đông','101',20),(95,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Ảng','102',20),(96,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nậm Pồ','103',20),(97,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Lai Châu','105',21),(98,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Đường','106',21),(99,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Tè','107',21),(100,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sìn Hồ','108',21),(101,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phong Thổ','109',21),(102,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Than Uyên','110',21),(103,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Uyên','111',21),(104,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nậm Nhùn','112',21),(105,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sơn La','116',22),(106,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳnh Nhai','118',22),(107,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuận Châu','119',22),(108,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường La','120',22),(109,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Yên','121',22),(110,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Yên','122',22),(111,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mộc Châu','123',22),(112,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Châu','124',22),(113,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mai Sơn','125',22),(114,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sông Mã','126',22),(115,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sốp Cộp','127',22),(116,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vân Hồ','128',22),(117,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Yên Bái','132',23),(118,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Nghĩa Lộ','133',23),(119,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lục Yên','135',23),(120,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Yên','136',23),(121,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mù Căng Chải','137',23),(122,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trấn Yên','138',23),(123,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trạm Tấu','139',23),(124,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Chấn','140',23),(125,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Bình','141',23),(126,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hòa Bình','148',24),(127,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đà Bắc','150',24),(128,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lương Sơn','152',24),(129,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Bôi','153',24),(130,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cao Phong','154',24),(131,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Lạc','155',24),(132,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mai Châu','156',24),(133,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lạc Sơn','157',24),(134,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Thủy','158',24),(135,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lạc Thủy','159',24),(136,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thái Nguyên','164',14),(137,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sông Công','165',14),(138,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Định Hóa','167',14),(139,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Lương','168',14),(140,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đồng Hỷ','169',14),(141,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Võ Nhai','170',14),(142,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đại Từ','171',14),(143,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phổ Yên','172',14),(144,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Bình','173',14),(145,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Lạng Sơn','178',15),(146,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tràng Định','180',15),(147,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Gia','181',15),(148,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Lãng','182',15),(149,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cao Lộc','183',15),(150,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Quan','184',15),(151,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Sơn','185',15),(152,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hữu Lũng','186',15),(153,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chi Lăng','187',15),(154,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lộc Bình','188',15),(155,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đình Lập','189',15),(156,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hạ Long','193',16),(157,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Móng Cái','194',16),(158,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cẩm Phả','195',16),(159,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Uông Bí','196',16),(160,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Liêu','198',16),(161,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Yên','199',16),(162,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đầm Hà','200',16),(163,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hải Hà','201',16),(164,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Chẽ','202',16),(165,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vân Đồn','203',16),(166,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Đông Triều','205',16),(167,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Quảng Yên','206',16),(168,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cô Tô','207',16),(169,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bắc Giang','213',17),(170,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Thế','215',17),(171,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Yên','216',17),(172,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lạng Giang','217',17),(173,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lục Nam','218',17),(174,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lục Ngạn','219',17),(175,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Động','220',17),(176,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Dũng','221',17),(177,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Việt Yên','222',17),(178,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hiệp Hòa','223',17),(179,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Việt Trì','227',18),(180,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Phú Thọ','228',18),(181,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đoan Hùng','230',18),(182,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hạ Hoà','231',18),(183,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Ba','232',18),(184,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Ninh','233',18),(185,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Lập','234',18),(186,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Khê','235',18),(187,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Nông','236',18),(188,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lâm Thao','237',18),(189,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Sơn','238',18),(190,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Thuỷ','239',18),(191,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Sơn','240',18),(192,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vĩnh Yên','243',2),(193,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phúc Yên','244',2),(194,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lập Thạch','246',2),(195,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Dương','247',2),(196,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Đảo','248',2),(197,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Xuyên','249',2),(198,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Lạc','251',2),(199,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Tường','252',2),(200,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sông Lô','253',2),(201,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bắc Ninh','256',3),(202,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Phong','258',3),(203,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quế Võ','259',3),(204,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Du','260',3),(205,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Từ Sơn','261',3),(206,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuận Thành','262',3),(207,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gia Bình','263',3),(208,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lương Tài','264',3),(209,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hải Dương','288',4),(210,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Chí Linh','290',4),(211,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Sách','291',4),(212,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Kinh Môn','292',4),(213,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Thành','293',4),(214,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Hà','294',4),(215,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Giàng','295',4),(216,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Giang','296',4),(217,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gia Lộc','297',4),(218,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tứ Kỳ','298',4),(219,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ninh Giang','299',4),(220,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Miện','300',4),(221,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hồng Bàng','303',5),(222,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ngô Quyền','304',5),(223,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Lê Chân','305',5),(224,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hải An','306',5),(225,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Kiến An','307',5),(226,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Đồ Sơn','308',5),(227,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Dương Kinh','309',5),(228,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuỷ Nguyên','311',5),(229,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Dương','312',5),(230,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Lão','313',5),(231,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kiến Thuỵ','314',5),(232,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Lãng','315',5),(233,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gò Dầu','710',26),(234,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Bảo','316',5),(235,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cát Hải','317',5),(236,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bạch Long Vĩ','318',5),(237,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hưng Yên','323',6),(238,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Lâm','325',6),(239,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Văn Giang','326',6),(240,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Mỹ','327',6),(241,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Mỹ Hào','328',6),(242,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ân Thi','329',6),(243,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Khoái Châu','330',6),(244,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Động','331',6),(245,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Lữ','332',6),(246,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Cừ','333',6),(247,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thái Bình','336',7),(248,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳnh Phụ','338',7),(249,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hưng Hà','339',7),(250,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Hưng','340',7),(251,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thái Thụy','341',7),(252,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiền Hải','342',7),(253,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kiến Xương','343',7),(254,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vũ Thư','344',7),(255,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phủ Lý','347',8),(256,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Duy Tiên','349',8),(257,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Bảng','350',8),(258,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Liêm','351',8),(259,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Lục','352',8),(260,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lý Nhân','353',8),(261,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Nam Định','356',31),(262,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỹ Lộc','358',31),(263,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vụ Bản','359',31),(264,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ý Yên','360',31),(265,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghĩa Hưng','361',31),(266,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Trực','362',31),(267,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trực Ninh','363',31),(268,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Xuân Trường','364',31),(269,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Giao Thủy','365',31),(270,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hải Hậu','366',31),(271,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Ninh Bình','369',32),(272,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tam Điệp','370',32),(273,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nho Quan','372',32),(274,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gia Viễn','373',32),(275,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoa Lư','374',32),(276,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Khánh','375',32),(277,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kim Sơn','376',32),(278,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Mô','377',32),(279,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thanh Hóa','380',33),(280,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Bỉm Sơn','381',33),(281,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sầm Sơn','382',33),(282,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mường Lát','384',33),(283,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quan Hóa','385',33),(284,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bá Thước','386',33),(285,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quan Sơn','387',33),(286,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lang Chánh','388',33),(287,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ngọc Lặc','389',33),(288,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Thủy','390',33),(289,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạch Thành','391',33),(290,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hà Trung','392',33),(291,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Lộc','393',33),(292,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Định','394',33),(293,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thọ Xuân','395',33),(294,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thường Xuân','396',33),(295,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Triệu Sơn','397',33),(296,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thiệu Hóa','398',33),(297,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoằng Hóa','399',33),(298,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hậu Lộc','400',33),(299,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nga Sơn','401',33),(300,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Như Xuân','402',33),(301,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Như Thanh','403',33),(302,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nông Cống','404',33),(303,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Sơn','405',33),(304,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Xương','406',33),(305,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Nghi Sơn','407',33),(306,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vinh','412',34),(307,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Cửa Lò','413',34),(308,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Thái Hoà','414',34),(309,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quế Phong','415',34),(310,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳ Châu','416',34),(311,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kỳ Sơn','417',34),(312,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tương Dương','418',34),(313,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghĩa Đàn','419',34),(314,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳ Hợp','420',34),(315,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quỳnh Lưu','421',34),(316,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Con Cuông','422',34),(317,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Kỳ','423',34),(318,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Anh Sơn','424',34),(319,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Diễn Châu','425',34),(320,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Yên Thành','426',34),(321,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đô Lương','427',34),(322,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Chương','428',34),(323,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghi Lộc','429',34),(324,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Đàn','430',34),(325,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hưng Nguyên','431',34),(326,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hoàng Mai','432',34),(327,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hà Tĩnh','436',35),(328,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hồng Lĩnh','437',35),(329,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hương Sơn','439',35),(330,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Thọ','440',35),(331,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vũ Quang','441',35),(332,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghi Xuân','442',35),(333,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Can Lộc','443',35),(334,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hương Khê','444',35),(335,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạch Hà','445',35),(336,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Xuyên','446',35),(337,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kỳ Anh','447',35),(338,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lộc Hà','448',35),(339,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Kỳ Anh','449',35),(340,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Đồng Hới','450',36),(341,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Minh Hóa','452',36),(342,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuyên Hóa','453',36),(343,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Trạch','454',36),(344,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bố Trạch','455',36),(345,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Ninh','456',36),(346,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lệ Thủy','457',36),(347,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Ba Đồn','458',36),(348,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Đông Hà','461',37),(349,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Quảng Trị','462',37),(350,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Linh','464',37),(351,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hướng Hóa','465',37),(352,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gio Linh','466',37),(353,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đa Krông','467',37),(354,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cam Lộ','468',37),(355,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Triệu Phong','469',37),(356,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hải Lăng','470',37),(357,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cồn Cỏ','471',37),(358,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Huế','474',38),(359,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phong Điền','476',38),(360,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quảng Điền','477',38),(361,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Vang','478',38),(362,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hương Thủy','479',38),(363,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hương Trà','480',38),(364,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện A Lưới','481',38),(365,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Lộc','482',38),(366,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Đông','483',38),(367,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Liên Chiểu','490',39),(368,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Thanh Khê','491',39),(369,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Hải Châu','492',39),(370,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Sơn Trà','493',39),(371,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ngũ Hành Sơn','494',39),(372,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Cẩm Lệ','495',39),(373,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hòa Vang','497',39),(374,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoàng Sa','498',39),(375,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tam Kỳ','502',40),(376,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hội An','503',40),(377,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tây Giang','504',40),(378,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Giang','505',40),(379,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đại Lộc','506',40),(380,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Điện Bàn','507',40),(381,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Duy Xuyên','508',40),(382,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Quế Sơn','509',40),(383,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Giang','510',40),(384,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phước Sơn','511',40),(385,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hiệp Đức','512',40),(386,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thăng Bình','513',40),(387,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiên Phước','514',40),(388,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Trà My','515',40),(389,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nam Trà My','516',40),(390,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Núi Thành','517',40),(391,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Ninh','518',40),(392,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nông Sơn','519',40),(393,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Quảng Ngãi','522',41),(394,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Sơn','524',41),(395,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trà Bồng','525',41),(396,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Tịnh','527',41),(397,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tư Nghĩa','528',41),(398,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Hà','529',41),(399,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Tây','530',41),(400,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Minh Long','531',41),(401,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nghĩa Hành','532',41),(402,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mộ Đức','533',41),(403,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Đức Phổ','534',41),(404,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Tơ','535',41),(405,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lý Sơn','536',41),(406,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Quy Nhơn','540',42),(407,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Lão','542',42),(408,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hoài Nhơn','543',42),(409,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoài Ân','544',42),(410,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Mỹ','545',42),(411,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Thạnh','546',42),(412,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tây Sơn','547',42),(413,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phù Cát','548',42),(414,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã An Nhơn','549',42),(415,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuy Phước','550',42),(416,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vân Canh','551',42),(417,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tuy Hoà','555',43),(418,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Sông Cầu','557',43),(419,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đồng Xuân','558',43),(420,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuy An','559',43),(421,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sơn Hòa','560',43),(422,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sông Hinh','561',43),(423,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tây Hoà','562',43),(424,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Hoà','563',43),(425,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Đông Hòa','564',43),(426,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Nha Trang','568',44),(427,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cam Ranh','569',44),(428,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cam Lâm','570',44),(429,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vạn Ninh','571',44),(430,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Ninh Hòa','572',44),(431,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Khánh Vĩnh','573',44),(432,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Diên Khánh','574',44),(433,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Khánh Sơn','575',44),(434,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trường Sa','576',44),(435,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phan Rang-Tháp Chàm','582',45),(436,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bác Ái','584',45),(437,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ninh Sơn','585',45),(438,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ninh Hải','586',45),(439,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ninh Phước','587',45),(440,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuận Bắc','588',45),(441,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thuận Nam','589',45),(442,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phan Thiết','593',46),(443,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã La Gi','594',46),(444,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuy Phong','595',46),(445,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Bình','596',46),(446,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hàm Thuận Bắc','597',46),(447,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hàm Thuận Nam','598',46),(448,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tánh Linh','599',46),(449,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Linh','600',46),(450,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hàm Tân','601',46),(451,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Quí','602',46),(452,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Kon Tum','608',47),(453,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Glei','610',47),(454,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ngọc Hồi','611',47),(455,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Tô','612',47),(456,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kon Plông','613',47),(457,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kon Rẫy','614',47),(458,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Hà','615',47),(459,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Sa Thầy','616',47),(460,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tu Mơ Rông','617',47),(461,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ia H\' Drai','618',47),(462,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Pleiku','622',48),(463,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã An Khê','623',48),(464,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Ayun Pa','624',48),(465,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện KBang','625',48),(466,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đăk Đoa','626',48),(467,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chư Păh','627',48),(468,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ia Grai','628',48),(469,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mang Yang','629',48),(470,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kông Chro','630',48),(471,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Cơ','631',48),(472,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chư Prông','632',48),(473,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chư Sê','633',48),(474,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đăk Pơ','634',48),(475,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ia Pa','635',48),(476,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Pa','637',48),(477,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Thiện','638',48),(478,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chư Pưh','639',48),(479,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Buôn Ma Thuột','643',49),(480,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Buôn Hồ','644',49),(481,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ea H\'leo','645',49),(482,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ea Súp','646',49),(483,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Buôn Đôn','647',49),(484,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cư M\'gar','648',49),(485,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Búk','649',49),(486,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Năng','650',49),(487,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ea Kar','651',49),(488,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện M\'Đrắk','652',49),(489,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Bông','653',49),(490,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Pắc','654',49),(491,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông A Na','655',49),(492,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lắk','656',49),(493,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cư Kuin','657',49),(494,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Gia Nghĩa','660',50),(495,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đăk Glong','661',50),(496,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cư Jút','662',50),(497,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Mil','663',50),(498,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Krông Nô','664',50),(499,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk Song','665',50),(500,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đắk R\'Lấp','666',50),(501,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tuy Đức','667',50),(502,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Đà Lạt','672',51),(503,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bảo Lộc','673',51),(504,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đam Rông','674',51),(505,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lạc Dương','675',51),(506,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lâm Hà','676',51),(507,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đơn Dương','677',51),(508,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Trọng','678',51),(509,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Di Linh','679',51),(510,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bảo Lâm','680',51),(511,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đạ Huoai','681',51),(512,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đạ Tẻh','682',51),(513,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cát Tiên','683',51),(514,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Phước Long','688',25),(515,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Đồng Xoài','689',25),(516,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Bình Long','690',25),(517,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bù Gia Mập','691',25),(518,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lộc Ninh','692',25),(519,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bù Đốp','693',25),(520,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hớn Quản','694',25),(521,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đồng Phú','695',25),(522,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bù Đăng','696',25),(523,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Chơn Thành','697',25),(524,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Riềng','698',25),(525,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tây Ninh','703',26),(526,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Biên','705',26),(527,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Châu','706',26),(528,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Dương Minh Châu','707',26),(529,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','708',26),(530,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Hòa Thành','709',26),(531,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bến Cầu','711',26),(532,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Trảng Bàng','712',26),(533,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thủ Dầu Một','718',27),(534,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bàu Bàng','719',27),(535,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Dầu Tiếng','720',27),(536,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Bến Cát','721',27),(537,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Giáo','722',27),(538,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Tân Uyên','723',27),(539,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Dĩ An','724',27),(540,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bắc Tân Uyên','726',27),(541,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Biên Hòa','731',28),(542,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Long Khánh','732',28),(543,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Phú','734',28),(544,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Cửu','735',28),(545,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Định Quán','736',28),(546,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trảng Bom','737',28),(547,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thống Nhất','738',28),(548,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cẩm Mỹ','739',28),(549,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Thành','740',28),(550,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Xuân Lộc','741',28),(551,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nhơn Trạch','742',28),(552,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vũng Tàu','747',30),(553,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bà Rịa','748',30),(554,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Đức','750',30),(555,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Xuyên Mộc','751',30),(556,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Điền','752',30),(557,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đất Đỏ','753',30),(558,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Phú Mỹ','754',30),(559,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Côn Đảo','755',30),(560,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Gò Vấp','764',29),(561,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Bình Thạnh','765',29),(562,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Tân Bình','766',29),(563,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Tân Phú','767',29),(564,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Phú Nhuận','768',29),(565,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Bình Tân','777',29),(566,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Củ Chi','783',29),(567,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hóc Môn','784',29),(568,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Chánh','785',29),(569,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Nhà Bè','786',29),(570,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cần Giờ','787',29),(571,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Tân An','794',52),(572,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Kiến Tường','795',52),(573,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Hưng','796',52),(574,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Hưng','797',52),(575,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mộc Hóa','798',52),(576,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Thạnh','799',52),(577,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạnh Hóa','800',52),(578,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Huệ','801',52),(579,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đức Hòa','802',52),(580,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bến Lức','803',52),(581,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thủ Thừa','804',52),(582,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Trụ','805',52),(583,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cần Đước','806',52),(584,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cần Giuộc','807',52),(585,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','808',52),(586,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Mỹ Tho','815',53),(587,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Gò Công','816',53),(588,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Cai Lậy','817',53),(589,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Phước','818',53),(590,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cái Bè','819',53),(591,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cai Lậy','820',53),(592,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','821',53),(593,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Gạo','822',53),(594,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gò Công Tây','823',53),(595,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gò Công Đông','824',53),(596,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Phú Đông','825',53),(597,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bến Tre','829',54),(598,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','831',54),(599,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Lách','832',54),(600,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỏ Cày Nam','833',54),(601,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Giồng Trôm','834',54),(602,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Đại','835',54),(603,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ba Tri','836',54),(604,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạnh Phú','837',54),(605,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỏ Cày Bắc','838',54),(606,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Trà Vinh','842',55),(607,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Càng Long','844',55),(608,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cầu Kè','845',55),(609,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tiểu Cần','846',55),(610,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','847',55),(611,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cầu Ngang','848',55),(612,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trà Cú','849',55),(613,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Duyên Hải','850',55),(614,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Duyên Hải','851',55),(615,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vĩnh Long','855',56),(616,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Hồ','857',56),(617,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mang Thít','858',56),(618,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vũng Liêm','859',56),(619,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Bình','860',56),(620,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Bình Minh','861',56),(621,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trà Ôn','862',56),(622,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Bình Tân','863',56),(623,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cao Lãnh','866',57),(624,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sa Đéc','867',57),(625,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hồng Ngự','868',57),(626,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Hồng','869',57),(627,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hồng Ngự','870',57),(628,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tam Nông','871',57),(629,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tháp Mười','872',57),(630,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cao Lãnh','873',57),(631,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thanh Bình','874',57),(632,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lấp Vò','875',57),(633,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Lai Vung','876',57),(634,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','877',57),(635,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Long Xuyên','883',58),(636,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Châu Đốc','884',58),(637,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Phú','886',58),(638,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Tân Châu','887',58),(639,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Tân','888',58),(640,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Phú','889',58),(641,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tịnh Biên','890',58),(642,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tri Tôn','891',58),(643,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','892',58),(644,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Chợ Mới','893',58),(645,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thoại Sơn','894',58),(646,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Rạch Giá','899',59),(647,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hà Tiên','900',59),(648,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kiên Lương','902',59),(649,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hòn Đất','903',59),(650,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Tân Hiệp','904',59),(651,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','905',59),(652,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Giồng Riềng','906',59),(653,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Gò Quao','907',59),(654,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Biên','908',59),(655,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện An Minh','909',59),(656,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Thuận','910',59),(657,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Phú Quốc','911',59),(658,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kiên Hải','912',59),(659,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện U Minh Thượng','913',59),(660,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Giang Thành','914',59),(661,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ninh Kiều','916',60),(662,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Ô Môn','917',60),(663,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Bình Thuỷ','918',60),(664,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Cái Răng','919',60),(665,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quận Thốt Nốt','923',60),(666,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Thạnh','924',60),(667,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cờ Đỏ','925',60),(668,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phong Điền','926',60),(669,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thới Lai','927',60),(670,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Vị Thanh','930',61),(671,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Ngã Bảy','931',61),(672,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành A','932',61),(673,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','933',61),(674,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phụng Hiệp','934',61),(675,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vị Thuỷ','935',61),(676,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Mỹ','936',61),(677,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Long Mỹ','937',61),(678,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Sóc Trăng','941',62),(679,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Châu Thành','942',62),(680,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Kế Sách','943',62),(681,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỹ Tú','944',62),(682,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cù Lao Dung','945',62),(683,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Long Phú','946',62),(684,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Mỹ Xuyên','947',62),(685,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Ngã Năm','948',62),(686,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thạnh Trị','949',62),(687,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Vĩnh Châu','950',62),(688,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trần Đề','951',62),(689,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Bạc Liêu','954',63),(690,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hồng Dân','956',63),(691,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phước Long','957',63),(692,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Vĩnh Lợi','958',63),(693,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thị xã Giá Rai','959',63),(694,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đông Hải','960',63),(695,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Hoà Bình','961',63),(696,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Cà Mau','964',9),(697,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện U Minh','966',9),(698,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Thới Bình','967',9),(699,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Trần Văn Thời','968',9),(700,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Cái Nước','969',9),(701,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Đầm Dơi','970',9),(702,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Năm Căn','971',9),(703,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Phú Tân','972',9),(704,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Huyện Ngọc Hiển','973',9),(705,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Thủ Đức','769',29);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket`
--

DROP TABLE IF EXISTS `docket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docket` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `type` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `reason_id` bigint NOT NULL,
  `warehouse_id` bigint NOT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_docket_code` (`code`),
  KEY `FK_DOCKET_ON_PURCHASE_ORDER` (`purchase_order_id`),
  KEY `FK_DOCKET_ON_REASON` (`reason_id`),
  KEY `FK_DOCKET_ON_WAREHOUSE` (`warehouse_id`),
  KEY `FK_DOCKET_ON_ORDER` (`order_id`),
  CONSTRAINT `FK_DOCKET_ON_ORDER` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `FK_DOCKET_ON_PURCHASE_ORDER` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_DOCKET_ON_REASON` FOREIGN KEY (`reason_id`) REFERENCES `docket_reason` (`id`),
  CONSTRAINT `FK_DOCKET_ON_WAREHOUSE` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket`
--

LOCK TABLES `docket` WRITE;
/*!40000 ALTER TABLE `docket` DISABLE KEYS */;
INSERT INTO `docket` VALUES (1,'2024-09-05 16:50:02','2024-09-05 16:50:02',NULL,NULL,1,'NXK-1',1,1,NULL,NULL,NULL,3),(2,'2024-09-05 17:00:47','2024-09-05 17:00:47',NULL,NULL,2,'EX-ck-01',2,1,NULL,NULL,NULL,3),(3,'2024-09-05 17:00:47','2024-09-05 17:00:47',NULL,NULL,1,'IM-ck-01',1,2,NULL,NULL,NULL,3),(4,'2024-09-10 14:02:16','2024-09-10 14:02:16',NULL,NULL,1,'NXK-2',1,1,NULL,NULL,NULL,3),(6,'2024-09-16 21:13:03','2024-09-16 21:13:03',NULL,NULL,1,'NXK04',1,1,NULL,16,NULL,3),(7,'2024-09-17 13:09:28','2024-09-17 13:09:28',NULL,NULL,1,'NXK01',1,1,NULL,NULL,NULL,3),(8,'2024-09-17 13:10:03','2024-09-17 13:10:03',NULL,NULL,1,'NXK05',1,1,NULL,NULL,NULL,3),(11,'2024-09-17 13:11:24','2024-09-17 13:11:24',NULL,NULL,1,'NXK06',1,1,NULL,NULL,NULL,3),(14,'2024-09-17 21:35:03','2024-09-17 21:35:03',NULL,NULL,2,'EX-ck-02',2,1,NULL,NULL,NULL,3),(15,'2024-09-17 21:35:03','2024-09-17 21:35:03',NULL,NULL,1,'IM-ck-02',1,2,NULL,NULL,NULL,3),(16,'2024-09-17 21:36:59','2024-09-17 21:36:59',NULL,NULL,2,'NXK-03',2,1,1,22,NULL,3),(17,'2024-09-17 21:39:13','2024-09-17 21:39:13',NULL,NULL,2,'NXK-04',2,1,NULL,NULL,NULL,3),(19,'2024-09-20 21:46:16','2024-09-20 21:46:16',NULL,NULL,1,'NXK-098',1,1,NULL,NULL,NULL,3),(20,'2024-09-20 21:47:46','2024-09-20 21:47:46',NULL,NULL,2,'NXK-0987',2,1,NULL,NULL,NULL,3),(21,'2024-09-21 20:08:36','2024-09-21 20:08:36',NULL,NULL,1,'NXK-12',1,1,NULL,NULL,NULL,3),(22,'2024-09-21 21:03:09','2024-09-21 21:03:09',NULL,NULL,1,'NXK-1211',1,1,NULL,NULL,NULL,3),(23,'2024-09-21 22:46:47','2024-09-21 22:46:47',NULL,NULL,2,'NXK-009',2,1,NULL,NULL,NULL,2),(24,'2024-09-22 15:15:30','2024-09-22 15:15:30',NULL,NULL,1,'NXK-123123',1,1,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `docket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket_reason`
--

DROP TABLE IF EXISTS `docket_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docket_reason` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket_reason`
--

LOCK TABLES `docket_reason` WRITE;
/*!40000 ALTER TABLE `docket_reason` DISABLE KEYS */;
INSERT INTO `docket_reason` VALUES (1,'2024-07-02 15:22:57','2024-07-18 19:24:30',NULL,NULL,'Nhập kho',1),(2,'2024-07-31 11:59:41','2024-07-16 04:19:25',NULL,NULL,'Xuất kho',1),(3,'2024-07-31 11:59:41','2024-07-16 04:19:25',NULL,NULL,'Mua hàng',1),(4,'2024-07-31 11:59:41','2024-07-16 04:19:25',NULL,NULL,'Điều chuyển kho',1),(5,'2024-07-02 14:35:04','2024-07-11 18:05:41',NULL,NULL,'Kiểm kho',1),(6,'2024-07-13 15:19:28','2024-07-11 10:36:10',NULL,NULL,'Trả hàng lỗi',2);
/*!40000 ALTER TABLE `docket_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docket_variant`
--

DROP TABLE IF EXISTS `docket_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docket_variant` (
  `docket_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`docket_id`,`variant_id`),
  KEY `FK_DOCKET_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_DOCKET_VARIANT_ON_DOCKET` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`),
  CONSTRAINT `FK_DOCKET_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docket_variant`
--

LOCK TABLES `docket_variant` WRITE;
/*!40000 ALTER TABLE `docket_variant` DISABLE KEYS */;
INSERT INTO `docket_variant` VALUES (1,1,15),(1,2,20),(2,1,3),(2,2,3),(3,1,3),(3,2,3),(4,3,15),(4,4,10),(6,5,10),(7,11,20),(8,10,17),(11,6,22),(14,16,1),(14,17,1),(14,18,1),(15,16,1),(15,17,1),(15,18,1),(16,18,1),(17,1,10),(19,12,100),(20,12,1),(21,11,1),(21,12,1),(21,14,1),(21,15,1),(21,16,1),(21,17,1),(21,18,1),(22,18,15),(22,19,50),(22,20,100),(22,21,200),(22,22,122),(22,23,132),(23,22,12),(23,23,12),(24,23,1);
/*!40000 ALTER TABLE `docket_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `office_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `job_type_id` bigint NOT NULL,
  `job_level_id` bigint NOT NULL,
  `job_title_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_employee_user` (`user_id`),
  KEY `FK_EMPLOYEE_ON_DEPARTMENT` (`department_id`),
  KEY `FK_EMPLOYEE_ON_JOB_LEVEL` (`job_level_id`),
  KEY `FK_EMPLOYEE_ON_JOB_TITLE` (`job_title_id`),
  KEY `FK_EMPLOYEE_ON_JOB_TYPE` (`job_type_id`),
  KEY `FK_EMPLOYEE_ON_OFFICE` (`office_id`),
  CONSTRAINT `FK_EMPLOYEE_ON_DEPARTMENT` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_JOB_LEVEL` FOREIGN KEY (`job_level_id`) REFERENCES `job_level` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_JOB_TITLE` FOREIGN KEY (`job_title_id`) REFERENCES `job_title` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_JOB_TYPE` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_OFFICE` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`),
  CONSTRAINT `FK_EMPLOYEE_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'2024-09-17 21:07:00','2024-09-17 21:07:00',NULL,NULL,5,5,5,1,4,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guarantee`
--

DROP TABLE IF EXISTS `guarantee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guarantee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guarantee`
--

LOCK TABLES `guarantee` WRITE;
/*!40000 ALTER TABLE `guarantee` DISABLE KEYS */;
INSERT INTO `guarantee` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Bảo hành 6 tháng',NULL,1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Bảo hành 1 năm','Lorem ipsum dolor sit amet, consectetur adipiscing elit',1);
/*!40000 ALTER TABLE `guarantee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `size` bigint NOT NULL,
  `group` varchar(255) NOT NULL,
  `is_thumbnail` bit(1) NOT NULL,
  `is_eliminated` bit(1) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_image_name` (`name`),
  UNIQUE KEY `uc_image_path` (`path`),
  KEY `FK_IMAGE_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_IMAGE_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'2024-09-05 16:46:10','2024-09-21 22:30:48',NULL,NULL,'img-8867497181014530022.jpg','http://localhost:8085/images/img-8867497181014530022.jpg','image/jpeg',16505,'P',_binary '\0',_binary '',1),(2,'2024-09-10 13:54:45','2024-09-21 22:30:48',NULL,NULL,'img-6876419190207016207.jpg','http://localhost:8085/images/img-6876419190207016207.jpg','image/jpeg',56986,'P',_binary '\0',_binary '',1),(3,'2024-09-10 13:54:45','2024-09-21 22:30:48',NULL,NULL,'img-7403140028277115431.jpg','http://localhost:8085/images/img-7403140028277115431.jpg','image/jpeg',80902,'P',_binary '',_binary '\0',1),(4,'2024-09-10 13:54:45','2024-09-21 22:30:48',NULL,NULL,'img-17380650318027504218.jpg','http://localhost:8085/images/img-17380650318027504218.jpg','image/jpeg',62369,'P',_binary '\0',_binary '\0',1),(5,'2024-09-10 13:54:45','2024-09-21 22:30:48',NULL,NULL,'img-3832884609790674209.jpg','http://localhost:8085/images/img-3832884609790674209.jpg','image/jpeg',53103,'P',_binary '\0',_binary '\0',1),(6,'2024-09-10 13:54:45','2024-09-21 22:30:48',NULL,NULL,'img-17058113724253462455.jpg','http://localhost:8085/images/img-17058113724253462455.jpg','image/jpeg',53734,'P',_binary '\0',_binary '\0',1),(7,'2024-09-10 13:57:29','2024-09-21 22:31:32',NULL,NULL,'img-6864934853351552807.jpg','http://localhost:8085/images/img-6864934853351552807.jpg','image/jpeg',41801,'P',_binary '',_binary '\0',2),(8,'2024-09-10 13:57:29','2024-09-21 22:31:32',NULL,NULL,'img-3338283585285453898.jpg','http://localhost:8085/images/img-3338283585285453898.jpg','image/jpeg',155951,'P',_binary '\0',_binary '\0',2),(9,'2024-09-10 13:57:29','2024-09-21 22:31:32',NULL,NULL,'img-6116555780732932258.jpg','http://localhost:8085/images/img-6116555780732932258.jpg','image/jpeg',121199,'P',_binary '\0',_binary '\0',2),(10,'2024-09-10 13:57:29','2024-09-21 22:31:32',NULL,NULL,'img-16734925685065067395.jpg','http://localhost:8085/images/img-16734925685065067395.jpg','image/jpeg',94973,'P',_binary '\0',_binary '\0',2),(11,'2024-09-10 13:57:29','2024-09-21 22:31:32',NULL,NULL,'img-9692509246004213080.jpg','http://localhost:8085/images/img-9692509246004213080.jpg','image/jpeg',63448,'P',_binary '\0',_binary '\0',2),(12,'2024-09-16 20:42:33','2024-09-21 22:31:44',NULL,NULL,'img-4581982795670243459.jpg','http://localhost:8085/images/img-4581982795670243459.jpg','image/jpeg',36488,'P',_binary '',_binary '\0',3),(13,'2024-09-16 20:42:33','2024-09-21 22:31:44',NULL,NULL,'img-8499506902794632365.jpg','http://localhost:8085/images/img-8499506902794632365.jpg','image/jpeg',37564,'P',_binary '\0',_binary '\0',3),(14,'2024-09-16 20:42:33','2024-09-21 22:31:44',NULL,NULL,'img-16296702464449205553.jpg','http://localhost:8085/images/img-16296702464449205553.jpg','image/jpeg',35608,'P',_binary '\0',_binary '\0',3),(15,'2024-09-16 21:11:39','2024-09-17 12:40:50',NULL,NULL,'img-17536374359709867905.jpg','http://localhost:8085/images/img-17536374359709867905.jpg','image/jpeg',76526,'P',_binary '',_binary '\0',5),(16,'2024-09-16 21:11:39','2024-09-17 12:40:50',NULL,NULL,'img-12929984365520027765.jpg','http://localhost:8085/images/img-12929984365520027765.jpg','image/jpeg',80001,'P',_binary '\0',_binary '\0',5),(25,'2024-09-17 12:57:44','2024-09-21 22:32:06',NULL,NULL,'img-9629082519855969168.jpg','http://localhost:8085/images/img-9629082519855969168.jpg','image/jpeg',53414,'P',_binary '',_binary '\0',8),(26,'2024-09-17 12:57:44','2024-09-21 22:32:06',NULL,NULL,'img-3744475769968788943.jpg','http://localhost:8085/images/img-3744475769968788943.jpg','image/jpeg',28958,'P',_binary '\0',_binary '\0',8),(27,'2024-09-17 12:57:44','2024-09-21 22:32:06',NULL,NULL,'img-3637463293577079787.jpg','http://localhost:8085/images/img-3637463293577079787.jpg','image/jpeg',34078,'P',_binary '\0',_binary '\0',8),(28,'2024-09-17 12:57:44','2024-09-21 22:32:06',NULL,NULL,'img-13830168864078835856.jpg','http://localhost:8085/images/img-13830168864078835856.jpg','image/jpeg',45985,'P',_binary '\0',_binary '\0',8),(29,'2024-09-17 13:05:50','2024-09-17 13:05:50',NULL,NULL,'img-6036695152346698301.jpg','http://localhost:8085/images/img-6036695152346698301.jpg','image/jpeg',24306,'P',_binary '\0',_binary '\0',9),(30,'2024-09-17 13:05:50','2024-09-17 13:05:50',NULL,NULL,'img-12879095040910191662.jpg','http://localhost:8085/images/img-12879095040910191662.jpg','image/jpeg',8908,'P',_binary '\0',_binary '\0',9),(31,'2024-09-17 13:05:50','2024-09-17 13:05:50',NULL,NULL,'img-8839731648623115819.jpg','http://localhost:8085/images/img-8839731648623115819.jpg','image/jpeg',41882,'P',_binary '',_binary '\0',9),(32,'2024-09-17 13:08:33','2024-09-21 22:29:03',NULL,NULL,'img-7050814346506840664.jpg','http://localhost:8085/images/img-7050814346506840664.jpg','image/jpeg',38069,'P',_binary '\0',_binary '\0',10),(33,'2024-09-17 13:08:33','2024-09-21 22:29:03',NULL,NULL,'img-17682404572566900798.jpg','http://localhost:8085/images/img-17682404572566900798.jpg','image/png',111015,'P',_binary '',_binary '\0',10),(34,'2024-09-17 14:56:17','2024-09-21 22:29:15',NULL,NULL,'img-7600281146789231289.jpg','http://localhost:8085/images/img-7600281146789231289.jpg','image/jpeg',232933,'P',_binary '\0',_binary '\0',11),(35,'2024-09-17 14:56:17','2024-09-21 22:29:15',NULL,NULL,'img-5785669188156059231.jpg','http://localhost:8085/images/img-5785669188156059231.jpg','image/jpeg',231405,'P',_binary '\0',_binary '\0',11),(36,'2024-09-17 14:56:17','2024-09-21 22:29:15',NULL,NULL,'img-2133875927644014530.jpg','http://localhost:8085/images/img-2133875927644014530.jpg','image/jpeg',157333,'P',_binary '',_binary '\0',11),(41,'2024-09-17 19:59:09','2024-09-21 22:29:34',NULL,NULL,'img-14875328365316340639.jpg','http://localhost:8085/images/img-14875328365316340639.jpg','image/jpeg',46444,'P',_binary '',_binary '\0',14),(42,'2024-09-17 19:59:09','2024-09-21 22:29:34',NULL,NULL,'img-7492298890110691450.jpg','http://localhost:8085/images/img-7492298890110691450.jpg','image/jpeg',42612,'P',_binary '\0',_binary '\0',14),(43,'2024-09-17 19:59:09','2024-09-21 22:29:34',NULL,NULL,'img-5040608035549538205.jpg','http://localhost:8085/images/img-5040608035549538205.jpg','image/jpeg',46761,'P',_binary '\0',_binary '\0',14),(44,'2024-09-17 19:59:09','2024-09-21 22:29:34',NULL,NULL,'img-17564431967193621050.jpg','http://localhost:8085/images/img-17564431967193621050.jpg','image/jpeg',39301,'P',_binary '\0',_binary '\0',14),(45,'2024-09-17 20:04:21','2024-09-21 22:29:50',NULL,NULL,'img-14313231818213603276.jpg','http://localhost:8085/images/img-14313231818213603276.jpg','image/jpeg',45085,'P',_binary '',_binary '\0',15),(46,'2024-09-17 20:04:21','2024-09-21 22:29:50',NULL,NULL,'img-2645128087542789740.jpg','http://localhost:8085/images/img-2645128087542789740.jpg','image/jpeg',92003,'P',_binary '\0',_binary '\0',15),(47,'2024-09-17 20:04:21','2024-09-21 22:29:50',NULL,NULL,'img-312857856643956553.jpg','http://localhost:8085/images/img-312857856643956553.jpg','image/jpeg',45085,'P',_binary '\0',_binary '\0',15),(48,'2024-09-17 20:07:27','2024-09-21 22:30:05',NULL,NULL,'img-13875298347191029869.jpg','http://localhost:8085/images/img-13875298347191029869.jpg','image/jpeg',43193,'P',_binary '',_binary '\0',16),(49,'2024-09-17 20:07:27','2024-09-21 22:30:05',NULL,NULL,'img-7439043832825170428.jpg','http://localhost:8085/images/img-7439043832825170428.jpg','image/jpeg',65465,'P',_binary '\0',_binary '\0',16),(50,'2024-09-17 20:07:27','2024-09-21 22:30:05',NULL,NULL,'img-15555753352297869696.jpg','http://localhost:8085/images/img-15555753352297869696.jpg','image/jpeg',68055,'P',_binary '\0',_binary '\0',16),(51,'2024-09-17 20:29:36','2024-09-21 22:28:19',NULL,NULL,'img-9937861398717235549.jpg','http://localhost:8085/images/img-9937861398717235549.jpg','image/jpeg',62327,'P',_binary '',_binary '\0',17),(52,'2024-09-17 20:29:36','2024-09-21 22:28:19',NULL,NULL,'img-6157483626788586271.jpg','http://localhost:8085/images/img-6157483626788586271.jpg','image/jpeg',72189,'P',_binary '\0',_binary '\0',17),(53,'2024-09-17 20:34:07','2024-09-21 22:28:05',NULL,NULL,'img-4821457586485716213.jpg','http://localhost:8085/images/img-4821457586485716213.jpg','image/jpeg',69836,'P',_binary '',_binary '\0',18),(54,'2024-09-17 20:34:07','2024-09-21 22:28:05',NULL,NULL,'img-17920185779982915845.jpg','http://localhost:8085/images/img-17920185779982915845.jpg','image/jpeg',77020,'P',_binary '\0',_binary '\0',18),(55,'2024-09-17 20:34:07','2024-09-21 22:28:05',NULL,NULL,'img-10674905859153060170.jpg','http://localhost:8085/images/img-10674905859153060170.jpg','image/jpeg',82118,'P',_binary '\0',_binary '\0',18),(56,'2024-09-21 20:57:16','2024-09-21 22:27:32',NULL,NULL,'img-8434401986776683186.jpg','http://localhost:8085/images/img-8434401986776683186.jpg','image/jpeg',321181,'P',_binary '',_binary '\0',20),(57,'2024-09-21 20:57:16','2024-09-21 22:27:32',NULL,NULL,'img-14630498179061387495.jpg','http://localhost:8085/images/img-14630498179061387495.jpg','image/jpeg',329829,'P',_binary '\0',_binary '\0',20),(58,'2024-09-21 20:59:39','2024-09-21 22:27:16',NULL,NULL,'img-5704969425967509095.jpg','http://localhost:8085/images/img-5704969425967509095.jpg','image/jpeg',53414,'P',_binary '',_binary '\0',21),(59,'2024-09-21 20:59:39','2024-09-21 22:27:16',NULL,NULL,'img-9110252121975309863.jpg','http://localhost:8085/images/img-9110252121975309863.jpg','image/jpeg',28958,'P',_binary '\0',_binary '\0',21),(60,'2024-09-21 21:02:26','2024-09-21 22:32:41',NULL,NULL,'img-8738139901985556225.jpg','http://localhost:8085/images/img-8738139901985556225.jpg','image/jpeg',266677,'P',_binary '\0',_binary '\0',22),(61,'2024-09-21 21:02:26','2024-09-21 22:32:41',NULL,NULL,'img-1010240614059084378.jpg','http://localhost:8085/images/img-1010240614059084378.jpg','image/jpeg',246013,'P',_binary '',_binary '\0',22),(62,'2024-09-21 22:40:02','2024-09-21 22:40:02',NULL,NULL,'img-5036178236463989347.jpg','http://localhost:8085/images/img-5036178236463989347.jpg','image/jpeg',39672,'P',_binary '',_binary '\0',23),(63,'2024-09-21 22:40:02','2024-09-21 22:40:02',NULL,NULL,'img-2300346997770564545.jpg','http://localhost:8085/images/img-2300346997770564545.jpg','image/jpeg',34005,'P',_binary '\0',_binary '\0',23),(64,'2024-09-21 22:40:02','2024-09-21 22:40:02',NULL,NULL,'img-3899766602595671191.jpg','http://localhost:8085/images/img-3899766602595671191.jpg','image/jpeg',45608,'P',_binary '\0',_binary '\0',23),(65,'2024-09-21 22:42:30','2024-09-21 22:42:30',NULL,NULL,'img-15494931604979801596.jpg','http://localhost:8085/images/img-15494931604979801596.jpg','image/jpeg',78073,'P',_binary '',_binary '\0',24),(66,'2024-09-21 22:42:30','2024-09-21 22:42:30',NULL,NULL,'img-4770321481080744246.jpg','http://localhost:8085/images/img-4770321481080744246.jpg','image/jpeg',47048,'P',_binary '\0',_binary '\0',24),(67,'2024-09-21 22:42:30','2024-09-21 22:42:30',NULL,NULL,'img-14280819330953706994.jpg','http://localhost:8085/images/img-14280819330953706994.jpg','image/jpeg',41110,'P',_binary '\0',_binary '\0',24);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_level`
--

DROP TABLE IF EXISTS `job_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_level` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_level`
--

LOCK TABLES `job_level` WRITE;
/*!40000 ALTER TABLE `job_level` DISABLE KEYS */;
INSERT INTO `job_level` VALUES (1,'2024-07-11 23:37:21','2024-07-20 10:54:26',NULL,NULL,'Senior',1),(2,'2024-07-08 16:13:12','2024-07-26 19:37:23',NULL,NULL,'Master',2),(3,'2024-07-20 12:14:44','2024-07-30 12:29:20',NULL,NULL,'Intern',3),(4,'2024-07-08 19:12:42','2024-07-16 21:32:18',NULL,NULL,'Fresher',1);
/*!40000 ALTER TABLE `job_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_title`
--

DROP TABLE IF EXISTS `job_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_title` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_title`
--

LOCK TABLES `job_title` WRITE;
/*!40000 ALTER TABLE `job_title` DISABLE KEYS */;
INSERT INTO `job_title` VALUES (1,'2024-07-11 23:37:21','2024-07-20 10:54:26',NULL,NULL,'Marketing Manager',1),(2,'2024-07-08 16:13:12','2024-07-26 19:37:23',NULL,NULL,'Librarian',1),(3,'2024-07-20 12:14:44','2024-07-30 12:29:20',NULL,NULL,'Chemical Engineer',3),(4,'2024-07-08 19:12:42','2024-07-16 21:32:18',NULL,NULL,'Paralegal',1),(5,'2024-07-29 23:30:36','2024-07-15 11:44:18',NULL,NULL,'Compensation Analyst',3);
/*!40000 ALTER TABLE `job_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_type`
--

DROP TABLE IF EXISTS `job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_type`
--

LOCK TABLES `job_type` WRITE;
/*!40000 ALTER TABLE `job_type` DISABLE KEYS */;
INSERT INTO `job_type` VALUES (1,'2024-07-11 23:37:21','2024-07-20 10:54:26',NULL,NULL,'Full-time',1),(2,'2024-07-08 16:13:12','2024-07-26 19:37:23',NULL,NULL,'Part-time',1);
/*!40000 ALTER TABLE `job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  `user_id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_MESSAGE_ON_ROOM` (`room_id`),
  KEY `FK_MESSAGE_ON_USER` (`user_id`),
  CONSTRAINT `FK_MESSAGE_ON_ROOM` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  CONSTRAINT `FK_MESSAGE_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'2024-09-20 21:44:12','2024-09-20 21:44:12',NULL,NULL,'Xin chào tôi là minh phú',1,6,4),(2,'2024-09-20 21:44:21','2024-09-20 21:44:21',NULL,NULL,'ừ',1,1,4),(3,'2024-10-09 12:26:03','2024-10-09 12:26:03',NULL,NULL,'xin chào',1,3,3),(4,'2024-10-09 12:26:22','2024-10-09 12:26:22',NULL,NULL,'chào bạn, tôi có thể giúp gì cho bạn',1,1,3);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `anchor` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_NOTIFICATION_ON_USER` (`user_id`),
  CONSTRAINT `FK_NOTIFICATION_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'2024-09-16 20:38:18','2024-09-16 20:38:18',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng U5TQROFCDDHN của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/U5TQROFCDDHN',1),(2,'2024-09-16 21:14:14','2024-09-16 21:14:14',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng MOPZDIDLKEB7 của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/MOPZDIDLKEB7',2),(3,'2024-09-16 21:16:29','2024-09-16 21:16:29',NULL,NULL,3,'REVIEW','Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm bạc quai gỗ.','/user/reward',1),(4,'2024-09-17 12:12:25','2024-09-17 12:12:25',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng 94VG9BWY9TRL của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/94VG9BWY9TRL',1),(5,'2024-09-17 12:13:56','2024-09-17 12:13:56',NULL,NULL,3,'REVIEW','Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm tử sa đế lương.','/user/reward',1),(6,'2024-09-17 12:14:13','2024-09-17 12:14:13',NULL,NULL,3,'REVIEW','Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm tử sa đế lương.','/user/reward',1),(7,'2024-09-17 12:42:26','2024-09-17 12:42:26',NULL,NULL,3,'ORDER','Đơn hàng U5TQROFCDDHN của bạn đã được duyệt.','/order/detail/U5TQROFCDDHN',1),(8,'2024-09-17 14:49:10','2024-09-17 14:49:10',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng O9QNN5L5U8GN của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/O9QNN5L5U8GN',1),(9,'2024-09-17 15:09:51','2024-09-17 15:09:51',NULL,NULL,3,'ORDER','Đơn hàng O9QNN5L5U8GN của bạn đã được duyệt.','/order/detail/O9QNN5L5U8GN',1),(10,'2024-09-17 16:19:03','2024-09-17 16:19:03',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng 6KK9CHEFWZJG của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/6KK9CHEFWZJG',1),(11,'2024-09-17 22:09:29','2024-09-17 22:09:29',NULL,NULL,3,'ORDER','Đơn hàng Z8WTI2ZJP1GH của bạn đã được duyệt. Phí vận chuyển là 27.500 ₫. Tổng tiền cần trả là 308.000 ₫.','/order/detail/Z8WTI2ZJP1GH',1),(12,'2024-09-17 22:10:00','2024-09-17 22:10:00',NULL,NULL,3,'ORDER','Đơn hàng 6KK9CHEFWZJG của bạn đã được duyệt.','/order/detail/6KK9CHEFWZJG',1),(13,'2024-09-17 22:10:27','2024-09-17 22:10:27',NULL,NULL,3,'ORDER','Đơn hàng TWNJVNNV7MR1 của bạn đã được duyệt. Phí vận chuyển là 27.500 ₫. Tổng tiền cần trả là 1.182.500 ₫.','/order/detail/TWNJVNNV7MR1',1),(14,'2024-09-17 22:25:45','2024-09-17 22:25:45',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng HMUK3WB6ITQQ của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/HMUK3WB6ITQQ',1),(15,'2024-09-20 20:34:51','2024-09-20 20:34:51',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng AHDYL896483G của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/AHDYL896483G',1),(16,'2024-09-20 20:36:14','2024-09-20 20:36:14',NULL,NULL,3,'ORDER','Đơn hàng AHDYL896483G của bạn đã được duyệt.','/order/detail/AHDYL896483G',1),(17,'2024-09-20 20:37:45','2024-09-20 20:37:45',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng MQAJRM6X3IPP của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/MQAJRM6X3IPP',1),(18,'2024-09-20 20:38:09','2024-09-20 20:38:09',NULL,NULL,3,'ORDER','Đơn hàng MQAJRM6X3IPP của bạn đã được duyệt.','/order/detail/MQAJRM6X3IPP',1),(19,'2024-09-20 20:49:54','2024-09-20 20:49:54',NULL,NULL,3,'ORDER','Đơn hàng Q5WKXRDMEGQQ của bạn đã được duyệt.','/order/detail/Q5WKXRDMEGQQ',1),(20,'2024-09-20 21:48:45','2024-09-20 21:48:45',NULL,NULL,6,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng FJRIPTYXMUZC của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/FJRIPTYXMUZC',1),(21,'2024-09-20 21:54:34','2024-09-20 21:54:34',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng V2UEAEMXQOG9 của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/V2UEAEMXQOG9',1),(22,'2024-09-20 21:55:13','2024-09-20 21:55:13',NULL,NULL,3,'ORDER','Đơn hàng V2UEAEMXQOG9 của bạn đã được duyệt.','/order/detail/V2UEAEMXQOG9',1),(23,'2024-09-20 21:56:11','2024-09-20 21:56:11',NULL,NULL,3,'REVIEW','Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm bình an thủy tinh màu đen trong suốt.','/user/reward',1),(24,'2024-09-20 21:56:34','2024-09-20 21:56:34',NULL,NULL,3,'REVIEW','Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm bình an thủy tinh màu đen trong suốt.','/user/reward',1),(25,'2024-09-21 17:03:56','2024-09-21 17:03:56',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng BEUDB4WR2XYS của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/BEUDB4WR2XYS',1),(26,'2024-09-21 17:06:49','2024-09-21 17:06:49',NULL,NULL,3,'ORDER','Đơn hàng BEUDB4WR2XYS của bạn đã được duyệt.','/order/detail/BEUDB4WR2XYS',1),(27,'2024-09-21 20:14:56','2024-09-21 20:14:56',NULL,NULL,3,'ORDER','Đơn hàng ONNNKHMULPMV của bạn đã được duyệt. Phí vận chuyển là 42.500 ₫. Tổng tiền cần trả là 930.750 ₫.','/order/detail/ONNNKHMULPMV',2),(28,'2024-09-22 10:57:11','2024-09-22 10:57:11',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng YPT3WHHAHX0B của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/YPT3WHHAHX0B',1),(29,'2024-09-22 10:58:06','2024-09-22 10:58:06',NULL,NULL,3,'ORDER','Đơn hàng YPT3WHHAHX0B của bạn đã được duyệt.','/order/detail/YPT3WHHAHX0B',1),(30,'2024-10-09 12:21:07','2024-10-09 12:21:07',NULL,NULL,3,'CHECKOUT_PAYPAL_CANCEL','Bạn đã hủy thanh toán PayPal cho đơn hàng S0JWTIIX4YFF.','/order/detail/S0JWTIIX4YFF',1),(31,'2024-10-09 12:21:37','2024-10-09 12:21:37',NULL,NULL,3,'CHECKOUT_PAYPAL_SUCCESS','Đơn hàng S0JWTIIX4YFF của bạn đã được thanh toán thành công bằng PayPal.','/order/detail/S0JWTIIX4YFF',1),(32,'2024-10-09 12:24:02','2024-10-09 12:24:02',NULL,NULL,3,'ORDER','Đơn hàng S0JWTIIX4YFF của bạn đã được duyệt.','/order/detail/S0JWTIIX4YFF',1),(33,'2024-10-09 12:25:15','2024-10-09 12:25:15',NULL,NULL,3,'REVIEW','Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Bộ ấm chén du lịch họa tiết hoa hải đường.','/user/reward',1),(34,'2024-10-09 12:25:36','2024-10-09 12:25:36',NULL,NULL,3,'REVIEW','Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Bộ ấm chén du lịch họa tiết hoa hải đường.','/user/reward',1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_office_address` (`address_id`),
  CONSTRAINT `FK_OFFICE_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES (1,'2024-07-21 07:19:24','2024-07-26 17:40:14',NULL,NULL,'Talane',1,3),(2,'2024-07-09 08:07:20','2024-07-23 08:36:12',NULL,NULL,'Skyndu',2,1),(3,'2024-07-29 10:10:15','2024-07-21 22:05:41',NULL,NULL,'Yadel',3,2),(4,'2024-07-14 21:49:48','2024-07-11 03:03:22',NULL,NULL,'BlogXS',4,1),(5,'2024-07-18 11:44:50','2024-07-19 19:33:23',NULL,NULL,'BlogXS',5,3);
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  `to_name` varchar(255) NOT NULL,
  `to_phone` varchar(255) NOT NULL,
  `to_address` varchar(255) NOT NULL,
  `to_ward_name` varchar(255) NOT NULL,
  `to_district_name` varchar(255) NOT NULL,
  `to_province_name` varchar(255) NOT NULL,
  `order_resource_id` bigint NOT NULL,
  `order_cancellation_reason_id` bigint DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `total_amount` decimal(15,5) NOT NULL,
  `tax` decimal(15,5) NOT NULL,
  `shipping_cost` decimal(15,5) NOT NULL,
  `total_pay` decimal(15,5) NOT NULL,
  `payment_method_type` varchar(255) NOT NULL,
  `payment_status` tinyint NOT NULL,
  `paypal_order_id` varchar(255) DEFAULT NULL,
  `paypal_order_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_order_code` (`code`),
  KEY `FK_ORDER_ON_ORDER_CANCELLATION_REASON` (`order_cancellation_reason_id`),
  KEY `FK_ORDER_ON_ORDER_RESOURCE` (`order_resource_id`),
  KEY `FK_ORDER_ON_USER` (`user_id`),
  CONSTRAINT `FK_ORDER_ON_ORDER_CANCELLATION_REASON` FOREIGN KEY (`order_cancellation_reason_id`) REFERENCES `order_cancellation_reason` (`id`),
  CONSTRAINT `FK_ORDER_ON_ORDER_RESOURCE` FOREIGN KEY (`order_resource_id`) REFERENCES `order_resource` (`id`),
  CONSTRAINT `FK_ORDER_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (16,'2024-09-16 20:37:56','2024-09-16 20:37:56',NULL,NULL,'U5TQROFCDDHN',4,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,350000.00000,0.10000,115500.00000,500500.00000,'PAYPAL',2,'1PL15970B7213413V','COMPLETED'),(17,'2024-09-16 21:13:52','2024-09-16 21:13:52',NULL,NULL,'MOPZDIDLKEB7',4,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,1800000.00000,0.10000,0.00000,1980000.00000,'PAYPAL',2,'95C32959K42400254','COMPLETED'),(18,'2024-09-17 12:12:02','2024-09-17 12:12:02',NULL,NULL,'94VG9BWY9TRL',4,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,800000.00000,0.10000,0.00000,880000.00000,'PAYPAL',2,'61D26171K51920908','COMPLETED'),(19,'2024-09-17 12:49:52','2024-09-17 12:49:52',NULL,NULL,'5A6AC1N9OUGR',5,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,350000.00000,0.10000,0.00000,385000.00000,'CASH',1,NULL,NULL),(20,'2024-09-17 12:50:30','2024-09-17 12:50:30',NULL,NULL,'YL72LKSS16SM',5,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,600000.00000,0.10000,0.00000,660000.00000,'CASH',1,NULL,NULL),(21,'2024-09-17 14:48:46','2024-09-17 14:48:46',NULL,NULL,'O9QNN5L5U8GN',3,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,1500000.00000,0.10000,115500.00000,1765500.00000,'PAYPAL',2,'0BT12295735556439','COMPLETED'),(22,'2024-09-17 15:14:55','2024-09-17 15:14:55',NULL,NULL,'TWNJVNNV7MR1',2,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,1050000.00000,0.10000,27500.00000,1182500.00000,'CASH',2,NULL,NULL),(23,'2024-09-17 16:18:39','2024-09-17 16:18:39',NULL,NULL,'6KK9CHEFWZJG',3,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,1400000.00000,0.10000,27500.00000,1567500.00000,'PAYPAL',2,'6WP21275HM831532E','COMPLETED'),(24,'2024-09-17 21:20:32','2024-09-17 21:20:32',NULL,NULL,'Z8WTI2ZJP1GH',2,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,255000.00000,0.10000,27500.00000,308000.00000,'CASH',1,NULL,NULL),(25,'2024-09-17 22:25:01','2024-09-17 22:25:01',NULL,NULL,'HMUK3WB6ITQQ',1,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,350000.00000,0.10000,0.00000,385000.00000,'PAYPAL',2,'69L53053XF218620B','COMPLETED'),(26,'2024-09-18 09:38:11','2024-09-18 09:38:11',NULL,NULL,'RK83AAWU06LN',1,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,294000.00000,0.10000,0.00000,323400.00000,'CASH',1,NULL,NULL),(27,'2024-09-18 11:16:12','2024-09-18 11:16:12',NULL,NULL,'Q5WKXRDMEGQQ',2,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,10710000.00000,0.10000,27500.00000,11808500.00000,'PAYPAL',1,'5TX798484X015343J','CREATED'),(28,'2024-09-20 20:34:24','2024-09-20 20:34:24',NULL,NULL,'AHDYL896483G',2,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,1050000.00000,0.10000,27500.00000,1182500.00000,'PAYPAL',2,'4EF83935R3419232R','COMPLETED'),(29,'2024-09-20 20:37:29','2024-09-20 20:37:29',NULL,NULL,'MQAJRM6X3IPP',1,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,630000.00000,0.10000,27500.00000,720500.00000,'PAYPAL',2,'81K138604E9419110','COMPLETED'),(30,'2024-09-20 21:48:21','2024-09-20 21:48:21',NULL,NULL,'FJRIPTYXMUZC',1,'Nguyen Minh Phu','09876544212','xóm 2','Xã Lưu Sơn','Huyện Đô Lương','Nghệ An',1,NULL,NULL,6,11255000.00000,0.10000,0.00000,12380500.00000,'PAYPAL',2,'7VK39974PR350670N','COMPLETED'),(31,'2024-09-20 21:54:20','2024-09-20 21:54:20',NULL,NULL,'V2UEAEMXQOG9',4,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,500000.00000,0.10000,27500.00000,577500.00000,'PAYPAL',2,'5FD52354FL3000042','COMPLETED'),(32,'2024-09-21 17:03:33','2024-09-21 17:03:33',NULL,NULL,'BEUDB4WR2XYS',4,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,150000.00000,0.10000,27500.00000,192500.00000,'PAYPAL',2,'4MK303326A7174732','COMPLETED'),(33,'2024-09-21 20:14:34','2024-09-21 20:14:34',NULL,NULL,'ONNNKHMULPMV',4,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,807500.00000,0.10000,42500.00000,930750.00000,'CASH',2,NULL,NULL),(34,'2024-09-22 10:56:41','2024-09-22 10:56:41',NULL,NULL,'YPT3WHHAHX0B',2,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,18800500.00000,0.10000,27500.00000,20708050.00000,'PAYPAL',2,'23A05286J6370294W','COMPLETED'),(35,'2024-10-09 12:20:49','2024-10-09 12:20:49',NULL,NULL,'S0JWTIIX4YFF',4,'Lương Trung Thuần','0366619640','Triều khúc','Xã Tân Triều','Huyện Thanh Trì','Hà Nội',1,NULL,NULL,3,80000000.00000,0.10000,27500.00000,88027500.00000,'PAYPAL',2,'1VB49674BS551832J','COMPLETED');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_cancellation_reason`
--

DROP TABLE IF EXISTS `order_cancellation_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_cancellation_reason` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_cancellation_reason`
--

LOCK TABLES `order_cancellation_reason` WRITE;
/*!40000 ALTER TABLE `order_cancellation_reason` DISABLE KEYS */;
INSERT INTO `order_cancellation_reason` VALUES (1,'2024-07-03 21:16:01','2024-07-18 00:55:52',NULL,NULL,'Giao hàng nhưng khách không nhận','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',1),(2,'2024-07-31 03:37:36','2024-07-20 05:49:33',NULL,NULL,'Hết hàng trong kho',NULL,1),(3,'2024-07-01 03:46:49','2024-07-22 10:13:24',NULL,NULL,'Khách hàng hủy',NULL,1),(4,'2024-07-14 10:30:34','2024-07-16 11:45:21',NULL,NULL,'Không liên hệ được','Cras felis urna, facilisis at finibus non, pharetra in turpis.',1),(5,'2024-07-26 05:18:38','2024-07-02 14:58:07',NULL,NULL,'Nhân viên làm sai',NULL,2),(6,'2024-07-03 21:16:01','2024-07-18 00:55:52',NULL,NULL,'Giao hàng nhưng khách không nhận','Lorem ipsum dolor sit amet, consectetur adipiscing elit.',1),(7,'2024-07-31 03:37:36','2024-07-20 05:49:33',NULL,NULL,'Hết hàng trong kho',NULL,1),(8,'2024-07-01 03:46:49','2024-07-22 10:13:24',NULL,NULL,'Khách hàng hủy',NULL,1),(9,'2024-07-14 10:30:34','2024-07-16 11:45:21',NULL,NULL,'Không liên hệ được','Cras felis urna, facilisis at finibus non, pharetra in turpis.',1),(10,'2024-07-26 05:18:38','2024-07-02 14:58:07',NULL,NULL,'Nhân viên làm sai',NULL,2);
/*!40000 ALTER TABLE `order_cancellation_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_resource`
--

DROP TABLE IF EXISTS `order_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `customer_resource_id` bigint DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_order_resource_code` (`code`),
  KEY `FK_ORDER_RESOURCE_ON_CUSTOMER_RESOURCE` (`customer_resource_id`),
  CONSTRAINT `FK_ORDER_RESOURCE_ON_CUSTOMER_RESOURCE` FOREIGN KEY (`customer_resource_id`) REFERENCES `customer_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_resource`
--

LOCK TABLES `order_resource` WRITE;
/*!40000 ALTER TABLE `order_resource` DISABLE KEYS */;
INSERT INTO `order_resource` VALUES (1,'2024-07-22 11:46:21','2024-07-13 04:37:06',NULL,NULL,'BIZ','Bizweb','Orange',NULL,1),(2,'2024-07-10 08:25:22','2024-07-08 03:30:06',NULL,NULL,'FBK','Facebook','Yellow',NULL,1),(3,'2024-07-22 20:39:26','2024-07-17 08:30:22',NULL,NULL,'HRV','Haravan','Blue',1,1);
/*!40000 ALTER TABLE `order_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_variant`
--

DROP TABLE IF EXISTS `order_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_variant` (
  `order_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `price` decimal(15,5) NOT NULL,
  `quantity` int NOT NULL,
  `amount` decimal(15,5) NOT NULL,
  PRIMARY KEY (`order_id`,`variant_id`),
  KEY `FK_ORDER_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_ORDER_VARIANT_ON_ORDER` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `FK_ORDER_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_variant`
--

LOCK TABLES `order_variant` WRITE;
/*!40000 ALTER TABLE `order_variant` DISABLE KEYS */;
INSERT INTO `order_variant` VALUES (16,1,350000.00000,1,350000.00000),(17,5,600000.00000,3,1800000.00000),(18,2,400000.00000,2,800000.00000),(19,1,350000.00000,1,350000.00000),(20,5,600000.00000,1,600000.00000),(21,10,750000.00000,2,1500000.00000),(22,1,350000.00000,3,1050000.00000),(23,1,350000.00000,2,700000.00000),(23,3,350000.00000,2,700000.00000),(24,12,255000.00000,1,255000.00000),(25,11,350000.00000,1,350000.00000),(26,11,294000.00000,1,294000.00000),(27,10,630000.00000,17,10710000.00000),(28,1,350000.00000,3,1050000.00000),(29,10,630000.00000,1,630000.00000),(30,6,500000.00000,22,11000000.00000),(30,12,255000.00000,1,255000.00000),(31,6,500000.00000,1,500000.00000),(32,12,150000.00000,1,150000.00000),(33,16,807500.00000,1,807500.00000),(34,18,18800500.00000,1,18800500.00000),(35,23,8000000.00000,10,80000000.00000);
/*!40000 ALTER TABLE `order_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'2023-07-16 00:00:00','2023-07-16 00:00:00',NULL,NULL,'Tiền mặt','CASH',1),(2,'2023-07-16 00:00:00','2023-07-16 00:00:00',NULL,NULL,'PayPal','PAYPAL',1);
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preorder`
--

DROP TABLE IF EXISTS `preorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_preorder` (`user_id`,`product_id`),
  KEY `FK_PREORDER_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_PREORDER_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_PREORDER_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preorder`
--

LOCK TABLES `preorder` WRITE;
/*!40000 ALTER TABLE `preorder` DISABLE KEYS */;
INSERT INTO `preorder` VALUES (1,'2024-07-03 21:16:01','2024-07-18 00:55:52',NULL,NULL,4,1,1);
/*!40000 ALTER TABLE `preorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text,
  `status` tinyint NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  `specifications` json DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `guarantee_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_product_code` (`code`),
  UNIQUE KEY `uc_product_slug` (`slug`),
  KEY `FK_PRODUCT_ON_BRAND` (`brand_id`),
  KEY `FK_PRODUCT_ON_CATEGORY` (`category_id`),
  KEY `FK_PRODUCT_ON_GUARANTEE` (`guarantee_id`),
  KEY `FK_PRODUCT_ON_SUPPLIER` (`supplier_id`),
  KEY `FK_PRODUCT_ON_UNIT` (`unit_id`),
  CONSTRAINT `FK_PRODUCT_ON_BRAND` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `FK_PRODUCT_ON_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_PRODUCT_ON_GUARANTEE` FOREIGN KEY (`guarantee_id`) REFERENCES `guarantee` (`id`),
  CONSTRAINT `FK_PRODUCT_ON_SUPPLIER` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  CONSTRAINT `FK_PRODUCT_ON_UNIT` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'2024-09-05 16:46:10','2024-09-05 16:46:10',NULL,NULL,'Ấm tử sa đế lương','1','am-tu-sa-de-luong',NULL,NULL,1,1,12,1,1,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Đất sét\"}, {\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủ công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": [\"150ml\", \"200ml\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Nâu\"]}], \"totalElements\": 2}',NULL,2),(2,'2024-09-10 13:57:29','2024-09-10 13:57:29',NULL,NULL,'Ấm Tử Sa Lê Hình','2','am-tu-sa-le-hinh',NULL,NULL,1,1,13,5,1,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Đất Sét\"}, {\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủy Công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Nâu\"]}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": [\"150ml\", \"200ml\"]}], \"totalElements\": 2}',NULL,1),(3,'2024-09-16 20:42:33','2024-09-16 20:42:33',NULL,NULL,'Ấm bạc quai gỗ','3','am-bac-quai-go',NULL,NULL,1,1,14,8,1,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Bạc\"}, {\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủ Công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Màu bạc\"]}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": [\"150 ml\"]}], \"totalElements\": 2}',NULL,1),(5,'2024-09-16 21:11:39','2024-09-16 21:11:39',NULL,NULL,'Ấm bình an thủy tinh màu đen trong suốt','4','am-binh-an-thuy-tinh-mau-den-trong-suot',NULL,NULL,1,1,17,1,1,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Thủy Tinh\"}, {\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủ Công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Trong suốt\"]}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": [\"150 ml\"]}], \"totalElements\": 2}',NULL,2),(8,'2024-09-17 12:57:44','2024-09-17 12:57:44',NULL,NULL,'Tượng di lạc may mắn và thịnh vượng','5','tuong-di-lac-may-man-va-thinh-vuong',NULL,NULL,1,4,10,4,1,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Gỗ\"}, {\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủ công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Nâu\"]}], \"totalElements\": 1}',NULL,1),(9,'2024-09-17 13:05:50','2024-09-17 13:05:50',NULL,NULL,'Trà Ô Long','6','tra-o-long',NULL,NULL,1,6,13,5,2,'{\"content\": [{\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủ Công\"}, {\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Trà Thiên Nhiên\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"400 gam\"]}], \"totalElements\": 1}',NULL,1),(10,'2024-09-17 13:08:33','2024-09-17 13:08:33',NULL,NULL,'Trà Xanh Cổ Thụ','7','tra-xanh-co-thu',NULL,NULL,1,6,13,5,2,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Thủ công\"}], \"totalElements\": 1}','{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"400 gm\"]}], \"totalElements\": 1}',NULL,1),(11,'2024-09-17 14:56:17','2024-09-17 14:56:17',NULL,NULL,'Trà Phổ Nhĩ','8','tra-pho-nhi',NULL,NULL,1,6,18,10,2,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Thiên Nhiên\"}, {\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủ Công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"300 gam\"]}], \"totalElements\": 1}',NULL,1),(14,'2024-09-17 19:59:09','2024-09-17 19:59:09',NULL,NULL,'Bộ chén trà du lịch','9','bo-am-chen-du-lich',NULL,NULL,1,2,12,1,2,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Gốm sứ\"}, {\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủ công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"1.2 kg\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Xanh ngọc\"]}], \"totalElements\": 2}',NULL,1),(15,'2024-09-17 20:04:21','2024-09-17 20:04:21',NULL,NULL,'Bộ trà tráng men Hương Thủy Ngọc','10','bo-tra-trang-men',NULL,NULL,1,2,11,2,2,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Thủy tinh\"}], \"totalElements\": 1}','{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Trong suốt\"]}, {\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"1.2 kg\"]}], \"totalElements\": 2}',NULL,1),(16,'2024-09-17 20:07:27','2024-09-17 20:07:27',NULL,NULL,'Bố ấm chén bằng sứ cao cấp kèm hộp có quai xách','11','bo-am-chen-bang-su-cao-cap-kem-hop-co-quai',NULL,NULL,1,2,12,1,2,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Gốm sứ\"}, {\"id\": 1, \"code\": \"donggoi\", \"name\": \"Đóng gói\", \"value\": \"Thủ công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Trắng\"]}, {\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"1.2 kg\"]}], \"totalElements\": 2}',NULL,1),(17,'2024-09-17 20:29:36','2024-09-17 20:29:36',NULL,NULL,'Bếp điện đen họa tiết hoa cúc vàng','13','bep-dien-den-hoa-tiet-hoa-cuc-vang',NULL,NULL,1,3,8,11,1,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Thép\"}], \"totalElements\": 1}','{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"2 kg\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Đen\"]}], \"totalElements\": 2}',NULL,1),(18,'2024-09-17 20:34:07','2024-09-17 20:34:07',NULL,NULL,'Bếp sưởi màu xanh có lưới sắt','14','bep-suoi-mau-xanh',NULL,NULL,1,3,8,11,1,'{\"content\": [{\"id\": 2, \"code\": \"chatlieu\", \"name\": \"Chất liệu\", \"value\": \"Thép\"}], \"totalElements\": 1}','{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"1.5 kg\"]}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Xanh\"]}], \"totalElements\": 2}',NULL,1),(20,'2024-09-21 20:57:16','2024-09-21 20:57:16',NULL,NULL,'Tác phẩm đại bàng tung cánh','19','dai-bang-tung-canh',NULL,NULL,1,4,6,3,1,'{\"content\": [{\"id\": 3, \"code\": \"xuat-su\", \"name\": \"Xuất xứ\", \"value\": \"Việt Nam\"}, {\"id\": 2, \"code\": \"chat-lieu\", \"name\": \"Chất liệu\", \"value\": \"Đá nguyên khối\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 4, \"code\": \"kichthuoc\", \"name\": \"Kích thước\", \"value\": [\"48x18x32 cm\"]}, {\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"9.22 Kg\"]}], \"totalElements\": 2}',NULL,1),(21,'2024-09-21 20:59:39','2024-09-21 20:59:39',NULL,NULL,'Tượng di lạc may mắn và thịnh vượng','20','di-lac',NULL,NULL,1,4,10,4,1,'{\"content\": [{\"id\": 3, \"code\": \"xuat-su\", \"name\": \"Xuất xứ\", \"value\": \"Việt Nam\"}, {\"id\": 2, \"code\": \"chat-lieu\", \"name\": \"Chất liệu\", \"value\": \"Gỗ tự nhiên\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"900 gram\"]}, {\"id\": 4, \"code\": \"kichthuoc\", \"name\": \"Kích thước\", \"value\": [\"28x10x20 cm\"]}], \"totalElements\": 2}',NULL,1),(22,'2024-09-21 21:02:26','2024-09-21 21:02:26',NULL,NULL,'Tác phẩm Thiên long nhả ngọc thạch anh xanh ','22','thien-long-nhả',NULL,NULL,1,4,6,3,1,'{\"content\": [{\"id\": 3, \"code\": \"xuat-su\", \"name\": \"Xuất xứ\", \"value\": \"Việt Nam\"}, {\"id\": 2, \"code\": \"chat-lieu\", \"name\": \"Chất liệu\", \"value\": \"Thạch anh\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": [\"2.64kg\"]}, {\"id\": 4, \"code\": \"kichthuoc\", \"name\": \"Kích thước\", \"value\": [\"32x10x25 cm\"]}], \"totalElements\": 2}',NULL,1),(23,'2024-09-21 22:40:02','2024-09-21 22:40:02',NULL,NULL,'Bộ trà giang sơn tráng men vẽ tay cao cấp 11 món','23','giang-son',NULL,NULL,1,5,12,1,3,'{\"content\": [{\"id\": 2, \"code\": \"chat-lieu\", \"name\": \"Chất liệu\", \"value\": \"Xứ\"}, {\"id\": 1, \"code\": \"dong-goi\", \"name\": \"Đóng gói\", \"value\": \"Thủ công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Trắng\"]}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": [\"50 ml\"]}], \"totalElements\": 2}',NULL,1),(24,'2024-09-21 22:42:30','2024-09-21 22:42:30',NULL,NULL,'Bộ ấm chén du lịch họa tiết hoa hải đường','24','hoa-hai-duong',NULL,NULL,1,5,12,1,3,'{\"content\": [{\"id\": 2, \"code\": \"chat-lieu\", \"name\": \"Chất liệu\", \"value\": \"Xứ\"}, {\"id\": 1, \"code\": \"dong-goi\", \"name\": \"Đóng gói\", \"value\": \"Thủ công\"}], \"totalElements\": 2}','{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": [\"Trắng\"]}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": [\"150 ml\"]}], \"totalElements\": 2}',NULL,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_inventory_limit`
--

DROP TABLE IF EXISTS `product_inventory_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_inventory_limit` (
  `product_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `minimum_limit` int DEFAULT NULL,
  `maximum_limit` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `FK_PRODUCT_INVENTORY_LIMIT_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventory_limit`
--

LOCK TABLES `product_inventory_limit` WRITE;
/*!40000 ALTER TABLE `product_inventory_limit` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_inventory_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tag` (
  `product_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `FK_PRODUCT_TAG_ON_TAG` (`tag_id`),
  CONSTRAINT `FK_PRODUCT_TAG_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_PRODUCT_TAG_ON_TAG` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
INSERT INTO `product_tag` VALUES (1,1),(2,1),(3,1),(5,1),(8,1),(9,1),(10,1),(11,1),(14,1),(15,1),(16,1),(17,1),(18,1),(20,1),(22,1),(23,1),(24,1),(1,2),(2,2),(3,2),(5,2),(8,2),(9,2),(10,2),(11,2),(14,2),(15,2),(16,2),(17,2),(18,2),(20,2),(22,2),(23,2),(24,2);
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `percent` int NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (3,'2024-09-14 11:14:35','2023-09-29 11:14:35',NULL,NULL,'Khuyến mãi tháng 9','2024-09-14 00:00:00','2024-09-29 00:00:00',15,2),(4,'2024-09-17 21:24:45','2024-09-17 21:24:45',NULL,NULL,'Khuyến mãi tháng 9','2024-09-18 00:00:00','2024-09-24 00:00:00',16,2),(5,'2024-09-20 21:57:54','2024-09-20 21:57:54',NULL,NULL,'Khuyến mãi mới','2024-09-20 00:00:00','2024-09-22 00:00:00',50,2),(6,'2024-09-21 20:12:46','2024-09-21 20:12:46',NULL,NULL,'Khuyến mãi','2024-09-22 00:00:00','2024-09-25 00:00:00',5,1),(7,'2024-09-21 20:13:19','2024-09-21 20:13:19',NULL,NULL,'Khuyến mãi 1','2024-09-21 00:00:00','2024-09-25 00:00:00',5,1),(8,'2024-10-09 12:27:38','2024-10-09 12:27:38',NULL,NULL,'Khuyen mai thang 10','2024-10-09 00:00:00','2024-10-19 00:00:00',20,1);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_product`
--

DROP TABLE IF EXISTS `promotion_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_product` (
  `promotion_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`promotion_id`,`product_id`),
  KEY `FK_PROMOTION_PRODUCT_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_PROMOTION_PRODUCT_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_PROMOTION_PRODUCT_ON_PROMOTION` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_product`
--

LOCK TABLES `promotion_product` WRITE;
/*!40000 ALTER TABLE `promotion_product` DISABLE KEYS */;
INSERT INTO `promotion_product` VALUES (4,9),(5,9),(4,10),(5,10),(3,11),(4,11),(5,11),(3,14),(7,14),(3,15),(7,15),(3,16),(7,16),(3,17),(6,17),(3,18),(6,18),(8,24);
/*!40000 ALTER TABLE `promotion_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Dung Tích','dungtich','Lorem ipsum dolor sit amet',1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Màu sắc','color',NULL,1),(3,'2024-09-17 12:58:46','2024-09-17 12:58:46',NULL,NULL,'Khối Lượng','khoiluong',NULL,1),(4,'2024-09-17 12:59:12','2024-09-17 12:59:12',NULL,NULL,'Kích thước','kichthuoc',NULL,1);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hà Nội','01'),(2,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Vĩnh Phúc','26'),(3,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bắc Ninh','27'),(4,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hải Dương','30'),(5,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hải Phòng','31'),(6,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hưng Yên','33'),(7,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thái Bình','34'),(8,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hà Nam','35'),(9,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Cà Mau','96'),(10,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hà Giang','02'),(11,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Cao Bằng','04'),(12,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bắc Kạn','06'),(13,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Tuyên Quang','08'),(14,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thái Nguyên','19'),(15,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Lạng Sơn','20'),(16,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Ninh','22'),(17,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bắc Giang','24'),(18,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Phú Thọ','25'),(19,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Lào Cai','10'),(20,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Điện Biên','11'),(21,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Lai Châu','12'),(22,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Sơn La','14'),(23,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Yên Bái','15'),(24,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hoà Bình','17'),(25,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bình Phước','70'),(26,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Tây Ninh','72'),(27,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bình Dương','74'),(28,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đồng Nai','75'),(29,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thành phố Hồ Chí Minh','79'),(30,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bà Rịa - Vũng Tàu','77'),(31,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Nam Định','36'),(32,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Ninh Bình','37'),(33,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thanh Hóa','38'),(34,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Nghệ An','40'),(35,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hà Tĩnh','42'),(36,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Bình','44'),(37,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Trị','45'),(38,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Thừa Thiên Huế','46'),(39,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đà Nẵng','48'),(40,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Nam','49'),(41,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Quảng Ngãi','51'),(42,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bình Định','52'),(43,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Phú Yên','54'),(44,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Khánh Hòa','56'),(45,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Ninh Thuận','58'),(46,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bình Thuận','60'),(47,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Kon Tum','62'),(48,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Gia Lai','64'),(49,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đắk Lắk','66'),(50,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đắk Nông','67'),(51,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Lâm Đồng','68'),(52,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Long An','80'),(53,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Tiền Giang','82'),(54,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bến Tre','83'),(55,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Trà Vinh','84'),(56,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Vĩnh Long','86'),(57,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Đồng Tháp','87'),(58,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'An Giang','89'),(59,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Kiên Giang','91'),(60,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Cần Thơ','92'),(61,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Hậu Giang','93'),(62,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Sóc Trăng','94'),(63,'2024-07-15 00:00:00','2024-07-15 00:00:00',NULL,NULL,'Bạc Liêu','95');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `supplier_id` bigint NOT NULL,
  `destination_id` bigint NOT NULL,
  `total_amount` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_purchase_order_code` (`code`),
  KEY `FK_PURCHASE_ORDER_ON_DESTINATION` (`destination_id`),
  KEY `FK_PURCHASE_ORDER_ON_SUPPLIER` (`supplier_id`),
  CONSTRAINT `FK_PURCHASE_ORDER_ON_DESTINATION` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`id`),
  CONSTRAINT `FK_PURCHASE_ORDER_ON_SUPPLIER` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
INSERT INTO `purchase_order` VALUES (1,'2024-09-17 15:00:19','2024-09-17 15:00:19',NULL,NULL,'00121',10,1,750000,NULL,5);
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_variant`
--

DROP TABLE IF EXISTS `purchase_order_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order_variant` (
  `purchase_order_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `cost` double NOT NULL,
  `quantity` int NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`purchase_order_id`,`variant_id`),
  KEY `FK_PURCHASE_ORDER_VARIANT_ON_VARIANT` (`variant_id`),
  CONSTRAINT `FK_PURCHASE_ORDER_VARIANT_ON_PURCHASE_ORDER` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_PURCHASE_ORDER_VARIANT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_variant`
--

LOCK TABLES `purchase_order_variant` WRITE;
/*!40000 ALTER TABLE `purchase_order_variant` DISABLE KEYS */;
INSERT INTO `purchase_order_variant` VALUES (1,12,250000,3,750000);
/*!40000 ALTER TABLE `purchase_order_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_refresh_token_token` (`token`),
  KEY `FK_REFRESH_TOKEN_ON_USER` (`user_id`),
  CONSTRAINT `FK_REFRESH_TOKEN_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
INSERT INTO `refresh_token` VALUES (1,'2024-09-05 16:26:19','2024-09-05 16:26:19',NULL,NULL,1,'135590c3-ac50-4edd-8002-1e1575c65af0','2024-09-06 16:26:19'),(2,'2024-09-05 17:10:24','2024-09-05 17:10:24',NULL,NULL,2,'555f0ec5-22f8-4f70-9e60-5550bb3ff82d','2024-09-06 17:10:24'),(3,'2024-09-05 17:11:14','2024-09-05 17:11:14',NULL,NULL,1,'a2ba1bd8-289e-4662-8114-3457f5ecebbb','2024-09-06 17:11:14'),(4,'2024-09-05 17:22:04','2024-09-05 17:22:04',NULL,NULL,3,'3ab378c0-9d06-4ab9-8606-79b0650218f1','2024-09-06 17:22:04'),(5,'2024-09-06 15:17:17','2024-09-06 15:17:17',NULL,NULL,3,'18345044-d721-48fe-8eb2-bfd7e95cece9','2024-09-07 15:17:17'),(6,'2024-09-10 13:53:31','2024-09-10 13:53:31',NULL,NULL,1,'ec25e90f-8aee-4343-93cf-5a7295fe9ff0','2024-09-11 13:53:31'),(7,'2024-09-13 16:00:36','2024-09-13 16:00:36',NULL,NULL,1,'6b9424c7-0dbc-45c8-8a86-d534df8836b3','2024-09-14 16:00:36'),(8,'2024-09-16 19:39:39','2024-09-16 19:39:39',NULL,NULL,1,'7652b8b5-9e6e-413d-85e1-860ad2565ef2','2024-09-17 19:39:39'),(9,'2024-09-16 19:42:49','2024-09-16 19:42:49',NULL,NULL,3,'e86de9fa-1ce5-43c8-b8c0-d26b9c443ed6','2024-09-17 19:42:49'),(10,'2024-09-16 19:46:40','2024-09-16 19:46:40',NULL,NULL,3,'790cd197-1653-4f20-b27a-05190736e2af','2024-09-17 19:46:40'),(11,'2024-09-16 19:51:15','2024-09-16 19:51:15',NULL,NULL,4,'a0cbf653-c414-456e-9bbe-1336337a11d4','2024-09-17 19:51:15'),(12,'2024-09-16 20:37:26','2024-09-16 20:37:26',NULL,NULL,3,'7f46143c-08ff-450c-900d-696af1012591','2024-09-17 20:37:26'),(13,'2024-09-16 20:38:32','2024-09-16 20:38:32',NULL,NULL,1,'17254a5e-ffb3-4eb8-a365-6699bc40deb7','2024-09-17 20:38:32'),(14,'2024-09-16 20:38:37','2024-09-16 20:38:37',NULL,NULL,1,'3e99ed9b-72b7-4a0a-93f4-cc4ab399b6df','2024-09-17 20:38:37'),(15,'2024-09-16 20:40:08','2024-09-16 20:40:08',NULL,NULL,2,'e6a6635c-af66-4f56-a987-2d27bb823eb2','2024-09-17 20:40:08'),(16,'2024-09-16 20:40:25','2024-09-16 20:40:25',NULL,NULL,1,'b27a74a2-92a6-49fe-82f5-559eb8272c7c','2024-09-17 20:40:25'),(17,'2024-09-17 12:11:41','2024-09-17 12:11:41',NULL,NULL,3,'a8446346-3360-4037-ac47-c09ec5fc5068','2024-09-18 12:11:41'),(18,'2024-09-17 15:14:00','2024-09-17 15:14:00',NULL,NULL,3,'d7bd0c67-af30-40c2-9780-285d3e9ab3d1','2024-09-18 15:14:00'),(19,'2024-09-17 19:24:19','2024-09-17 19:24:19',NULL,NULL,3,'9da55495-c328-4041-bb79-55b949ba6889','2024-09-18 19:24:19'),(20,'2024-09-17 21:53:00','2024-09-17 21:53:00',NULL,NULL,1,'512e278c-442f-4499-a84d-a3fa8aa85eb1','2024-09-18 21:53:00'),(21,'2024-09-17 21:54:32','2024-09-17 21:54:32',NULL,NULL,3,'2e0d7c37-2605-46cb-b830-d5dbb9ba20cd','2024-09-18 21:54:32'),(22,'2024-09-17 22:27:54','2024-09-17 22:27:54',NULL,NULL,3,'900e722d-f1a0-4d6d-ae27-0898c18a992f','2024-09-18 22:27:54'),(23,'2024-09-18 09:35:47','2024-09-18 09:35:47',NULL,NULL,1,'8d887aa3-dc81-4a08-aaa4-f78e59a271e6','2024-09-19 09:35:47'),(24,'2024-09-18 09:35:59','2024-09-18 09:35:59',NULL,NULL,1,'840b895e-b15f-4120-9f4e-a2d00d62d665','2024-09-19 09:35:59'),(25,'2024-09-18 09:37:53','2024-09-18 09:37:53',NULL,NULL,3,'a5b01b56-310e-441a-a84a-7d54e2dfd284','2024-09-19 09:37:53'),(26,'2024-09-18 11:15:49','2024-09-18 11:15:49',NULL,NULL,3,'5099bfdd-2129-45f7-92a6-17f1886fee80','2024-09-19 11:15:49'),(27,'2024-09-20 20:33:48','2024-09-20 20:33:48',NULL,NULL,3,'a1cbca65-3f3c-44fc-b399-43fac23dcde6','2024-09-21 20:33:48'),(28,'2024-09-20 20:35:33','2024-09-20 20:35:33',NULL,NULL,1,'e4ac7bae-6392-4830-b923-dd503a7820b3','2024-09-21 20:35:33'),(29,'2024-09-20 21:43:12','2024-09-20 21:43:12',NULL,NULL,6,'82fb7c66-51a7-46f1-b08b-f0e8ed26eaee','2024-09-21 21:43:12'),(30,'2024-09-20 21:51:31','2024-09-20 21:51:31',NULL,NULL,1,'2567e0fb-e687-4761-afb7-94297e3b7710','2024-09-21 21:51:31'),(31,'2024-09-20 21:54:07','2024-09-20 21:54:07',NULL,NULL,3,'a552ee43-6f8b-4085-bcbc-52e446eaec50','2024-09-21 21:54:07'),(32,'2024-09-21 17:02:44','2024-09-21 17:02:44',NULL,NULL,1,'a15b3c99-fbe8-40fd-9271-057a049b4fee','2024-09-22 17:02:44'),(33,'2024-09-21 17:02:59','2024-09-21 17:02:59',NULL,NULL,3,'bc1964a6-a8c8-4ab0-871f-75a69cada8a1','2024-09-22 17:02:59'),(34,'2024-09-21 17:23:05','2024-09-21 17:23:05',NULL,NULL,2,'b123c695-f106-4908-b31f-8dbf82497b42','2024-09-22 17:23:05'),(35,'2024-09-21 17:55:02','2024-09-21 17:55:02',NULL,NULL,1,'e38ecf1c-e13e-4be4-82db-82af563db82e','2024-09-22 17:55:02'),(36,'2024-09-21 20:11:51','2024-09-21 20:11:51',NULL,NULL,1,'05779a4f-ec9d-49e2-867a-92a5fe8f7916','2024-09-22 20:11:51'),(37,'2024-09-21 20:13:49','2024-09-21 20:13:49',NULL,NULL,3,'08dca23d-a8da-4609-8bf6-6cf193351f98','2024-09-22 20:13:49'),(38,'2024-09-21 20:55:40','2024-09-21 20:55:40',NULL,NULL,1,'e9c99b75-ae0a-49f4-9524-6e674ebd4293','2024-09-22 20:55:40'),(39,'2024-09-22 10:54:59','2024-09-22 10:54:59',NULL,NULL,3,'0405a260-e628-494b-9c5d-0992f56329e1','2024-09-23 10:54:59'),(40,'2024-09-22 13:22:03','2024-09-22 13:22:03',NULL,NULL,1,'e030212a-63f2-4184-b57c-ba9a655a2c74','2024-09-23 13:22:03'),(41,'2024-09-22 13:26:23','2024-09-22 13:26:23',NULL,NULL,3,'ea230259-0d1f-467c-b05b-c54099f656c7','2024-09-23 13:26:23'),(42,'2024-09-22 14:05:37','2024-09-22 14:05:37',NULL,NULL,1,'4c54b3fa-e1da-4b34-b87f-0940c288a3d7','2024-09-23 14:05:37'),(43,'2024-09-22 15:13:30','2024-09-22 15:13:30',NULL,NULL,1,'1551c2de-6557-4e68-8254-aa75d4bac94a','2024-09-23 15:13:30'),(44,'2024-09-22 15:15:51','2024-09-22 15:15:51',NULL,NULL,3,'b97758b5-cc5f-4c68-8eef-b9cf00b9d902','2024-09-23 15:15:51'),(45,'2024-10-09 12:19:42','2024-10-09 12:19:42',NULL,NULL,4,'cb61b848-a7c4-4e71-bd13-49bc0ebf7985','2024-10-10 12:19:42'),(46,'2024-10-09 12:19:59','2024-10-09 12:19:59',NULL,NULL,3,'64dfb202-bd52-42e7-8356-80ff159e8a77','2024-10-10 12:19:59'),(47,'2024-10-09 12:20:27','2024-10-09 12:20:27',NULL,NULL,3,'a467e29b-3048-4784-83af-ca9c5f7b0fda','2024-10-10 12:20:27'),(48,'2024-10-09 12:22:25','2024-10-09 12:22:25',NULL,NULL,1,'ed12af29-4fa1-43b9-892b-97fa8c17de63','2024-10-10 12:22:25');
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `rating_score` tinyint NOT NULL,
  `content` text NOT NULL,
  `reply` text,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_review` (`user_id`,`product_id`),
  KEY `FK_REVIEW_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_REVIEW_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_REVIEW_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'2024-09-16 21:15:32','2024-09-16 21:15:32',NULL,NULL,3,3,4,'sản phẩm rất đẹp\n',NULL,2),(2,'2024-09-17 12:13:44','2024-09-17 12:13:44',NULL,NULL,3,1,5,'Tuyệt vời\n','Cảm ơn bạn đã mua sản phẩm',2),(3,'2024-09-20 21:56:02','2024-09-20 21:56:02',NULL,NULL,3,5,4,'Sản phẩm sooo đẹp\n','Xin cảm ơn b',2),(4,'2024-10-09 12:25:03','2024-10-09 12:25:03',NULL,NULL,3,24,4,'tuyet voi','cảm ơn bạn',2);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_log`
--

DROP TABLE IF EXISTS `reward_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `type` varchar(255) NOT NULL,
  `score` int NOT NULL,
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_REWARD_LOG_ON_USER` (`user_id`),
  CONSTRAINT `FK_REWARD_LOG_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_log`
--

LOCK TABLES `reward_log` WRITE;
/*!40000 ALTER TABLE `reward_log` DISABLE KEYS */;
INSERT INTO `reward_log` VALUES (1,'2023-07-08 02:18:21','2023-07-08 02:18:21',NULL,NULL,4,'ADD_REVIEW',50,'Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Laptop Lenovo Gaming Legion 5.'),(2,'2023-07-08 02:19:54','2023-07-08 02:19:54',NULL,NULL,4,'SUCCESS_ORDER',988,'Bạn đã nhận được 988 điểm thưởng cho đơn hàng YMIM6GQEKYER.'),(3,'2024-09-16 21:16:29','2024-09-16 21:16:29',NULL,NULL,3,'ADD_REVIEW',50,'Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm bạc quai gỗ.'),(4,'2024-09-17 12:13:56','2024-09-17 12:13:56',NULL,NULL,3,'ADD_REVIEW',50,'Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm tử sa đế lương.'),(5,'2024-09-17 12:14:12','2024-09-17 12:14:12',NULL,NULL,3,'ADD_REVIEW',50,'Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm tử sa đế lương.'),(6,'2024-09-20 21:56:11','2024-09-20 21:56:11',NULL,NULL,3,'ADD_REVIEW',50,'Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm bình an thủy tinh màu đen trong suốt.'),(7,'2024-09-20 21:56:34','2024-09-20 21:56:34',NULL,NULL,3,'ADD_REVIEW',50,'Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Ấm bình an thủy tinh màu đen trong suốt.'),(8,'2024-10-09 12:25:15','2024-10-09 12:25:15',NULL,NULL,3,'ADD_REVIEW',50,'Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Bộ ấm chén du lịch họa tiết hoa hải đường.'),(9,'2024-10-09 12:25:36','2024-10-09 12:25:36',NULL,NULL,3,'ADD_REVIEW',50,'Bạn đã nhận được 50 điểm thưởng cho đánh giá ở sản phẩm Bộ ấm chén du lịch họa tiết hoa hải đường.');
/*!40000 ALTER TABLE `reward_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_strategy`
--

DROP TABLE IF EXISTS `reward_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_strategy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `formula` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_reward_strategy_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_strategy`
--

LOCK TABLES `reward_strategy` WRITE;
/*!40000 ALTER TABLE `reward_strategy` DISABLE KEYS */;
INSERT INTO `reward_strategy` VALUES (1,'2023-07-16 00:00:00','2023-07-16 00:00:00',NULL,NULL,'Đơn hàng thành công','SUCCESS_ORDER','{{ORDER_TOTAL_PAY}} / 1000',1),(2,'2023-07-16 00:00:00','2023-07-16 00:00:00',NULL,NULL,'Thêm đánh giá','ADD_REVIEW','50',1);
/*!40000 ALTER TABLE `reward_strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(35) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_role_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'1971-07-11 07:45:46','2006-07-26 03:05:23',NULL,NULL,'ADMIN','Quản trị viên',1),(2,'1995-07-23 17:15:34','1983-07-18 03:01:29',NULL,NULL,'EMPLOYEE','Nhân viên',1),(3,'1989-07-25 23:05:02','2001-07-13 09:01:36',NULL,NULL,'CUSTOMER','Khách hàng',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint NOT NULL,
  `last_message_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_room_user` (`user_id`),
  UNIQUE KEY `uc_room_last_message` (`last_message_id`),
  CONSTRAINT `FK_ROOM_ON_LAST_MESSAGE` FOREIGN KEY (`last_message_id`) REFERENCES `message` (`id`),
  CONSTRAINT `FK_ROOM_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'2024-07-16 17:41:03','2024-07-05 17:16:06',NULL,NULL,'Thang',1,NULL),(2,'2024-07-27 01:34:39','2024-07-22 22:26:16',NULL,NULL,'Dang',2,NULL),(3,'2024-09-17 14:44:06','2024-10-09 12:26:22',NULL,NULL,'Lương Trung Thuần',3,4),(4,'2024-09-20 21:44:04','2024-09-20 21:44:21',NULL,NULL,'Nguyen Minh Phu',6,2);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specification`
--

DROP TABLE IF EXISTS `specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_specification_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specification`
--

LOCK TABLES `specification` WRITE;
/*!40000 ALTER TABLE `specification` DISABLE KEYS */;
INSERT INTO `specification` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Đóng gói','dong-goi','Lorem ipsum dolor sit amet',1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Chất liệu','chat-lieu',NULL,1),(3,'2024-09-17 20:46:50','2024-09-17 20:46:50',NULL,NULL,'Xuất xứ','xuat-su',NULL,1);
/*!40000 ALTER TABLE `specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_location`
--

DROP TABLE IF EXISTS `storage_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage_location` (
  `variant_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `warehouse_id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`variant_id`),
  KEY `FK_STORAGE_LOCATION_ON_WAREHOUSE` (`warehouse_id`),
  CONSTRAINT `FK_STORAGE_LOCATION_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`),
  CONSTRAINT `FK_STORAGE_LOCATION_ON_WAREHOUSE` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_location`
--

LOCK TABLES `storage_location` WRITE;
/*!40000 ALTER TABLE `storage_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `display_name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `contact_fullname` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address_id` bigint DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_supplier_code` (`code`),
  UNIQUE KEY `uc_supplier_address` (`address_id`),
  CONSTRAINT `FK_SUPPLIER_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'2024-07-16 02:47:51','2024-07-06 15:10:37',NULL,NULL,'Gốm Sứ Bát Tràng','0944-3032','Aubrie Cowley','acowley0@mysql.com','0919944500','Rhynyx','49349-988','acowley0@japanpost.jp','714-908-9882','Holdlamis',NULL,10,'Oth uni salpingo-oophor','Meningococc endocarditis',1),(2,'2024-07-15 19:55:46','2024-07-20 15:40:51',NULL,NULL,'Minh Long','49035-519','Jeth Knipe','jknipe1@nymag.com','0919944500','Babblestorm','43598-012','jknipe1@woothemes.com','134-360-5820','Zathin',NULL,14,'Insert antimicrobial env','Power aircraft acc-psngr',1),(3,'2024-07-07 21:04:34','2024-07-11 13:11:43',NULL,NULL,'Gỗ Đá Phong Thủy','43419-861','Gỗ Đá Phong Thủy','agunnell2@g.co','0919944500','Voolith','68001-237','agunnell2@amazonaws.com','303-523-6126','Sub-Ex',NULL,15,'Man replac invert uterus','Burn NOS ear',1),(4,'2024-07-16 03:47:13','2024-07-22 18:41:01',NULL,NULL,'Phong Thủy Tam Nguyên','68572-6005','Margery Seely','mseely3@xing.com','0919944500','Phong Thủy Tam Nguyên','54473-141','mseely3@pagesperso-orange.fr','557-431-0161','Cookley',NULL,13,'CAS w fluoroscopy','Lactation fail-postpart',1),(5,'2024-07-18 12:13:01','2024-07-02 09:04:03',NULL,NULL,'Trà Tân Cương Thái Nguyên','49349-675','El De Carlo','ede4@wisc.edu','0919944500','Kanoodle','57520-0467','ede4@exblog.jp','509-999-7966','Zaam-Dox',NULL,11,'Pancreat transplant NOS','Acc poison-analgesic NOS',1),(6,'2024-09-17 12:23:48','2024-09-17 12:23:48',NULL,NULL,'Le Creuset Việt Nam','49349-6755','Nguyen Van B',NULL,'0919944500','Le Creuset Việt Nam','12312312','a@gmail.com','0965654332','112344543',NULL,37,NULL,NULL,1),(7,'2024-09-17 12:27:28','2024-09-17 12:27:28',NULL,NULL,'Dilmah Việt Nam','1234-567','NguyenVanB','ab@gmail.com','0919944500','Gỗ Mỹ Nghệ Đồng Kỵ','11112223443','n@gmail.com','0919944500','112332131',NULL,38,NULL,NULL,1),(8,'2024-09-17 12:40:09','2024-09-17 12:40:09',NULL,NULL,'Bạc Minh Cảnh','2323-234','Bạc Minh Cảnh','nguyenvanb@gmail.com','0923442356','Bạc Minh Cảnh','3435235155','l@gmail.com','0923442356','09234423561',NULL,39,NULL,NULL,1),(9,'2024-09-17 13:23:32','2024-09-17 13:23:32',NULL,NULL,'Trà Ô Long Lâm Đồng','1213-098','Nguyen Van C','lm@gmail.com','0987678634','Trà Ô Long Lâm Đồng','1234654','ab@gmail.com','0987678634','0987678634',NULL,40,NULL,NULL,1),(10,'2024-09-17 13:25:19','2024-09-17 13:25:19',NULL,NULL,'Trà Phổ Nhĩ','978-8877','Trieu Cong C','lk@gmail.com','0989775757','Trà Phổ Nhĩ','234234234','lk@gmail.com','0989775757','0989775757',NULL,41,NULL,NULL,1),(11,'2024-09-17 20:31:35','2024-09-17 20:31:35',NULL,NULL,'Sunhouse','2338-24243','Nguyen Van C','c@gmail.com','0932823832','Sunhouse','12211254','abc@gmail.com','0932823832','0932823832',NULL,42,NULL,NULL,1),(12,'2024-09-17 20:40:13','2024-09-17 20:40:13',NULL,NULL,'Trà Việt','1231-243','Nguyen A','anc@gmail.com','091231243','Trà Việt','12343567','anc@gmail.com','091231243','091231243',NULL,43,NULL,NULL,1);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_tag_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Sản phẩm mới','san-pham-moi',1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Sản phẩm nổi bật','san-pham-noi-bat',1);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `export_docket_id` bigint NOT NULL,
  `import_docket_id` bigint NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_transfer_code` (`code`),
  UNIQUE KEY `uc_transfer_export_docket` (`export_docket_id`),
  UNIQUE KEY `uc_transfer_import_docket` (`import_docket_id`),
  CONSTRAINT `FK_TRANSFER_ON_EXPORT_DOCKET` FOREIGN KEY (`export_docket_id`) REFERENCES `docket` (`id`),
  CONSTRAINT `FK_TRANSFER_ON_IMPORT_DOCKET` FOREIGN KEY (`import_docket_id`) REFERENCES `docket` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES (1,'2024-09-05 17:00:47','2024-09-05 17:00:47',NULL,NULL,'ck-01',2,3,NULL),(2,'2024-09-17 21:35:03','2024-09-17 21:35:03',NULL,NULL,'ck-02',14,15,NULL);
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Cái',1),(2,'2024-07-01 13:27:06','2024-07-02 16:18:00',NULL,NULL,'Hộp',1),(3,'2024-09-21 22:35:05','2024-09-21 22:35:05',NULL,NULL,'Bộ',1);
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `address_id` bigint NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_user_address` (`address_id`),
  UNIQUE KEY `uc_user_email` (`email`),
  UNIQUE KEY `uc_user_username` (`username`),
  CONSTRAINT `FK_USER_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2024-07-05 07:30:07','2024-07-05 07:30:07',NULL,NULL,'admin','$2a$10$VsJWsj.z4mu7hwgl24mbLO4kINGNU3NntESfPiZbnslKDts.RqEl6','Nguoi Quan Tri','admin@gmail.com','0919944705','M',1,'http://dummyimage.com/138x100.png/dddddd/000000',1,NULL),(2,'2024-09-05 16:27:58','2024-09-05 16:27:58',NULL,NULL,'nhanvien','$2a$10$qaWT/5p5I/hELHn4aQ/XXult4OEG5am1cP8Yh3YUeCeCSFeKi0enm','Nguyen Van A','nhanvien@gmail.com','0356789811','M',31,NULL,1,NULL),(3,'2024-09-05 17:21:10','2024-09-05 17:21:10',NULL,NULL,'user','$2a$10$jK6XJwBku/8VUTZE9JbHVeZx4T/U9nwhmT1EduMqgldxUSp1OAMU2','Lương Trung Thuần','luongtrungthuan1307@gmail.com','0366619640','M',35,NULL,1,NULL),(4,'2024-09-16 19:42:06','2024-09-16 19:42:06',NULL,NULL,'user1','$2a$10$iTOxyd9yOglvruwDmMeZ2Od9l7IfPQwQ35C98brtZAQAW0O6M9gfi','Người Dùng 01','luongtrungthuan175@gmail.com','0366619640','M',36,NULL,1,NULL),(5,'2024-09-17 21:07:00','2024-09-17 21:07:00',NULL,NULL,'nhanvien2','$2a$10$DWnw/4uenXpzXgoAUpFNR.hewSP/xUU6snO8hwBZvyiDQEvcEguUu','Nguyen Van AB','nhanvien1@gmail.com','0366619640','M',44,NULL,1,NULL),(6,'2024-09-20 21:42:27','2024-09-20 21:42:27',NULL,NULL,'phu123','$2a$10$uDNdxvRvYGHla4.58EzAs.JKPdx18evivHsrgIVFHH0FDhJuKqSVq','Nguyen Minh Phu','phu26102002@gmail.com','09876544212','M',45,NULL,1,NULL),(7,'2024-09-22 15:12:42','2024-09-22 15:12:42',NULL,NULL,'user123','$2a$10$9wR7WDnuudH3TkQk3EzgYO7dIZMM6c.uZc0Xf1JpMevclCkJSlwF6','Nguyễn van b','thuan.luongtrung1@gmail.com','0388899323','M',46,NULL,2,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_USER_ROLE_ON_ROLE` (`role_id`),
  CONSTRAINT `FK_USER_ROLE_ON_ROLE` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_USER_ROLE_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,2),(5,2),(3,3),(4,3),(6,3),(7,3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `sku` varchar(255) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `properties` json DEFAULT NULL,
  `images` json DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_variant_sku` (`sku`),
  KEY `FK_VARIANT_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_VARIANT_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES (1,'2024-09-05 16:46:10','2024-09-21 22:30:48',NULL,NULL,1,'sku-1',3000000,3500000,'{\"content\": [{\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": \"150ml\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Nâu\"}], \"totalElements\": 2}',NULL,1),(2,'2024-09-05 16:46:10','2024-09-21 22:30:48',NULL,NULL,1,'sku-2',3500000,4000000,'{\"content\": [{\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": \"200ml\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Nâu\"}], \"totalElements\": 2}',NULL,1),(3,'2024-09-10 13:57:29','2024-09-21 22:31:32',NULL,NULL,2,'Sku-01',3000000,3500000,'{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Nâu\"}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": \"150ml\"}], \"totalElements\": 2}',NULL,1),(4,'2024-09-10 13:57:29','2024-09-21 22:31:32',NULL,NULL,2,'Sku-02',3500000,4000000,'{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Nâu\"}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": \"200ml\"}], \"totalElements\": 2}',NULL,1),(5,'2024-09-16 20:42:33','2024-09-21 22:31:44',NULL,NULL,3,'sk-123',5500000,6000000,'null',NULL,1),(6,'2024-09-16 21:11:39','2024-09-17 12:40:50',NULL,NULL,5,'sk-12',450000,500000,'{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Trong suốt\"}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": \"150 ml\"}], \"totalElements\": 2}',NULL,1),(9,'2024-09-17 12:57:44','2024-09-21 22:32:06',NULL,NULL,8,'sk-98',6000000,7000000,'{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Nâu\"}], \"totalElements\": 1}',NULL,1),(10,'2024-09-17 13:05:50','2024-09-17 13:05:50',NULL,NULL,9,'sk-09',700000,750000,'{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"400 gam\"}], \"totalElements\": 1}',NULL,1),(11,'2024-09-17 13:08:33','2024-09-21 22:29:03',NULL,NULL,10,'sk-08',3000000,3500000,'{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"400 gm\"}], \"totalElements\": 1}',NULL,1),(12,'2024-09-17 14:56:17','2024-09-21 22:29:15',NULL,NULL,11,'sk-07',2500000,3000000,'{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"300 gam\"}], \"totalElements\": 1}',NULL,1),(14,'2024-09-17 19:59:09','2024-09-21 22:29:34',NULL,NULL,14,'sk-1012',1900000,1950000,'{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"1.2 kg\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Xanh ngọc\"}], \"totalElements\": 2}',NULL,1),(15,'2024-09-17 20:04:21','2024-09-21 22:29:50',NULL,NULL,15,'sk-0987',7000000,7500000,'{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Trong suốt\"}, {\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"1.2 kg\"}], \"totalElements\": 2}',NULL,1),(16,'2024-09-17 20:07:27','2024-09-21 22:30:05',NULL,NULL,16,'sk-0001',8000000,8500000,'{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Trắng\"}, {\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"1.2 kg\"}], \"totalElements\": 2}',NULL,1),(17,'2024-09-17 20:29:36','2024-09-21 22:28:19',NULL,NULL,17,'sk-999',8990000,9490000,'{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"2 kg\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Đen\"}], \"totalElements\": 2}',NULL,1),(18,'2024-09-17 20:34:07','2024-09-21 22:28:05',NULL,NULL,18,'sk-0908',18990000,19790000,'{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"1.5 kg\"}, {\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Xanh\"}], \"totalElements\": 2}',NULL,1),(19,'2024-09-21 20:57:16','2024-09-21 22:27:32',NULL,NULL,20,'sk-1222',14200000,14400000,'{\"content\": [{\"id\": 4, \"code\": \"kichthuoc\", \"name\": \"Kích thước\", \"value\": \"48x18x32 cm\"}, {\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"9.22 Kg\"}], \"totalElements\": 2}',NULL,1),(20,'2024-09-21 20:59:39','2024-09-21 22:27:16',NULL,NULL,21,'sk-1221',12000000,13200000,'{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"900 gram\"}, {\"id\": 4, \"code\": \"kichthuoc\", \"name\": \"Kích thước\", \"value\": \"28x10x20 cm\"}], \"totalElements\": 2}',NULL,1),(21,'2024-09-21 21:02:26','2024-09-21 22:32:41',NULL,NULL,22,'sk-1223',31300000,32500000,'{\"content\": [{\"id\": 3, \"code\": \"khoiluong\", \"name\": \"Khối Lượng\", \"value\": \"2.64kg\"}, {\"id\": 4, \"code\": \"kichthuoc\", \"name\": \"Kích thước\", \"value\": \"32x10x25 cm\"}], \"totalElements\": 2}',NULL,1),(22,'2024-09-21 22:40:02','2024-09-21 22:40:02',NULL,NULL,23,'sk-12111',1500000,1700000,'{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Trắng\"}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": \"50 ml\"}], \"totalElements\": 2}',NULL,1),(23,'2024-09-21 22:42:30','2024-09-21 22:42:30',NULL,NULL,24,'sk-1214',6000000,8000000,'{\"content\": [{\"id\": 2, \"code\": \"color\", \"name\": \"Màu sắc\", \"value\": \"Trắng\"}, {\"id\": 1, \"code\": \"dungtich\", \"name\": \"Dung Tích\", \"value\": \"150 ml\"}], \"totalElements\": 2}',NULL,1);
/*!40000 ALTER TABLE `variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant_inventory_limit`
--

DROP TABLE IF EXISTS `variant_inventory_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant_inventory_limit` (
  `variant_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `minimum_limit` int DEFAULT NULL,
  `maximum_limit` int DEFAULT NULL,
  PRIMARY KEY (`variant_id`),
  CONSTRAINT `FK_VARIANT_INVENTORY_LIMIT_ON_VARIANT` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant_inventory_limit`
--

LOCK TABLES `variant_inventory_limit` WRITE;
/*!40000 ALTER TABLE `variant_inventory_limit` DISABLE KEYS */;
/*!40000 ALTER TABLE `variant_inventory_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_verification_user` (`user_id`),
  CONSTRAINT `FK_VERIFICATION_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification`
--

LOCK TABLES `verification` WRITE;
/*!40000 ALTER TABLE `verification` DISABLE KEYS */;
INSERT INTO `verification` VALUES (4,'2024-09-22 15:12:43','2024-09-22 15:12:43',NULL,NULL,7,'1857','2024-10-09 12:21:53','REGISTRATION');
/*!40000 ALTER TABLE `verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ward` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(35) NOT NULL,
  `district_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_WARD_ON_DISTRICT` (`district_id`),
  CONSTRAINT `FK_WARD_ON_DISTRICT` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10600 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address_id` bigint DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_warehouse_code` (`code`),
  UNIQUE KEY `uc_warehouse_address` (`address_id`),
  CONSTRAINT `FK_WAREHOUSE_ON_ADDRESS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'2024-09-05 16:47:17','2024-09-05 16:47:17',NULL,NULL,'nk-1','Nhà Kho A',32,1),(2,'2024-09-05 16:59:52','2024-09-05 16:59:52',NULL,NULL,'nk-2','Nhà Kho B',34,1);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waybill`
--

DROP TABLE IF EXISTS `waybill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waybill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `order_id` bigint NOT NULL,
  `shipping_date` datetime NOT NULL,
  `expected_delivery_time` datetime NOT NULL,
  `status` tinyint NOT NULL,
  `cod_amount` int NOT NULL,
  `shipping_fee` int NOT NULL,
  `weight` int NOT NULL,
  `length` int NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `ghn_payment_type_id` int NOT NULL,
  `ghn_required_note` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_waybill_code` (`code`),
  UNIQUE KEY `uc_waybill_order` (`order_id`),
  CONSTRAINT `FK_WAYBILL_ON_ORDER` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waybill`
--

LOCK TABLES `waybill` WRITE;
/*!40000 ALTER TABLE `waybill` DISABLE KEYS */;
INSERT INTO `waybill` VALUES (7,'2024-09-20 20:36:14','2024-09-20 20:36:14',NULL,NULL,'LNTH7L',28,'2024-09-22 00:00:00','2024-09-24 06:59:59',1,0,27500,6,3,6,5,NULL,1,'KHONGCHOXEMHANG'),(8,'2024-09-20 20:38:09','2024-09-20 20:38:09',NULL,NULL,'LNTH7F',29,'2024-09-20 00:00:00','2024-09-23 06:59:59',1,0,27500,1,1,1,1,NULL,1,'KHONGCHOXEMHANG'),(9,'2024-09-20 20:49:54','2024-09-20 20:49:54',NULL,NULL,'LNTH77',27,'2024-09-20 00:00:00','2024-09-23 06:59:59',1,0,27500,600,12,12,12,NULL,1,'KHONGCHOXEMHANG'),(10,'2024-09-20 21:55:13','2024-09-20 21:55:13',NULL,NULL,'LNTHVH',31,'2024-09-20 00:00:00','2024-09-23 06:59:59',1,0,27500,300,12,12,12,NULL,1,'KHONGCHOXEMHANG'),(11,'2024-09-21 17:06:49','2024-09-21 17:06:49',NULL,NULL,'LNTXEU',32,'2024-09-21 00:00:00','2024-09-24 06:59:59',1,0,27500,300,12,12,12,NULL,1,'KHONGCHOXEMHANG'),(12,'2024-09-21 20:14:56','2024-09-21 20:14:56',NULL,NULL,'LNTXEV',33,'2024-09-21 00:00:00','2024-09-26 06:59:59',1,888250,42500,300,121,12,12,NULL,2,'KHONGCHOXEMHANG'),(13,'2024-09-22 10:58:06','2024-09-22 10:58:06',NULL,NULL,'LNTAQC',34,'2024-09-22 00:00:00','2024-09-25 06:59:59',1,0,27500,400,12,12,12,NULL,1,'KHONGCHOXEMHANG'),(14,'2024-10-09 12:24:02','2024-10-09 12:24:02',NULL,NULL,'LN8BVE',35,'2024-10-09 00:00:00','2024-10-12 06:59:59',1,0,27500,200,20,20,20,NULL,1,'KHONGCHOXEMHANG');
/*!40000 ALTER TABLE `waybill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waybill_log`
--

DROP TABLE IF EXISTS `waybill_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waybill_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `waybill_id` bigint NOT NULL,
  `previous_status` int DEFAULT NULL,
  `current_status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_WAYBILL_LOG_ON_WAYBILL` (`waybill_id`),
  CONSTRAINT `FK_WAYBILL_LOG_ON_WAYBILL` FOREIGN KEY (`waybill_id`) REFERENCES `waybill` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waybill_log`
--

LOCK TABLES `waybill_log` WRITE;
/*!40000 ALTER TABLE `waybill_log` DISABLE KEYS */;
INSERT INTO `waybill_log` VALUES (6,'2024-09-20 20:36:14','2024-09-20 20:36:14',NULL,NULL,7,NULL,1),(7,'2024-09-20 20:38:09','2024-09-20 20:38:09',NULL,NULL,8,NULL,1),(8,'2024-09-20 20:49:54','2024-09-20 20:49:54',NULL,NULL,9,NULL,1),(9,'2024-09-20 21:55:13','2024-09-20 21:55:13',NULL,NULL,10,NULL,1),(10,'2024-09-21 17:06:49','2024-09-21 17:06:49',NULL,NULL,11,NULL,1),(11,'2024-09-21 20:14:56','2024-09-21 20:14:56',NULL,NULL,12,NULL,1),(12,'2024-09-22 10:58:06','2024-09-22 10:58:06',NULL,NULL,13,NULL,1),(13,'2024-10-09 12:24:02','2024-10-09 12:24:02',NULL,NULL,14,NULL,1);
/*!40000 ALTER TABLE `waybill_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish`
--

DROP TABLE IF EXISTS `wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wish` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_wish` (`user_id`,`product_id`),
  KEY `FK_WISH_ON_PRODUCT` (`product_id`),
  CONSTRAINT `FK_WISH_ON_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_WISH_ON_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish`
--

LOCK TABLES `wish` WRITE;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
INSERT INTO `wish` VALUES (1,'2024-09-17 15:14:11','2024-09-17 15:14:11',NULL,NULL,3,1);
/*!40000 ALTER TABLE `wish` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28 10:07:46