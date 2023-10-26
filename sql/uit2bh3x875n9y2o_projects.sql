CREATE DATABASE  IF NOT EXISTS `freedb_react_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `freedb_react_db`;
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
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` enum('Website','Graphic','Illustrator','APP','Photographic','Others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags2` json DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (2,'Oprah Studio Portfolio','Oprah Studio','The purpose is to indicate all of the works in this portfolio website, and to create memorable visuals and build clear and obvious navigation and structure all the information. I made large headings and large sizes for titles to be easy to read and friendly to access. The main page leads to the way of seeing all sections of websites and visits the ones that users are interested in.',2022,'/images/project/project002.jpg','/images/project/project002-1.jpg','/images/project/project002-2.jpg','/images/project/project002-3.jpg','https://oprahstudio.herokuapp.com/','Website','{\"type\": [\"Laravel\", \"MySQL\", \"Tailwind\", \"UI/UX Design\"]}','2022-10-23 00:30:41','2022-10-23 00:30:39','[\"Laravel\", \"MySQL\", \"Tailwind\", \"UI/UX Design\"]','/images/project/project2.jpg'),(3,'Pensieve UI/UX Blog','Oprah Studio','This is a personal project for the reader and the executor without deadlines and clear terms of reference using Vue.js and Laravel. I made my vision of this blog for my fancy articles of UI / UX informations. Correctly presented messages are harmoniously combined with the design, which affects the target audience. The site has nothing superfluous, looks holistic, and is the most easy to access.',2022,'/images/project/project003.jpg','/images/project/project003-1.jpg','/images/project/project003-2.jpg','','','Website','{\"type\": [\"Laravel\", \"Vue\", \"MySQL\", \"Tailwind\"]}','2022-10-23 00:30:33','2022-10-23 00:30:31','[\"Laravel\", \"Vue\", \"MySQL\", \"Tailwind\"]','/images/project/project3.jpg'),(4,'FeDex Consulting Service','FeDex Consulting Service','FeDex Consulting Service is a business company based in Southeast Asia. The main goal is to make clear and obvious design on this site. The challenge is to balance trust components without being monotonous on this site, so it combined the specialized on Internet color and the most trustful scheme throughout this website which makes it pleasant on the eyes.',2022,'/images/project/project004.jpg','/images/project/project004-1.jpg','/images/project/project004-2.jpg','/images/project/project004-3.jpg','','Website','{\"type\": [\"React\", \"MongoDB\", \"Tailwind\", \"UI/UX Design\"]}','2022-10-23 00:30:25','2022-10-23 00:30:23','[\"React\", \"MongoDB\", \"Tailwind\", \"UI/UX Design\"]','/images/project/project4.jpg'),(5,'Bibliophile Share Book App','Team Member','Bibliophile Share Book App is the personal mobile development and also being a UI / UX designer for this project with team members at college. As a result, we earned top scores at college. The main goal is building functions in this application to share books and sell or rent books with people who live in the same city.\n\nWe communicated the structures first to build the front-end for users and another app for admins to control everything. I built wireframe and user flow to make sure without mistakes and the best UX experience for users. And then we shared out the work and cooperated with every team member. We tested and debugged the application after development.',2022,'/images/project/project005.jpg','','',NULL,'','APP','{\"type\": [\"Java\", \"Android Studio\", \"UI/UX Design\"]}','2022-10-23 00:28:09','2022-10-23 00:28:11','[\"Java\", \"Android Studio\", \"UI/UX Design\"]','/images/project/project5.jpg'),(6,'MOT Branding Design','MOT','MOT is a local e-commerce brand in Asia that sells luxury lifestyle online. It leads to a relaxed and comfortable for decorating everyone\'s home. The client required a logo design and brand identity services for offices and store supplies.',2019,'/images/project/project006.jpg','/images/project/project006-1.jpg','',NULL,'','Graphic','{\"type\": [\"Visual Design\", \"Branding\", \"UI/UX Design\"]}','2022-10-23 00:31:10','2022-10-23 00:31:08','[\"Visual Design\", \"Branding\", \"UI/UX Design\"]','/images/project/project6.jpg'),(7,'TaiwanMoving Website','Mimic','TaiwanMoving offers professional moving services based in Taiwan. The client hoped to present impressive designs and colors on this website, brightly. To make it easy to understand the information, and quickly process their services. The big challenge is that the steps and structures between drivers and customer service staff are hard to communicate with different methods.',2020,'/images/project/project007.jpg','/images/project/project007-1.jpg','/images/project/project007-2.jpg',NULL,'','Website','{\"type\": [\"React\", \"MongoDB\", \"Bootstrap\", \"UI/UX Design\"]}','2022-10-23 00:36:11','2022-10-23 00:36:14','[\"React\", \"MongoDB\", \"Bootstrap\", \"UI/UX Design\"]','/images/project/project7.jpg'),(8,'StarWalk App','Jade','This demo application created with our team member to offer a game between walking and famous singer stars. People walked further distances which could transfer the product of the favorite star. The screen will show the area of the treasure to get some points for gifts. That was an interesting project.',2019,'/images/project/project008.jpg','','',NULL,'','APP','{\"type\": [\"Android Studio\", \"UI/UX Design\"]}','2022-10-23 00:37:33','2022-10-23 00:37:31','[\"Android Studio\", \"UI/UX Design\"]','/images/project/project8.jpg'),(9,'ON Facial Masks Package','Go Global','ON is a brand from China social media company based in New Zealand. It offers natural materials into facial masks of the product to provide the skin care for women. This project kept the minimalist package design with the marble background. Also, another product of different product designs provides for teenage.',2018,'/images/project/project009.jpg','/images/project/project009-1.jpg','/images/project/project009-2.jpg',NULL,'','Graphic','{\"type\": [\"Visaul Design\", \"Product Design\", \"Branding\"]}','2022-10-23 00:41:26','2022-10-23 00:41:24','[\"Visaul Design\", \"Product Design\", \"Branding\"]','/images/project/project9.jpg'),(10,'ON Skin Care Website','Go Global','ON is a brand pf a China social media company based in New Zealand. It offers natural materials into facial masks of the product to provide the skin care for women. This project kept minimal style package design with marble background. This website leads customers to shopping and know their products.',2018,'/images/project/project010.jpg','/images/project/project010-1.jpg','/images/project/project010-2.jpg','/images/project010-3.png','','Website','{\"type\": [\"React\", \"MongoDB\", \"Bootstrap\", \"UI/UX Design\"]}','2022-10-23 00:42:44','2022-10-23 00:42:46','[\"React\", \"MongoDB\", \"Bootstrap\", \"UI/UX Design\"]','/images/project/project10.jpg'),(11,'Go Global Website','Go Global','Go Global is a China social media company located in New Zealand to assist local companies to extend their business into China. They have a famous brand on WeChat called \'Go Kiwi\' to explore further about New Zealand with advertisements. This project focused on representing their service clearly and obviously.',2018,'/images/project/project011.jpg','','',NULL,'','Website','{\"type\": [\"UI/UX Design\", \"Bootstrap\", \"Branding\"]}','2022-10-23 00:43:59','2022-10-23 00:43:55','[\"UI/UX Design\", \"Bootstrap\", \"Branding\"]','/images/project/project11.jpg'),(12,'Creator Music & Art Website','Jade','Creator Music & Art is a group focusing on high-quality art and culture since 1994 from China. It offers the service around the world including Asia, Canada, Japan, China with music, concconcertsent.s project indicated the minimalist and luxury design to impressed customers.',2017,'/images/project/project012.jpg','','',NULL,'','Website','{\"type\": [\"UI/UX Design\", \"Bootstrap\", \"Branding\"]}','2022-10-23 00:45:12','2022-10-23 00:45:10','[\"UI/UX Design\", \"Bootstrap\", \"Branding\"]','/images/project/project12.jpg'),(13,'Zuba Car Website','Mimic','This project is Zuba Car rental service website based in Asia. This brand offers a platform to share their car with people for environmental protection.\nThe main goal was to create modern and stylish web designs that have friendly navigation, high-quality content, easy structure information to process. The structure included front-end pages for renters and admin pages for sharers.',2019,'/images/project/project013.jpg','/images/project/project013-1.jpg','/images/project/project013-2.jpg',NULL,'','Website','{\"type\": [\"React\", \"MongoDB\", \"Bootstrap\", \"UI/UX Design\"]}','2022-10-23 00:46:52','2022-10-23 00:46:50','[\"React\", \"MongoDB\", \"Bootstrap\", \"UI/UX Design\"]','/images/project/project13.jpg'),(14,'Jade Innovation Website','Jade','Jade is an innoviate agency with development and software expertise. We shape brands, design and build websites. This project presented featuring a clean, modern, minimal design, engaging user interaction.',2017,'/images/project/project014.jpg','/images/project/project014-1.jpg','/images/project/project014-2.jpg',NULL,'','Website','{\"type\": [\"UI/UX Design\", \"Branding\"]}','2022-10-23 00:48:17','2022-10-23 00:48:20','[\"UI/UX Design\", \"Branding\"]','/images/project/project14.jpg'),(15,'WeSport Booking Website','WeSport','WeSport is a local event booking website for local people. The businesses included marathon, triathlon, and bicycle events. The site required a clear structure and easy to understand for users to book because their customers have different age users. The booking service is also extended mobile application.',2017,'/images/project/project015.jpg','','',NULL,'','Website','{\"type\": [\"UI/UX Design\", \"Branding\"]}','2022-10-23 00:49:19','2022-10-23 00:49:16','[\"UI/UX Design\", \"Branding\"]','/images/project/project15.jpg'),(16,'Go Global Branding','Go Global','Go Global is a China social media company located in New Zealand to assist local companies to extend their business into China. They have a famous brand on WeChat called \'Go Kiwi\' to explore further about New Zealand with advertisements. This project is to design their brand identity and the print graphic or signs including the business card.\n',2018,'/images/project/project016.jpg','','',NULL,'','Graphic','{\"type\": [\"Visual Design\", \"Branding\", \"UI/UX Design\"]}','2022-10-23 00:50:46','2022-10-23 00:50:44','[\"Visual Design\", \"Branding\", \"UI/UX Design\"]','/images/project/project16.jpg'),(17,'Preschool Contact Book App','Jade','This application provides preschool schools with information about their children. The application has two apps including one version for teachers to share information with parents; another version for parents to report and feedback on their comments, and understand their children\'s current status.',2017,'/images/project/project017.jpg','','',NULL,'','APP','{\"type\": [\"UI/UX Design\", \"Visual Design\"]}','2022-10-23 00:51:41','2022-10-23 00:51:39','[\"UI/UX Design\", \"Visual Design\"]','/images/project/project17.jpg'),(18,'Phone Screen Protector Package','Jade','This is a protective eyeglass screen glass protector. To design a few different products for clients. The main requirement is to present its features in this product to impress customers compact to competitors, so we also did the marketing search for it. I love this project to design a minimalist style for this product.',2017,'/images/project/project018.jpg','/images/project/project018-1.jpg','',NULL,'','Graphic','{\"type\": [\"Branding\", \"Product Design\", \"Visual Design\"]}','2022-10-23 00:53:47','2022-10-23 00:53:49','[\"Branding\", \"Product Design\", \"Visual Design\"]','/images/project/project18.jpg'),(19,'JIAHO Business Branding','JIA HO','JIA HO is a management consulting company of the Japan real estate. The client required some professional and minimalist or modern design for their brand identity and the business card.',2016,'/images/project/project019.jpg','','',NULL,'','Graphic','{\"type\": [\"Branding\", \"Visual Design\", \"UI/UX Design\"]}','2022-10-23 00:55:03','2022-10-23 00:55:05','[\"Branding\", \"Visual Design\", \"UI/UX Design\"]','/images/project/project19.jpg'),(20,'Running Event Mascot','WeSport','This illustration offers the sport event to support and encourage those clients. The design based on the features of the Taiwanese Bear to lead its figures.',2016,'/images/project/project020.jpg','/images/project/project020-1.jpg','/images/project/project020-2.jpg',NULL,'','Graphic','{\"type\": [\"Illustration\", \"Visual Design\"]}','2022-10-23 00:59:44','2022-10-23 00:59:46','[\"Illustration\", \"Visual Design\"]','/images/project/project20.jpg'),(21,'K Space VIP Event','K Space','K Space is a loft lifestyle luxury brand in Asia. This VIP event to provide entertainments with foods and desserts for the VIP members. I illustrated the pop art style for every items.',2016,'/images/project/project021.jpg','/images/project/project021-1.jpg','/images/project/project021-2.jpg',NULL,'','Graphic','{\"type\": [\"Illustration\", \"Visual Design\"]}','2022-10-23 01:01:28','2022-10-23 01:01:30','[\"Illustration\", \"Visual Design\"]','/images/project/project21.jpg'),(22,'Cutty Sark Tea Postcard','Cutty Sark','Cutty Sark is a British style of the afternoon tea room restaurant. There are numerous tea events to explore the UK history with foods. This postcards to offer customers how to create different drinks throughout their black tea. This project required a few illustrations into postcards. I offer the photography service to indicate the best pciture.',2016,'/images/project/project022.jpg','/images/project/project022-1.jpg','/images/project/project022-2.jpg',NULL,'','Graphic','{\"type\": [\"Illustration\", \"Branding\", \"Visual Design\"]}','2022-10-23 01:02:45','2022-10-23 01:02:47','[\"Illustration\", \"Branding\", \"Visual Design\"]','/images/project/project22.jpg'),(23,'Bake Chichi CIS Design','ChiChi','Bake ChiChi, a small online bakery shop that owners dreamt of, became a reality. The print graphic included the logo design and product stickers. The sharpness of this logo represents this brand selling tarts, cakes or cookies. The brand identity indicated the pink color to show the sweets fruits such as barries, and bring the most delicious to their customers.',2015,'/images/project/project023.jpg','/images/project/project023-1.jpg','/images/project/project023-2.jpg',NULL,'','Graphic','{\"type\": [\"Branding\", \"Visual Design\", \"UI/UX Design\"]}','2022-10-23 01:04:32','2022-10-23 01:04:35','[\"Branding\", \"Visual Design\", \"UI/UX Design\"]','/images/project/project23.jpg'),(24,'Spring Product Mangazine','Cutty Sark','The new product of the magazine for Spring and Summer. ',2013,'/images/project/project24.jpg','/images/project/project24-1.jpg','/images/project/project24-2.jpg','/images/project/project24-3.jpg',NULL,'Graphic','{\"type\": [\"Photography\", \"Magazine\", \"Visual Design\"]}','2022-11-19 09:10:11','0000-00-00 00:00:00','[\"Photography\", \"Magazine\", \"Visual Design\"]','/images/project/project24.jpg'),(25,'Ks Time Event Poster','K Space','Designing a few posters to VIP Member of the brand \'K Space\' including the event of Father Day, Wedding & Party Week. ',2014,'/images/project/project25.jpg','/images/project/project25-1.jpg','/images/project/project25-2.jpg',NULL,NULL,'Graphic','{\"type\": [\"Graphic Design\", \"Visual Design\"]}','2022-11-19 09:10:11','0000-00-00 00:00:00','[\"Graphic Design\", \"Visual Design\"]','/images/project/project25.jpg');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
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

-- Dump completed on 2022-11-20 17:19:45
