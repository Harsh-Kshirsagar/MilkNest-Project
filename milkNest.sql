-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: milknestdb
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_master`
--

LOCK TABLES `admin_master` WRITE;
/*!40000 ALTER TABLE `admin_master` DISABLE KEYS */;
INSERT INTO `admin_master` VALUES (1,'Santosh','7028668996','dundagesantosh@gmail.com','santosh','santosh'),(2,'Harsh','9529808907','harsh@gmail.com','Harsh','Harsh');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customermaster`
--

LOCK TABLES `tb_customermaster` WRITE;
/*!40000 ALTER TABLE `tb_customermaster` DISABLE KEYS */;
INSERT INTO `tb_customermaster` VALUES (1,'santosh','jarali','7028668996','santosh@gmail.com','santosh','santosh'),(2,'harsh','gadhinglaj','9529808907','harsh@gmail.com','harsh','harsh'),(3,'sohel','bhadgon','7620516316','sohel@gmail.com','sohel','sohel'),(4,'soheb','nool','9307671123','soheb@gmail.com','soheb','soheb'),(5,'shamal','Bhudargad','9545226662','shamal@gmail.com','shamal','shamal'),(6,'kajal','gadhinglaj','7249439748','kajal@gmail.com','kajal','kajal'),(7,'Prerana','Mugli','7248689856','prerna@gmail.com','prerna','prerna'),(8,'Vaishnavi','Kagal','4589769329','vaishnavil@gmail.com','Vaishnavi','Vaishnavi'),(9,'Atharv','jarali','4785689923','atharv@gmail.com','Atharv','Atharv'),(10,'Supriya','Mugali','7815976567','supriyal@gmail.com','Supriya','Supriya'),(15,'Santosh','A/P jarali Tal-Gadhinglaj','7028668996','dundagesantosh@gmail.com','Santosh','Santosh');
/*!40000 ALTER TABLE `tb_customermaster` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=887 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productsmaster`
--

LOCK TABLES `tb_productsmaster` WRITE;
/*!40000 ALTER TABLE `tb_productsmaster` DISABLE KEYS */;
INSERT INTO `tb_productsmaster` VALUES (1,'Amul','https://file.milkbasket.com/products/2_0_1705487143.jpeg?w=200&dpr=1.3','1/2 Ltr Fresh Buffalo milk',30,40,6),(2,'Amul','https://file.milkbasket.com/products/1_0_1705487117.jpeg?w=200&dpr=1.3','1/2 Ltr Fresh Buffalo milk',30,40,6),(3,'Amul','https://file.milkbasket.com/products/3_0_1599561759.jpg?w=200&dpr=1.3','1/2 Ltr Fresh Cow milk',30,40,6),(5,'Amul','https://file.milkbasket.com/products/1_0_1705487117.jpeg?w=200&dpr=1.3','1/2 Ltr Fresh Cow milk',30,40,6),(6,'Dairy Milk','https://tse3.mm.bing.net/th?id=OIP.AjQnqSn5LzkC_pa5EsGSKQHaHa&pid=Api&P=0&h=180','Buttons Pouch',200,220,9),(7,'Amul','https://file.milkbasket.com/products/2_0_1705487143.jpeg?w=200&dpr=1.3','1  Ltr Fresh buffalo milk',60,70,6),(8,'Amul','https://file.milkbasket.com/products/1_0_1705487117.jpeg?w=200&dpr=1.3','1  Ltr Fresh buffalo milk',60,70,6),(9,'Amul','https://file.milkbasket.com/products/3_0_1599561759.jpg?w=200&dpr=1.3','1  Ltr Fresh cow milk',60,70,6),(10,'Amul','https://file.milkbasket.com/products/1_0_1705487117.jpeg?w=200&dpr=1.3','1  Ltr Fresh cow milk',60,70,6),(11,'Prabhat','https://tse4.mm.bing.net/th?id=OIP.OMXktDJP9p5XLoQwG09MeQHaJK&pid=Api&P=0&h=180','2 Ltr Fresh cow milk',120,140,6),(12,'Prabhat','https://tse4.mm.bing.net/th?id=OIP.OMXktDJP9p5XLoQwG09MeQHaJK&pid=Api&P=0&h=180','2 Lts Fresh baffalo Milk',120,140,6),(13,'Prabhat','https://tse2.mm.bing.net/th?id=OIP.PGf5-OJvR7ftVNq8r_NPiQHaHu&pid=Api&P=0&h=180','5 Lts fresh cow milk',300,360,6),(14,'Prabhat','https://tse2.mm.bing.net/th?id=OIP.PGf5-OJvR7ftVNq8r_NPiQHaHu&pid=Api&P=0&h=180','5 Lts fresh baffalo milk',300,350,6),(15,'Dairy Milk ','https://tse4.mm.bing.net/th?id=OIP.0fb9zgMUFnMHkmxbatj5mQHaHa&pid=Api&P=0&h=180','Cadbury ',80,85,9),(16,'Nestle','https://tse1.mm.bing.net/th?id=OIP.sre0nofubkpzAnKTqVpGHwHaHa&pid=Api&P=0&h=180','250gm Milk Powdwer',50,55,7),(17,'Nestle','https://tse1.mm.bing.net/th?id=OIP.sre0nofubkpzAnKTqVpGHwHaHa&pid=Api&P=0&h=180','500gm Milk Powdwer',100,110,7),(18,'Gokul Lassi','https://tse3.mm.bing.net/th?id=OIP.D1Ogur8CGCEnxCyEQQSplwHaEK&pid=Api&P=0&h=180','1/2 Ltr Lassai',70,75,7),(19,'Gokul Lassi','https://tse3.mm.bing.net/th?id=OIP.D1Ogur8CGCEnxCyEQQSplwHaEK&pid=Api&P=0&h=180','1 Ltr lassai ',140,150,7),(20,'Yoghart','https://tse4.mm.bing.net/th?id=OIP.t-jszjs-3_ztAavxkLPjMwHaHa&pid=Api&P=0&h=180','250Gm Yoghart',100,110,8),(21,'Yoghart','https://tse4.mm.bing.net/th?id=OIP.t-jszjs-3_ztAavxkLPjMwHaHa&pid=Api&P=0&h=180','500Gm Yoghart',200,220,8),(22,'Butter','https://tse2.mm.bing.net/th?id=OIP.RY4EW7YrAFgi-1dLZwnjGgAAAA&pid=Api&P=0&h=180','50gm butter',30,40,7),(23,'Butter','https://tse2.mm.bing.net/th?id=OIP.RY4EW7YrAFgi-1dLZwnjGgAAAA&pid=Api&P=0&h=180','100gm butter',60,80,7),(24,'Butter','https://tse2.mm.bing.net/th?id=OIP.RY4EW7YrAFgi-1dLZwnjGgAAAA&pid=Api&P=0&h=180','250gmbutter',150,200,7),(25,'Butter','https://tse2.mm.bing.net/th?id=OIP.RY4EW7YrAFgi-1dLZwnjGgAAAA&pid=Api&P=0&h=180','500gm butter',300,400,7),(26,'Curd','https://en.kobrincheese.com/media/categories/images/345_%D0%A1%D0%9C%D0%95%D0%A2%D0%90%D0%9D%D0%90_13_.png','250gm curd (Dahi)',30,40,8),(27,'Curd','https://en.kobrincheese.com/media/categories/images/345_%D0%A1%D0%9C%D0%95%D0%A2%D0%90%D0%9D%D0%90_13_.png','500gm curd (Dahi)',50,40,8),(28,'Pista','https://tse1.mm.bing.net/th?id=OIP.vk8g3C3we6o-G7VqgOJcgQHaFj&pid=Api&P=0&h=180','500gm pistAa',200,250,8),(29,'Heroes','https://tse3.mm.bing.net/th?id=OIP.T2R3tyvxBEUYLrgst4CxCgHaHa&pid=Api&P=0&h=180','250gm heroes',150,200,9),(30,'chocoes','https://tse2.mm.bing.net/th?id=OIP.4eieAdWb0aiLiKikIf2HZgHaHa&pid=Api&P=0&h=180','250gm chocoes',100,120,9),(31,'milk Classic','https://tse1.mm.bing.net/th?id=OIP.GC3iMe0SghUydj7blesKAAHaHa&pid=Api&P=0&h=180','250gm classic',500,550,9),(32,'Dairy Milk','https://th.bing.com/th/id/OIP.QBC8_fJ4tLxkXks71xGlzgHaHa?w=800&h=800&rs=1&pid=ImgDetMain','300 ml Dairy Milk',20,30,6),(33,'Cadbury Dairy Milk','https://th.bing.com/th/id/OIP.0Ak805VF4lGi2v_uszavyAHaHa?w=2400&h=2400&rs=1&pid=ImgDetMain',' Dairy Milk Little Bar 18g',10,15,9),(34,'Amul','https://amul.com/files/products/Amul_Cow_Milk_1L.png','Cow Milk',25,30,6),(35,'Amul','https://th.bing.com/th/id/OIP.2knAu_5Pe8i-Uy6momja5wHaHa?rs=1&pid=ImgDetMain','500 ml ButterMilk',30,40,8),(36,'Chocolate Bar','https://assets.iceland.co.uk/i/iceland/cadbury_dairy_milk_with_oreo_chocolate_bar_120g_55198_T596.jpg','Oreo Chocolate Bar',15,20,9),(37,'Cadbury','https://cdn.shopify.com/s/files/1/0429/1071/1962/products/IMG_3268_2000x.jpg?v=1606803187','Milk Silk Chocolate',275,300,9),(38,'Cadbury','https://desorpresa.com/wp-content/uploads/2021/06/Dairy-milk-silk-bubbly.png','Cadbury Dairy Milk Silk',85,NULL,9),(39,'Chocolate Bar','https://m.media-amazon.com/images/I/51LY8-JOdoL._SL1500_.jpg','Silk Chocolate Bar',20,NULL,9),(40,'Chocolate','https://m.media-amazon.com/images/I/61KRD65TtEL._SL1500_.jpg','DairyMilk Chocolate',50,NULL,9),(41,'Cadbury','https://th.bing.com/th/id/OIP.fehSqxdjO5HcMzePUkmuoQAAAA?rs=1&pid=ImgDetMain','Dairy Milk Cadbury',300,NULL,9),(42,'Chocolates','https://th.bing.com/th/id/R.6acef5cda81c1300522ea7f110c21cad?rik=axAdZ9qRMfnjhw&riu=http%3a%2f%2fmygourmetgifts.com%2fwp-content%2fuploads%2f2014%2f03%2f51LJFksij0L.jpg&ehk=hAITdcU5zCAsNWS1%2bEtKx1ivKDgz5p5ghG3mdi%2fO9jc%3d&risl=&pid=ImgRaw&r=0','GODIVA Chocolatier Milk Chocolate',500,NULL,9),(43,'Yoghurt','https://meredithdairy.com/wp-content/uploads/2020/03/natural-sheep-milk-yoghurt-probiotic.jpg','Yoghurt probiotic',100,110,8),(44,'Dannon milk Yoghurt','https://i5.peapod.com/c/P4/P4FWI.png','Dannon Whole Milk Plain Yogurt',90,100,8),(45,'Organic Yoghurt','https://m.media-amazon.com/images/I/81gYP3nJA5L._SL1500_.jpg',' Probiotic Yogurt',75,85,8),(46,'Freash Yoghurt','https://cdn.store-assets.com/s/211104/i/15193970.jpeg?width=1024','FRESH MILK YOGURT',30,40,8),(47,'Milk yoghurt','https://th.bing.com/th/id/OIP.jwDpI88_mJ9eDl7aKeGHgwAAAA?rs=1&pid=ImgDetMain','Karoun Whole Milk Yogurt',50,60,8),(48,'Organic Milk yoghurt','https://kalonasupernatural.com/wp-content/uploads/750088-70105-3_Organic-Whole-Cream-Top-Plain-Yogurt-24oz-scaled.jpeg','Milk Plain Cream Top Yogurt',65,75,8),(49,'Yogurt Whole Milk, Vanilla','https://assets-prd-weg.unataops.com/web/product_medium/c4ceb2361e4a0322159f43fe064378f77ee14aa6.jpg','Organic Yogurt, Vanilla',85,95,8),(50,'Plain Yoghurt','https://i.pinimg.com/originals/bc/ec/b4/bcecb46d27bf2c6c32b26db678970137.png','Lactose-Free Organic Plain Yogurt',100,110,8),(51,'Lassi','https://th.bing.com/th/id/OIP.dP0kSmCguZsyDoxhzAfcbAHaIR?rs=1&pid=ImgDetMain','Lassi - Devbhog',15,20,7),(52,'Lassi','https://mifoodindustries.com/wp-content/uploads/2021/08/lassi200g.png','Freash Lassi',15,20,7),(53,'Lassi','https://www.pngitem.com/pimgs/m/297-2977729_punjab-sind-lassi-hd-png-download.png','Punjab Sind Lassi',25,35,7),(54,'Chocolate Lassi','https://5.imimg.com/data5/SELLER/Default/2024/3/405851310/RI/TB/UW/1531824/chocolate-sweet-lassi-yogurt-mix-1000x1000.jpeg','Chocolate Sweet Lassi',60,NULL,7),(55,'Curd','https://m.media-amazon.com/images/I/71eftr9IdFL.jpg','Curd',50,NULL,8),(56,'Curd','https://5.imimg.com/data5/RM/PR/MY-28603212/heritage-curd-250x250.jpg','Heritage Curd ',60,NULL,8),(57,'Curd ','https://5.imimg.com/data5/SELLER/Default/2021/1/JW/PL/OC/25528394/curd-400g-mock-1-250x250.jpg','Soya Curd ',40,NULL,8),(58,'Butter','https://th.bing.com/th/id/OIP.BUy9wW-rxciIxmZNxhQr0wHaFL?rs=1&pid=ImgDetMain','Best Quality Butter',100,NULL,7),(59,'Butter','https://th.bing.com/th/id/OIP.ee9iBdHqKuEK6LgVd9uJ3AHaFP?rs=1&pid=ImgDetMain','Flora With Butter',100,NULL,7),(60,'Peanut Butter','https://i5.walmartimages.com/asr/2db7e7dc-5a58-4222-86bc-489ff0286fb1_1.c25b54c5e633faa61ffef1083cbbddcc.jpeg','Best & Freash Peanut Butter',150,NULL,7),(61,'Peanut Butter Bar','https://shop.hersheys.com/on/demandware.static/-/Sites-master-us/default/dwf0ce8df1/images/hi-res/034000443543_1.jpg',' Milk Chocolate Peanut Butter Candy Bar',20,NULL,7),(62,'Peanut Butter Bar','https://candyfunhouse.ca/cdn/shop/files/atkinson-peanut-butter-bars-sugar-free-3.75oz-candy-funhouse_800x.jpg?v=1684418315','Sugar free candy',50,NULL,7),(63,'Semi Skimmed Milk','https://th.bing.com/th/id/OIP.GEisRikLAJ3VW9Niz9z57wHaHa?rs=1&pid=ImgDetMain','Semi Skimmed Milk 500 ml',20,NULL,6),(64,'Skimmed Milk','https://melcom.com/media/catalog/product/cache/d0e1b0d5c74d14bfa9f7dd43ec52d082/2/5/25362_1.jpg','EMBORG SKIMMED MILK 1L',60,NULL,6),(65,'Semi Skimmed Milk','https://m.media-amazon.com/images/I/71MbgAPljnL.jpg','Milk 6 * 1 Ltr',360,NULL,6),(66,'Milk','https://m.media-amazon.com/images/I/41u4k+lznvL._SL500_.jpg','Best UHT Milk',20,NULL,6),(67,'Butter Milk','https://leswhitehead.com/wp-content/uploads/2022/11/600ML-Dairy-Farmers-Buttermilk-Carton.png','600ML Dairy  Buttermilk ',40,NULL,6),(68,'Coconut milk','https://th.bing.com/th/id/OIP._VWUuTBMiRemqC0ltBM36AAAAA?rs=1&pid=ImgDetMain','Friendly Farms Original Coconut Milk',30,NULL,6),(69,'Coconut Milk','https://images-na.ssl-images-amazon.com/images/I/71m20R8JlXL._SY606_.jpg','Delicious Dairy Coconutmilk Creamer',50,NULL,6),(70,'Vanilla Milk','https://5.imimg.com/data5/SELLER/Default/2023/12/365521226/YX/AA/KP/192846803/premium-vanilla-milk-drink-250-ml-500x500.jpeg','Premium Vanilla Milk Drink 250 ml',60,NULL,6),(71,'Freash Milk','https://static.winc.com.au/pi/f6/f94a8e558bac96a5ad94dd62921b121e6b524a-1213606/lgsq.jpg','Dairy Farmers UHT Whole Milk 1 Litre',68,NULL,6),(72,'Milk Powder','https://mandtsupermarket.co.uk/wp-content/uploads/2020/05/milk-full-cream-milk-powder-dano.jpg','Dano Milk Full Cream Milk Powder ',40,NULL,7),(73,'Milk Bar','https://th.bing.com/th/id/OIP.LWLRk_li1rUJm7UK63Kt8QHaHa?rs=1&pid=ImgDetMain','Silk Unsweetened Cashew Milk',20,NULL,9),(74,'Milk','https://godairyfree.org/wp-content/uploads/2006/09/product-silk-cashewmilk-chocolate.png','Silk Cashewmilk ',20,NULL,6),(75,'Milk Powder','https://s3.ap-south-1.amazonaws.com/diingdong/amullake0007.jpg','Amulya Dairy Whitener Milk Powder',25,NULL,7),(76,'Dairy milk ice Cream','https://www.trolley.co.uk/img/product/YJO573','Cadbury Dairy Milk Ice Cream (3 x 100ml) ',60,NULL,9),(77,'Cow Milk','https://whytedairy.in/wp-content/uploads/2023/04/MIlk-Bottle.png','Freash Cow Milk',40,NULL,6),(78,'Milk','https://essentialcoffee.sg/wp-content/uploads/2015/07/EBG-March-2015-095-Copy.jpg',' Essential Milk 750gm ',80,NULL,6),(79,'Yoghurt','https://i5.walmartimages.com/asr/0e7c78d0-90ae-45e4-b81a-cb9e8c7ef838.03434ee4a2c62411dd433a6e8b159d9e.jpeg','Yoplait Whole Milk Yogurt',75,NULL,8),(80,'Yoghurt','https://i5.walmartimages.com/asr/260e06eb-41ce-4d0c-af00-7ba98382a0f5_1.624dd4592cb479be45e5e69985b80dfc.jpeg','Chobani Non-Fat Greek Yogurt',55,NULL,8),(81,'Milk powder','https://www.seingayhar.com/image/cache/catalog/Product/Milk%20Powder/inmilk-nutrition-gold-400g-1000x1000.jpg','InMilk Nutrition Gold Adult Milk Powder 400g',150,NULL,7),(82,'Cow milk','https://ik.imagekit.io/ghomoo/wp-content/uploads/2022/12/1-Milk-front-500ml-1.png','Desi Cow Milk',30,NULL,6),(83,'Milk Bar','https://assets.iceland.co.uk/i/iceland/cadbury_dairy_milk_little_bars_6_pack_108g_39821_T1.jpg?$pdpzoom$',' Milk Bars 6 Pack 108g',30,NULL,9),(84,'Milk Bar','https://m.media-amazon.com/images/I/81HujSFA+4L.jpg','Milk Chocolate Bar (6 bars)',500,NULL,9),(85,'Milk Powder','https://sp-ao.shortpixel.ai/client/to_auto,q_glossy,ret_img,w_600,h_600/https://www.uniquepharmacy.lk/wp-content/uploads/2019/09/MEYENBERG-GOAT-MILK-POWDER-600x600.jpeg','Goat Milk Powder',50,NULL,7),(86,'Milk','https://th.bing.com/th/id/OIP.KmGr_SCH-F6Exr8xw1YhwQHaHa?rs=1&pid=ImgDetMain','Nestle Low Fat Milk',30,NULL,6),(87,'Milk','https://th.bing.com/th/id/R.c6785de4ae3027f0d939fe045ed41f9d?rik=mI%2bog%2bx8wQvHlQ&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0284%2f7237%2f7453%2fproducts%2fNESTLE_NON_FAT_MILK_250ML_800x_903cc05a-61fe-4b69-9cfd-4e468019f25a_1200x1200.png%3fv%3d1590297232&ehk=%2bNCOW9C3uAqQ6snKkPiXSXgHtlFff1Kioxfe%2fRvwrdU%3d&risl=&pid=ImgRaw&r=0','NESTLE NON-FAT MILK 250M',50,NULL,6);
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
INSERT INTO `tb_usermaster` VALUES (1,'Santosh Dundage','7028668996','dundagesantosh@gmail.com','santosh'),(2,'Sohel Shekh','4448798745','sohell@gmail.com','sohel'),(3,'Sohelb Shekh','7895684252','soheb@gmail.com','soheb'),(4,'Harsh','7846576258','harsh@gamil.com','harsh'),(5,'sumit','4568927543','sumit@gmail.com','sumit');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orders`
--

LOCK TABLES `tbl_orders` WRITE;
/*!40000 ALTER TABLE `tbl_orders` DISABLE KEYS */;
INSERT INTO `tbl_orders` VALUES (1,1,2,1,30,'Credit Card','Pending','2025-02-12 10:21:15'),(2,1,3,1,30,'Cash on Delivery','Pending','2025-02-15 05:20:55'),(3,1,2,1,30,'Cash on Delivery','Pending','2025-02-21 07:03:00'),(4,1,3,1,30,'Cash on Delivery','Pending','2025-03-03 10:28:36'),(5,1,2,1,30,'Cash on Delivery','Pending','2025-03-03 10:28:36');
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

-- Dump completed on 2025-03-04 12:56:29
