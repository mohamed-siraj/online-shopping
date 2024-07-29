-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `admin_info`
--

DROP TABLE IF EXISTS `admin_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_info` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_info`
--

LOCK TABLES `admin_info` WRITE;
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
INSERT INTO `admin_info` VALUES (1,'admin','admin@gmail.com','25f9e794323b453885f5181f1b624d0b');
/*!40000 ALTER TABLE `admin_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'HP'),(2,'Samsung'),(3,'Apple'),(4,'motorolla'),(5,'LG'),(6,'Cloth Brand');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int DEFAULT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (6,26,'::1',4,1),(9,10,'::1',7,1),(10,11,'::1',7,1),(11,45,'::1',7,1),(44,5,'::1',3,0),(46,2,'::1',3,0),(48,72,'::1',3,0),(49,60,'::1',8,1),(50,61,'::1',8,1),(51,1,'::1',8,1),(52,5,'::1',9,1),(53,2,'::1',14,1),(54,3,'::1',14,1),(55,5,'::1',14,1),(56,1,'::1',9,1),(57,2,'::1',9,1),(150,62,'127.0.0.1',-1,1),(151,74,'127.0.0.1',-1,1),(152,73,'127.0.0.1',-1,1),(153,72,'127.0.0.1',-1,1),(154,2,'127.0.0.1',-1,1),(155,3,'127.0.0.1',-1,1),(157,1,'127.0.0.1',-1,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'History Book'),(2,'Children Book'),(3,'Education Book'),(4,'Science Book'),(5,'Technology Book'),(6,'Cartoon Book'),(7,'Religious Book');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_info`
--

DROP TABLE IF EXISTS `email_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_info` (
  `email_id` int NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_info`
--

