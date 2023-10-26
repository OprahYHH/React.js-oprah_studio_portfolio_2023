CREATE DATABASE  IF NOT EXISTS `uit2bh3x875n9y2o` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uit2bh3x875n9y2o`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: t07cxyau6qg7o5nz.cbetxkdyhwsb.us-east-1.rds.amazonaws.com    Database: uit2bh3x875n9y2o
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `client` varchar(100) NOT NULL,
  `year` year NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (2,'Oprah Studio Portfolio','Oprah Studio',2022,'https://oprahstudio.vercel.app/','project2.jpg','The purpose is to indicate all of the works in this portfolio website, and to create memorable visuals and build clear and obvious navigation and structure all the information. I made large headings and large sizes for titles to be easy to read and friendly to access. The main page leads to the way of seeing all sections of websites and visits the ones that users are interested in.','2022-11-20 00:00:00'),(3,'Pensieve UI/UX Blog','Oprah Studio',2022,NULL,'project3.jpg','This is a personal project for the reader and the executor without deadlines and clear terms of reference using Vue.js and Laravel. I made my vision of this blog for my fancy articles of UI / UX informations. Correctly presented messages are harmoniously combined with the design, which affects the target audience. The site has nothing superfluous, looks holistic, and is the most easy to access.','2022-11-20 07:23:36'),(4,'FeDex Consulting Service','FeDex',2022,NULL,'project4.jpg','FeDex Consulting Service is a business company based in Southeast Asia. The main goal is to make clear and obvious design on this site. The challenge is to balance trust components without being monotonous on this site, so it combined the specialized on Internet color and the most trustful scheme throughout this website which makes it pleasant on the eyes.','2022-11-20 07:25:25'),(5,'Bibliophile Share Book App','Douglas Team Member',2022,NULL,'project5.jpg','Bibliophile Share Book App is the personal mobile development and also being a UI / UX designer for this project with team members at college. As a result, we earned top scores at college. The main goal is building functions in this application to share books and sell or rent books with people who live in the same city. We communicated the structures first to build the front-end for users and another app for admins to control everything. I built wireframe and user flow to make sure without mistakes and the best UX experience for users. And then we shared out the work and cooperated with every team member. We tested and debugged the application after development.','2022-11-20 07:27:01'),(6,'MOT Branding Designs','MOT',2019,NULL,'project6.jpg','MOT is a local e-commerce brand in Asia that sells luxury lifestyle online. It leads to a relaxed and comfortable for decorating everyone\'s home. The client required a logo design and brand identity services for offices and store supplies.','2022-11-20 07:28:58'),(7,'TaiwanMoving Website','Mimic',2020,NULL,'project7.jpg','TaiwanMoving offers professional moving services based in Taiwan. The client hoped to present impressive designs and colors on this website, brightly. To make it easy to understand the information, and quickly process their services. The big challenge is that the steps and structures between drivers and customer service staff are hard to communicate with different methods.','2022-11-20 07:29:55'),(8,'StarWalk Game App','Jade',2019,NULL,'project8.jpg','This demo application created with our team member to offer a game between walking and famous singer stars. People walked further distances which could transfer the product of the favorite star. The screen will show the area of the treasure to get some points for gifts. That was an interesting project.','2022-11-20 07:30:56'),(9,'ON Facial Masks Package','Go Global',2018,NULL,'project9.jpg','ON is a brand from China social media company based in New Zealand. It offers natural materials into facial masks of the product to provide the skin care for women. This project kept the minimalist package design with the marble background. Also, another product of different product designs provides for teenage.','2022-11-20 07:32:52'),(10,'ON Skin Care Website','Go Global',2018,NULL,'project10.jpg','ON is a brand pf a China social media company based in New Zealand. It offers natural materials into facial masks of the product to provide the skin care for women. This project kept minimal style package design with marble background. This website leads customers to shopping and know their products.','2022-11-20 07:33:46'),(11,'Go Global Website','Go Global',2018,'https://www.goglobal.ltd/','project11.jpg','Go Global is a China social media company located in New Zealand to assist local companies to extend their business into China. They have a famous brand on WeChat called \'Go Kiwi\' to explore further about New Zealand with advertisements. This project focused on representing their service clearly and obviously.','2022-11-20 07:34:40'),(12,'Creator Music & Art Website','Jade',2017,NULL,'project12.jpg','Creator Music & Art is a group focusing on high-quality art and culture since 1994 from China. It offers the service around the world including Asia, Canada, Japan, China with music, concconcertsent.s project indicated the minimalist and luxury design to impressed customers.','2022-11-20 07:35:45'),(13,'Zuba Car Website','Mimic',2019,NULL,'project12.jpg','This project is Zuba Car rental service website based in Asia. This brand offers a platform to share their car with people for environmental protection. The main goal was to create modern and stylish web designs that have friendly navigation, high-quality content, easy structure information to process. The structure included front-end pages for renters and admin pages for sharers.','2022-11-20 07:36:47'),(14,'Jade Innovation Website','Jade',2017,NULL,'project14.jpg','Jade is an innoviate agency with development and software expertise. We shape brands, design and build websites. This project presented featuring a clean, modern, minimal design, engaging user interaction.','2022-11-20 07:47:10'),(15,'WeSport Booking Website','WeSport',2017,NULL,'project15.jpg','WeSport is a local event booking website for local people. The businesses included marathon, triathlon, and bicycle events. The site required a clear structure and easy to understand for users to book because their customers have different age users. The booking service is also extended mobile application.','2022-11-20 07:48:13'),(16,'Go Global Branding','Go Global',2018,NULL,'project16.jpg','Go Global is a China social media company located in New Zealand to assist local companies to extend their business into China. They have a famous brand on WeChat called \'Go Kiwi\' to explore further about New Zealand with advertisements. This project is to design their brand identity and the print graphic or signs including the business card.','2022-11-20 07:49:25'),(17,'Preschool Contact Book App','Jade',2017,NULL,'project17.jpg','This application provides preschool schools with information about their children. The application has two apps including one version for teachers to share information with parents; another version for parents to report and feedback on their comments, and understand their children\'s current status.','2022-11-20 07:37:48'),(18,'Phone Screen Protector Package','Jade',2017,NULL,'project18.jpg','This is a protective eyeglass screen glass protector. To design a few different products for clients. The main requirement is to present its features in this product to impress customers compact to competitors, so we also did the marketing search for it. I love this project to design a minimalist style for this product.','2022-11-20 07:38:52'),(19,'JIAHO Business Branding','JIA HO',2016,NULL,'project19.jpg','JIA HO is a management consulting company of the Japan real estate. The client required some professional and minimalist or modern design for their brand identity and the business card.','2022-11-20 07:39:59'),(20,'Running Event Mascot','WeSport',2016,NULL,'project20.jpg','This illustration offers the sport event to support and encourage those clients. The design based on the features of the Taiwanese Bear to lead its figures.','2022-11-20 07:41:21'),(21,'K Space VIP Event','K Space',2016,NULL,'project21.jpg','K Space is a loft lifestyle luxury brand in Asia. This VIP event to provide entertainments with foods and desserts for the VIP members. I illustrated the pop art style for every items.','2022-11-20 07:42:17'),(22,'Cutty Sark Tea Postcard','Cutty Sark',2016,NULL,'project22.jpg','Cutty Sark is a British style of the afternoon tea room restaurant. There are numerous tea events to explore the UK history with foods. This postcards to offer customers how to create different drinks throughout their black tea. This project required a few illustrations into postcards. I offer the photography service to indicate the best pciture.','2022-11-20 07:43:00'),(23,'Bake Chichi CIS Design','ChiChi',2015,NULL,'project23.jpg','Bake ChiChi, a small online bakery shop that owners dreamt of, became a reality. The print graphic included the logo design and product stickers. The sharpness of this logo represents this brand selling tarts, cakes or cookies. The brand identity indicated the pink color to show the sweets fruits such as barries, and bring the most delicious to their customers.','2022-11-20 07:43:48'),(24,'Spring & Summer Product Mangazine','Cutty Sark',2013,NULL,'project24.jpg','The new product of the magazine for Spring and Summer. ','2022-11-20 07:44:42'),(25,'Ks Time Event Poster','K Space',2014,NULL,'project25.jpg','Designing a few posters to VIP Member of the brand \'K Space\' including the event of Father Day, Wedding & Party Week. ','2022-11-20 07:45:45');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 17:19:52
