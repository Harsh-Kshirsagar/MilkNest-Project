-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: milknest
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `admin_master`
--

DROP TABLE IF EXISTS `admin_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_master` (
  `Admin_ID` int NOT NULL AUTO_INCREMENT,
  `Admin_Name` varchar(45) DEFAULT NULL,
  `Admin_Contact` varchar(45) DEFAULT NULL,
  `Admin_Email` varchar(45) DEFAULT NULL,
  `Admin_Username` varchar(45) DEFAULT NULL,
  `Admin_Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_master`
--

LOCK TABLES `admin_master` WRITE;
/*!40000 ALTER TABLE `admin_master` DISABLE KEYS */;
INSERT INTO `admin_master` VALUES (1,'Santosh','7028668996','dundagesantosh@gmail.com','santosh','santosh');
/*!40000 ALTER TABLE `admin_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categorymaster`
--

DROP TABLE IF EXISTS `tb_categorymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categorymaster` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `category_img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorymaster`
--

LOCK TABLES `tb_categorymaster` WRITE;
/*!40000 ALTER TABLE `tb_categorymaster` DISABLE KEYS */;
INSERT INTO `tb_categorymaster` VALUES (6,'Milk','https://th.bing.com/th/id/OIP.szBlh7Lgwq4Ob2PJeaKarAHaFF?rs=1&pid=ImgDetMain'),(7,'Dairy Essentials','https://tse4.mm.bing.net/th?id=OIP.-qtYY9ZkmNAv2s0Xvv-5UAHaEh&pid=Api&P=0&h=180'),(8,'Fermented Products','https://tse3.mm.bing.net/th?id=OIP.i4Dzmbxt3sMDXmAAXcS0PwHaFj&pid=Api&P=0&h=180'),(9,'Desserts and Sweets','https://as1.ftcdn.net/v2/jpg/03/80/59/92/1000_F_380599205_8WJDMh6i4baaq3rOh5LRv4QVNJesMPYL.jpg');
/*!40000 ALTER TABLE `tb_categorymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_customermaster`
--

DROP TABLE IF EXISTS `tb_customermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_customermaster` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(45) DEFAULT NULL,
  `CustomerAdress` varchar(45) DEFAULT NULL,
  `CustomerContact` varchar(45) DEFAULT NULL,
  `CustomerEmail` varchar(45) DEFAULT NULL,
  `CustomerUsername` varchar(45) DEFAULT NULL,
  `CustomerPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customermaster`
--

LOCK TABLES `tb_customermaster` WRITE;
/*!40000 ALTER TABLE `tb_customermaster` DISABLE KEYS */;
INSERT INTO `tb_customermaster` VALUES (1,'santosh','jarali','7028668996','santosh@gmail.com','santosh','santosh'),(13,'','','11111111111111111111','','',''),(14,'','','12345678900000000000','','','');
/*!40000 ALTER TABLE `tb_customermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_paymentmaster`
--

DROP TABLE IF EXISTS `tb_paymentmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_paymentmaster` (
  `paymentID` int NOT NULL AUTO_INCREMENT,
  `paymentname` varchar(45) DEFAULT NULL,
  `paymentdate` date DEFAULT NULL,
  `paymentmode` varchar(45) DEFAULT NULL,
  `paymenttotalamount` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `netamount` int DEFAULT NULL,
  `customerID` int DEFAULT NULL,
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paymentmaster`
--

LOCK TABLES `tb_paymentmaster` WRITE;
/*!40000 ALTER TABLE `tb_paymentmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_paymentmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productsmaster`
--

DROP TABLE IF EXISTS `tb_productsmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_productsmaster` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `productname` varchar(45) DEFAULT NULL,
  `productImage` varchar(500) DEFAULT NULL,
  `productDescription` varchar(45) DEFAULT NULL,
  `productSaleprise` decimal(10,0) DEFAULT NULL,
  `productpurchaseprice` decimal(10,0) DEFAULT NULL,
  `productCatID` int DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productsmaster`
--

LOCK TABLES `tb_productsmaster` WRITE;
/*!40000 ALTER TABLE `tb_productsmaster` DISABLE KEYS */;
INSERT INTO `tb_productsmaster` VALUES (1,'Amul','https://file.milkbasket.com/products/2_0_1705487143.jpeg?w=200&dpr=1.3','1/2 Ltr Fresh Buffalo milk',30,40,6),(2,'Amul','https://file.milkbasket.com/products/1_0_1705487117.jpeg?w=200&dpr=1.3','1/2 Ltr Fresh Buffalo milk',30,40,6),(3,'Amul','https://file.milkbasket.com/products/3_0_1599561759.jpg?w=200&dpr=1.3','1/2 Ltr Fresh Cow milk',30,40,6),(5,'Amul','https://file.milkbasket.com/products/1_0_1705487117.jpeg?w=200&dpr=1.3','1/2 Ltr Fresh Cow milk',30,40,6),(6,'Dairy Milk','https://tse3.mm.bing.net/th?id=OIP.AjQnqSn5LzkC_pa5EsGSKQHaHa&pid=Api&P=0&h=180','Buttons Pouch',200,220,9),(7,'Amul','https://file.milkbasket.com/products/2_0_1705487143.jpeg?w=200&dpr=1.3','1  Ltr Fresh buffalo milk',60,70,6),(8,'Amul','https://file.milkbasket.com/products/1_0_1705487117.jpeg?w=200&dpr=1.3','1  Ltr Fresh buffalo milk',60,70,6),(9,'Amul','https://file.milkbasket.com/products/3_0_1599561759.jpg?w=200&dpr=1.3','1  Ltr Fresh cow milk',60,70,6),(10,'Amul','https://file.milkbasket.com/products/1_0_1705487117.jpeg?w=200&dpr=1.3','1  Ltr Fresh cow milk',60,70,6),(11,'Prabhat','https://tse4.mm.bing.net/th?id=OIP.OMXktDJP9p5XLoQwG09MeQHaJK&pid=Api&P=0&h=180','2 Ltr Fresh cow milk',120,140,6),(12,'Prabhat','https://tse4.mm.bing.net/th?id=OIP.OMXktDJP9p5XLoQwG09MeQHaJK&pid=Api&P=0&h=180','2 Lts Fresh baffalo Milk',120,140,6),(13,'Prabhat','https://tse2.mm.bing.net/th?id=OIP.PGf5-OJvR7ftVNq8r_NPiQHaHu&pid=Api&P=0&h=180','5 Lts fresh cow milk',300,360,6),(14,'Prabhat','https://tse2.mm.bing.net/th?id=OIP.PGf5-OJvR7ftVNq8r_NPiQHaHu&pid=Api&P=0&h=180','5 Lts fresh baffalo milk',300,350,6),(15,'Dairy Milk ','https://tse4.mm.bing.net/th?id=OIP.0fb9zgMUFnMHkmxbatj5mQHaHa&pid=Api&P=0&h=180','Cadbury ',80,85,9),(16,'Nestle','https://tse1.mm.bing.net/th?id=OIP.sre0nofubkpzAnKTqVpGHwHaHa&pid=Api&P=0&h=180','250gm Milk Powdwer',50,55,7),(17,'Nestle','https://tse1.mm.bing.net/th?id=OIP.sre0nofubkpzAnKTqVpGHwHaHa&pid=Api&P=0&h=180','500gm Milk Powdwer',100,110,7),(18,'Gokul Lassi','https://tse3.mm.bing.net/th?id=OIP.D1Ogur8CGCEnxCyEQQSplwHaEK&pid=Api&P=0&h=180','1/2 Ltr Lassai',70,75,7),(19,'Gokul Lassi','https://tse3.mm.bing.net/th?id=OIP.D1Ogur8CGCEnxCyEQQSplwHaEK&pid=Api&P=0&h=180','1 Ltr lassai ',140,150,7),(20,'Yoghart','https://tse4.mm.bing.net/th?id=OIP.t-jszjs-3_ztAavxkLPjMwHaHa&pid=Api&P=0&h=180','250Gm Yoghart',100,110,8),(21,'Yoghart','https://tse4.mm.bing.net/th?id=OIP.t-jszjs-3_ztAavxkLPjMwHaHa&pid=Api&P=0&h=180','500Gm Yoghart',200,220,8),(22,'Butter','https://tse2.mm.bing.net/th?id=OIP.RY4EW7YrAFgi-1dLZwnjGgAAAA&pid=Api&P=0&h=180','50gm butter',30,40,7),(23,'Butter','https://tse2.mm.bing.net/th?id=OIP.RY4EW7YrAFgi-1dLZwnjGgAAAA&pid=Api&P=0&h=180','100gm butter',60,80,7),(24,'Butter','https://tse2.mm.bing.net/th?id=OIP.RY4EW7YrAFgi-1dLZwnjGgAAAA&pid=Api&P=0&h=180','250gmbutter',150,200,7),(25,'Butter','https://tse2.mm.bing.net/th?id=OIP.RY4EW7YrAFgi-1dLZwnjGgAAAA&pid=Api&P=0&h=180','500gm butter',300,400,7),(26,'Curd','https://en.kobrincheese.com/media/categories/images/345_%D0%A1%D0%9C%D0%95%D0%A2%D0%90%D0%9D%D0%90_13_.png','250gm curd (Dahi)',30,40,8),(27,'Curd','https://en.kobrincheese.com/media/categories/images/345_%D0%A1%D0%9C%D0%95%D0%A2%D0%90%D0%9D%D0%90_13_.png','500gm curd (Dahi)',50,40,8),(28,'Pista','https://tse1.mm.bing.net/th?id=OIP.vk8g3C3we6o-G7VqgOJcgQHaFj&pid=Api&P=0&h=180','500gm pistAa',200,250,8),(29,'Heroes','https://tse3.mm.bing.net/th?id=OIP.T2R3tyvxBEUYLrgst4CxCgHaHa&pid=Api&P=0&h=180','250gm heroes',150,200,9),(30,'chocoes','https://tse2.mm.bing.net/th?id=OIP.4eieAdWb0aiLiKikIf2HZgHaHa&pid=Api&P=0&h=180','250gm chocoes',100,120,9),(31,'milk Classic','https://tse1.mm.bing.net/th?id=OIP.GC3iMe0SghUydj7blesKAAHaHa&pid=Api&P=0&h=180','250gm classic',500,550,9);
/*!40000 ALTER TABLE `tb_productsmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usermaster`
--

DROP TABLE IF EXISTS `tb_usermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usermaster` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(16) DEFAULT NULL,
  `Usercontact` varchar(45) DEFAULT NULL,
  `Useremail` varchar(50) DEFAULT NULL,
  `UserPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usermaster`
--

LOCK TABLES `tb_usermaster` WRITE;
/*!40000 ALTER TABLE `tb_usermaster` DISABLE KEYS */;
INSERT INTO `tb_usermaster` VALUES (1,'Santosh Dundage','7028668996','dundagesantosh@gmail.com','S@1234'),(11,'bnhj','894561231235658985566','patil@gmail.com','vbvbv7845lk,.,');
/*!40000 ALTER TABLE `tb_usermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cartmaster`
--

DROP TABLE IF EXISTS `tbl_cartmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cartmaster` (
  `cartID` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `ProductName` varchar(45) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cartmaster`
--

LOCK TABLES `tbl_cartmaster` WRITE;
/*!40000 ALTER TABLE `tbl_cartmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cartmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orders`
--

DROP TABLE IF EXISTS `tbl_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `totalAmount` int DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `paymentDetails` varchar(100) DEFAULT NULL,
  `orderDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orders`
--

LOCK TABLES `tbl_orders` WRITE;
/*!40000 ALTER TABLE `tbl_orders` DISABLE KEYS */;
INSERT INTO `tbl_orders` VALUES (1,1,2,1,30,'Credit Card','Pending','2025-02-12 10:21:15'),(2,1,3,1,30,'Cash on Delivery','Pending','2025-02-15 05:20:55');
/*!40000 ALTER TABLE `tbl_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-21 12:22:06