LOCK TABLES `email_info` WRITE;
/*!40000 ALTER TABLE `email_info` DISABLE KEYS */;
INSERT INTO `email_info` VALUES (3,'admin@gmail.com'),(4,'puneethreddy951@gmail.com'),(5,'puneethreddy@gmail.com'),(6,'mmohamedsiraj94@gmail.com'),(7,'mmohamedsiraj94dsfsdfs@gmail.com');
/*!40000 ALTER TABLE `email_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `order_pro_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int DEFAULT NULL,
  `amt` int DEFAULT NULL,
  PRIMARY KEY (`order_pro_id`),
  KEY `order_products` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,14,2,1,'07M47684BS5725041','Completed');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_info`
--

DROP TABLE IF EXISTS `orders_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_info` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int DEFAULT NULL,
  `total_amt` int DEFAULT NULL,
  `cvv` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_info`
--

LOCK TABLES `orders_info` WRITE;
/*!40000 ALTER TABLE `orders_info` DISABLE KEYS */;
INSERT INTO `orders_info` VALUES (1,12,'Puneeth','puneethreddy951@gmail.com','Bangalore, Kumbalagodu, Karnataka','Bangalore','Karnataka',560074,'pokjhgfcxc','4321 2345 6788 7654','12/90',3,77000,1234),(2,26,'Zeenath Minha','zeenathminha@gmail.com','325/C, A.K.M Road, Eravur - 03A, 30300 Batticaloa Sri Lanka','sd','eastern',30300,'visa','4111 1120 1426 7661','12/20',3,5569,123),(3,26,'Zeenath Minha','zeenathminha@gmail.com','325/C, A.K.M Road, Eravur - 03A, 30300 Batticaloa Sri Lanka','sd','eastern',30300,'visa','4111 1120 1426 7661','12/28',3,40401,112),(4,26,'Zeenath Minha','zeenathminha@gmail.com','Eravur','Batticaloa','eastern',30300,'visa','4111 1120 1426 7661','12/27',2,29354,123);
/*!40000 ALTER TABLE `orders_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_cat` int NOT NULL,
  `offer_price` int NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (13,2,0,'SpringAutumnDress',1200,'girls dress','Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg','girl dress'),(14,2,0,'Casual Dress',1400,'girl dress','download.jpg','ladies cloths girl'),(15,2,0,'Formal Look',1500,'girl dress','shutterstock_203611819.jpg','ladies wears dress girl'),(16,3,0,'Sweter for men',600,'2012-Winter-Sweater-for-Men-for-better-outlook','2012-Winter-Sweater-for-Men-for-better-outlook.jpg','black sweter cloth winter'),(17,3,0,'Gents formal',1000,'gents formal look','gents-formal-250x250.jpg','gents wear cloths'),(19,3,0,'Formal Coat',3000,'ad','images (1).jpg','coat blazer gents'),(20,3,0,'Mens Sweeter',1600,'jg','Winter-fashion-men-burst-sweater.png','sweeter gents '),(21,3,0,'T shirt',800,'ssds','IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg','formal t shirt black'),(22,4,0,'Yellow T shirt ',1300,'yello t shirt with pant','1.0x0.jpg','kids yellow t shirt'),(23,4,0,'Girls cloths',1900,'sadsf','GirlsClothing_Widgets.jpg','formal kids wear dress'),(24,4,0,'Blue T shirt',700,'g','images.jpg','kids dress'),(25,4,0,'Yellow girls dress',750,'as','images (3).jpg','yellow kids dress'),(27,4,0,'Formal look',690,'sd','image28.jpg','formal kids dress'),(32,5,0,'Book Shelf',2500,'book shelf','furniture-book-shelf-250x250.jpg','book shelf furniture'),(33,6,0,'Refrigerator',35000,'Refrigerator','CT_WM_BTS-BTC-AppliancesHome_20150723.jpg','refrigerator samsung'),(34,6,0,'Emergency Light',1000,'Emergency Light','emergency light.JPG','emergency light'),(35,6,0,'Vaccum Cleaner',6000,'Vaccum Cleaner','images (2).jpg','Vaccum Cleaner'),(36,6,0,'Iron',1500,'gj','iron.JPG','iron'),(37,6,0,'LED TV',20000,'LED TV','images (4).jpg','led tv lg'),(38,6,0,'Microwave Oven',3500,'Microwave Oven','images.jpg','Microwave Oven'),(39,6,0,'Mixer Grinder',2500,'Mixer Grinder','singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg','Mixer Grinder'),(40,2,0,'Formal girls dress',3000,'Formal girls dress','girl-walking.jpg','ladies'),(45,1,0,'Samsung Galaxy Note 3',10000,'0','samsung_galaxy_note3_note3neo.JPG','samsung galaxy Note 3 neo'),(46,1,0,'Samsung Galaxy Note 3',10000,'','samsung_galaxy_note3_note3neo.JPG','samsung galxaxy note 3 neo'),(47,4,0,'Laptop',650,'nbk','product01.png','Dell Laptop'),(48,1,0,'Headphones',250,'Headphones','product05.png','Headphones Sony'),(49,1,0,'Headphones',250,'Headphones','product05.png','Headphones Sony'),(50,3,0,'boys shirts',350,'shirts','pm1.JPG','suit boys shirts'),(51,3,0,'boys shirts',270,'shirts','pm2.JPG','suit boys shirts'),(52,3,0,'boys shirts',453,'shirts','pm3.JPG','suit boys shirts'),(53,3,0,'boys shirts',220,'shirts','ms1.JPG','suit boys shirts'),(54,3,0,'boys shirts',290,'shirts','ms2.JPG','suit boys shirts'),(55,3,0,'boys shirts',259,'shirts','ms3.JPG','suit boys shirts'),(56,3,0,'boys shirts',299,'shirts','pm7.JPG','suit boys shirts'),(57,3,0,'boys shirts',260,'shirts','i3.JPG','suit boys shirts'),(58,3,0,'boys shirts',350,'shirts','pm9.JPG','suit boys shirts'),(59,3,0,'boys shirts',855,'shirts','a2.JPG','suit boys shirts'),(60,3,0,'boys shirts',150,'shirts','pm11.JPG','suit boys shirts'),(61,3,0,'boys shirts',215,'shirts','pm12.JPG','suit boys shirts'),(62,3,0,'boys shirts',299,'shirts','pm13.JPG','suit boys shirts'),(63,3,0,'boys Jeans Pant',550,'Pants','pt1.JPG','boys Jeans Pant'),(64,3,0,'boys Jeans Pant',460,'pants','pt2.JPG','boys Jeans Pant'),(65,3,0,'boys Jeans Pant',470,'pants','pt3.JPG','boys Jeans Pant'),(66,3,0,'boys Jeans Pant',480,'pants','pt4.JPG','boys Jeans Pant'),(67,3,0,'boys Jeans Pant',360,'pants','pt5.JPG','boys Jeans Pant'),(68,3,0,'boys Jeans Pant',550,'pants','pt6.JPG','boys Jeans Pant'),(69,3,0,'boys Jeans Pant',390,'pants','pt7.JPG','boys Jeans Pant'),(70,3,0,'boys Jeans Pant',399,'pants','pt8.JPG','boys Jeans Pant'),(71,1,0,'Samsung galaxy s7',5000,'Samsung galaxy s7','product07.png','samsung mobile electronics'),(72,7,0,'sony Headphones',3500,'sony Headphones','product02.png','sony Headphones electronics gadgets'),(73,7,0,'samsung Headphones',3500,'samsung Headphones','product05.png','samsung Headphones electronics gadgets'),(74,1,0,'HP i5 laptop',5500,'HP i5 laptop','product01.png','HP i5 laptop electronics'),(75,1,0,'HP i7 laptop 8gb ram',5500,'HP i7 laptop 8gb ram','product03.png','HP i7 laptop 8gb ram electronics'),(76,1,0,'sony note 6gb ram',4500,'sony note 6gb ram','product04.png','sony note 6gb ram mobile electronics'),(77,1,0,'MSV laptop 16gb ram NVIDEA Graphics',5499,'MSV laptop 16gb ram','product06.png','MSV laptop 16gb ram NVIDEA Graphics electronics'),(78,1,0,'dell laptop 8gb ram intel integerated Graphics',4579,'dell laptop 8gb ram intel integerated Graphics','product08.png','dell laptop 8gb ram intel integerated Graphics electronics'),(79,7,0,'camera with 3D pixels',2569,'camera with 3D pixels','product09.png','camera with 3D pixels camera electronics gadgets'),(80,1,0,'ytrfdkjsd',12343,'sdfhgh','1542455446_thythtf .jpeg','dfgh'),(81,4,0,'Kids blue dress',300,'blue dress','1543993724_pg4.jpg','kids blue dress'),(82,2,0,'asdas',3333,'asd','1722013304_the_martyrdom_of_imam_hussain.jpg','sadsa'),(84,1,0,'book',300,'asdasd','1722231754_PUBG-Battlegrounds.jpg','sadsa'),(85,1,0,'asdas',4354,'sdfsdf','1722231952_PUBG-Battlegrounds.jpg','sadsa'),(86,3,0,'banana',9000,'asdasd','1722232791_unity-editor-new-ui.jpg','qw aasd'),(87,1,0,'Ladies Casual Cloths',3333,'asdas asdas','1722262214_40164488_8644647.jpg','asdasd'),(88,2,0,'Ladies Casual Cloths',3454,'dfsfsdf','1722262522_40164488_8644647.jpg','3rewr'),(89,1,343,'Ladies Casual Cloths asdasd',34344,'asdasd','1722263289_hotdeal.png','aas asdas , dase');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (12,'Mohamed','Siraj','mmohamedsiraj94@gmail.com','mmohamedsiraj94@gmail.com','0756595269','325/C, A.K.M Road, Eravur - 03A, 30300 Batticaloa Sri Lanka','Eravur'),(26,'Zeenath','Minha','zeenathminha@gmail.com','zeenathminha@gmail.com','0774780746','325/C, A.K.M Road, Eravur - 03A, 30300 Batticaloa Sri Lanka','Eravur');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info_backup`
--

DROP TABLE IF EXISTS `user_info_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info_backup` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info_backup`
--

LOCK TABLES `user_info_backup` WRITE;
/*!40000 ALTER TABLE `user_info_backup` DISABLE KEYS */;
INSERT INTO `user_info_backup` VALUES (12,'puneeth','Reddy','puneethreddy951@gmail.com','123456789','9448121558','123456789','sdcjns,djc'),(14,'hemanthu','reddy','hemanthreddy951@gmail.com','123456788','6526436723','s,dc wfjvnvn','b efhfhvvbr'),(15,'hemu','ajhgdg','keeru@gmail.com','346778','536487276',',mdnbca','asdmhmhvbv'),(16,'venky','vs','venkey@gmail.com','1234534','9877654334','snhdgvajfehyfygv','asdjbhfkeur'),(19,'abhishek','bs','abhishekbs@gmail.com','asdcsdcc','9871236534','bangalore','hassan'),(20,'pramod','vh','pramod@gmail.com','124335353','9767645653','ksbdfcdf','sjrgrevgsib'),(21,'prajval','mcta','prajvalmcta@gmail.com','1234545662','202-555-01','bangalore','kumbalagodu'),(22,'puneeth','v','hemu@gmail.com','1234534','9877654334','snhdgvajfehyfygv','asdjbhfkeur'),(23,'hemanth','reddy','hemanth@gmail.com','Puneeth@123','9876543234','Bangalore','Kumbalagodu'),(24,'newuser','user','newuser@gmail.com','puneeth@123','9535688928','Bangalore','Kumbalagodu'),(25,'otheruser','user','otheruser@gmail.com','puneeth@123','9535688928','Bangalore','Kumbalagodu'),(26,'Mohamed','Siraj','mmohamedsiraj94@gmail.com','mmohamedsiraj94@gmail.com','0771119948','325/C, A.K.M Road, Eravur - 03A, 30300 Batticaloa Sri Lanka','sd'),(27,'Mohamed','Siraj','mmohamedsisdfssdfsdfdraj94@gmail.com','mmohamedsisdfssdfsdfdraj94@gmail.com','0771119948','Eravur',''),(28,'Mohamed','Siraj','mmohamedsisdfssdfsdfdraj94@gmail.com','mmohamedsisdfssdfsdfdraj94@gmail.com','0771119948','Eravur','325/C, A.K.'),(29,'Mohamed','Siraj','mmohamedsiraj9400@gmail.com','mmohamedsiraj9400@gmail.com','0771119948','Eravur','325/C, A.K.'),(30,'Mohamed','Siraj','mmohamedsidfsdfraj94@gmail.com','mmohamedsidfsdfraj94@gmail.com','0771119948','Eravur','325/C, A.K.');
/*!40000 ALTER TABLE `user_info_backup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 21:57:27
