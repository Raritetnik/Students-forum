-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: forum_tp2
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `ville_id` bigint unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `etudiants_email_unique` (`email`),
  KEY `etudiants_ville_id_foreign` (`ville_id`),
  CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiants`
--

LOCK TABLES `etudiants` WRITE;
/*!40000 ALTER TABLE `etudiants` DISABLE KEYS */;
INSERT INTO `etudiants` VALUES (1,'Ivan Popov','2299 rue de la Belle','51422249999','2023-03-31',1,'cartwright.moises@example.org',NULL,'password',NULL,'2023-04-04 03:11:03','2023-04-04 04:33:27'),(2,'Dr. Arjun Lesch MD','622 Kayla Plain','959.215.6726','1983-02-06',4,'blanda.federico@example.com','2023-04-04 16:31:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pBZ7mpeUdto07s1p2dXi3pI0d1nnOZ3tUFQhQQoYkAMW6EQTmxAsHuOGqngz','2023-04-04 16:31:33','2023-04-04 16:31:33'),(3,'Seth Weissnat','6751 Tillman Bypass','1-785-397-6347','2001-09-18',5,'dtowne@example.net','2023-04-04 16:31:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nmc74t4cJ2','2023-04-04 16:31:33','2023-04-04 16:31:33'),(4,'Brody Cormier','484 Susan Light Suite 598','(406) 872-4615','1988-06-30',6,'stephania18@example.com','2023-04-04 16:31:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6MX75oBRq76mYmHJCXgTuMdSQifNqHimPktqXigDFo2HgVqkhZfMdGm7OVcD','2023-04-04 16:31:33','2023-04-04 16:31:33'),(5,'Mr. Triston Connelly','2631 Lawson Ranch','(651) 226-8668','1989-01-05',7,'zbergnaum@example.com','2023-04-04 16:31:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','gwZJIqlVBs','2023-04-04 16:31:33','2023-04-04 16:31:33'),(6,'Josie Bartoletti','1115 Kiera Ridge Apt. 851','+1-940-713-4235','2006-10-20',8,'oklocko@example.org','2023-04-04 16:31:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','b9z3NXjugq','2023-04-04 16:31:33','2023-04-04 16:31:33'),(7,'Dr. Anjali Dare','85102 Vandervort Route Suite 345','+1 (785) 681-1160','2007-06-24',13,'rreinger@example.net','2023-04-04 16:32:15','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','443faIbA4d','2023-04-04 16:32:15','2023-04-04 16:32:15'),(8,'Mr. Alphonso Koepp Jr.','3541 VonRueden Manors','513.476.3603','2011-07-14',14,'ybraun@example.org','2023-04-04 16:32:15','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DrbbvF4FSI','2023-04-04 16:32:15','2023-04-04 16:32:15'),(9,'Prof. Cleta Beer V','2882 Kiehn Court Apt. 618','+1-283-414-8064','2018-02-21',15,'kelley.breitenberg@example.net','2023-04-04 16:32:16','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','e3shcOHf5s','2023-04-04 16:32:16','2023-04-04 16:32:16'),(10,'Arjun Gleichner','590 Simone Views Suite 086','469-427-5559','2016-12-17',16,'akonopelski@example.org','2023-04-04 16:32:16','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','E9CiuU1nCj','2023-04-04 16:32:16','2023-04-04 16:32:16'),(11,'Admin User','2299 rue de la Belle','4385552525','2023-04-01',1,'admin@gmail.com',NULL,'$2y$10$ZGZkhoW1/SHjgtYBQ11ANe/KKlTyzVjlr7QqvgJnk//TmnFi/6QWS',NULL,'2023-04-04 18:30:48','2023-04-04 18:30:48'),(12,'Alex Bober','222 rue de Belle','51444422322','1992-01-01',1,'test.test@gmail.com',NULL,'$2y$10$xdFvp4Jqyv1rzNVEt41TWu.rR/aNqSCPL0.PALJFO8xAs7ADnhY8K',NULL,'2023-04-04 19:08:39','2023-04-04 19:08:39'),(13,'Jeffry Purdy','150 Garth Stravenue','1-520-375-0548','2019-06-01',17,'adaline.ondricka@example.org','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','SFtUbbcM6L','2023-04-04 19:28:42','2023-04-04 19:28:42'),(14,'Okey Stoltenberg','3698 Anderson Radial','+15705847231','1975-10-21',18,'ovon@example.com','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BESm6A1XNj','2023-04-04 19:28:42','2023-04-04 19:28:42'),(15,'Miss Dariana Ferry','98344 Toy Hollow Suite 345','+1.315.620.6002','2006-03-17',19,'rdaugherty@example.org','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BxJPknZzuM','2023-04-04 19:28:42','2023-04-04 19:28:42'),(16,'Khalil Zemlak','955 Yesenia Road Apt. 058','(231) 590-0979','2018-11-06',20,'arthur.berge@example.org','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','408Uia6wS8','2023-04-04 19:28:42','2023-04-04 19:28:42'),(17,'Devyn Torp','1310 Kariane Village Suite 311','1-765-551-1185','1974-02-13',21,'williamson.kyla@example.org','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ad8heg7UXD','2023-04-04 19:28:42','2023-04-04 19:28:42'),(18,'Dwight Runolfsdottir','8678 Wehner Shoals Apt. 527','+1 (223) 623-2071','1980-06-18',22,'andre.strosin@example.net','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rgJU1gNBI0','2023-04-04 19:28:42','2023-04-04 19:28:42'),(19,'Prof. Ambrose Deckow','52781 DuBuque Orchard','+1-785-461-8901','2017-08-09',23,'alva.pagac@example.net','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YF53uze2k4','2023-04-04 19:28:42','2023-04-04 19:28:42'),(20,'Dr. Ashlee Anderson MD','8815 D\'Amore Inlet Apt. 394','279-756-9157','1982-03-30',24,'kaleigh03@example.com','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','hzLngfkIfO','2023-04-04 19:28:42','2023-04-04 19:28:42'),(21,'Julio Kozey','67110 Ortiz Roads','843-251-3186','2007-03-06',25,'carlee51@example.org','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Sb5qUnHahU','2023-04-04 19:28:42','2023-04-04 19:28:42'),(22,'Charles Lebsack','6576 Heloise Mall','303.689.7397','2004-06-01',26,'harmon.kling@example.com','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','71nPeCM0YR','2023-04-04 19:28:42','2023-04-04 19:28:42'),(23,'Danielle Hirthe','6637 Durgan Stravenue Apt. 935','629-860-2650','1983-11-15',27,'tad16@example.net','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CPPVNZMOiu','2023-04-04 19:28:42','2023-04-04 19:28:42'),(24,'Imani Leffler','34006 Michale Prairie Suite 835','1-662-991-9923','2000-05-14',28,'viviane06@example.com','2023-04-04 19:28:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yUeymyOBod','2023-04-04 19:28:42','2023-04-04 19:28:42'),(25,'Rae Kilback','298 Kessler Knoll Apt. 110','+1-580-351-9372','1984-11-02',29,'alena21@example.net','2023-04-04 19:28:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kScMZwPwCh','2023-04-04 19:28:43','2023-04-04 19:28:43'),(26,'Dr. Genesis Lebsack','79809 Heaney Spring Apt. 327','+1 (404) 383-7039','2007-07-01',30,'qframi@example.org','2023-04-04 19:28:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','EoxxDhgXV4','2023-04-04 19:28:43','2023-04-04 19:28:43'),(27,'Iliana Cole','657 Hellen Curve','(586) 230-7282','2000-06-04',31,'oskiles@example.org','2023-04-04 19:28:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WYDEFoUZAv','2023-04-04 19:28:43','2023-04-04 19:28:43'),(28,'Mrs. Nakia Bartoletti','8207 Ashley Mountain Suite 957','+1-920-369-4412','1978-07-02',32,'mclaughlin.evangeline@example.net','2023-04-04 19:28:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pvgULw1UW5','2023-04-04 19:28:43','2023-04-04 19:28:43'),(29,'Madisen Cole II','6561 Willard Valley','386.562.4655','2009-11-15',33,'botsford.carolanne@example.com','2023-04-04 19:28:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','oILjVVnd4T','2023-04-04 19:28:43','2023-04-04 19:28:43'),(30,'Olga Watsica','448 Trantow Shoals Apt. 037','1-724-850-3620','2013-11-16',34,'johnathon.ortiz@example.com','2023-04-04 19:28:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KH5V7PUvWO','2023-04-04 19:28:43','2023-04-04 19:28:43'),(31,'Jadyn Stoltenberg','916 Greenholt Causeway Suite 381','316-357-8345','1998-04-08',35,'owen.cummerata@example.org','2023-04-04 19:28:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','suOZv1KHlK','2023-04-04 19:28:43','2023-04-04 19:28:43'),(32,'Alek Ratke','3321 Lenna Creek Suite 756','+1 (341) 899-3611','2013-04-28',36,'howell.jakayla@example.net','2023-04-04 19:28:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tXfaglJX4f','2023-04-04 19:28:43','2023-04-04 19:28:43');
/*!40000 ALTER TABLE `etudiants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `etudiant_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_etudiant_id_foreign` (`etudiant_id`),
  CONSTRAINT `files_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (3,'2023-04-04 17:47:03','2023-04-04 17:59:25','files/1680616023-KuzminM_CV_020923.docx','Laptop ASUS  14','The field under validation must be equal to the given date. The dates will be passed into the PHP strtotime function in order to be converted into a valid DateTime instance.',2);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_files`
--

DROP TABLE IF EXISTS `lang_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lang_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lang_files_file_id_foreign` (`file_id`),
  CONSTRAINT `lang_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_files`
--

LOCK TABLES `lang_files` WRITE;
/*!40000 ALTER TABLE `lang_files` DISABLE KEYS */;
INSERT INTO `lang_files` VALUES (4,'2023-04-04 17:47:03','2023-04-04 17:59:25','en','Laptop ASUS  14','The field under validation must be equal to the given date. The dates will be passed into the PHP strtotime function in order to be converted into a valid DateTime instance.',3),(5,'2023-04-04 17:47:03','2023-04-04 17:59:25','fr','Ordinateur Portable ASUS ZENBOOK','je vends mon ordinateur portable Asus Zenbook acheté en ~ janvier 2023.Il est en super super bon état',3);
/*!40000 ALTER TABLE `lang_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_posts`
--

DROP TABLE IF EXISTS `lang_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lang_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `post_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lang_posts_post_id_foreign` (`post_id`),
  CONSTRAINT `lang_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_posts`
--

LOCK TABLES `lang_posts` WRITE;
/*!40000 ALTER TABLE `lang_posts` DISABLE KEYS */;
INSERT INTO `lang_posts` VALUES (1,'2023-04-04 03:29:13','2023-04-04 03:29:13','en','New title','Hello World',1),(2,'2023-04-04 03:29:13','2023-04-04 03:29:13','fr','Nouvelle titre','Bounjour à tout le monde sur ce site',1),(9,'2023-04-04 19:04:15','2023-04-04 19:04:44','en','ENGLISH TTTT','Message de partie anglais 22222',9),(10,'2023-04-04 19:04:15','2023-04-04 19:04:44','fr','Titre francais GGGGG','Message de block francais',9);
/*!40000 ALTER TABLE `lang_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(41,'2023_03_01_154127_create_villes_table',2),(42,'2023_03_02_000000_create_etudiants_table',2),(43,'2023_03_27_133559_create_forums_table',2),(44,'2023_03_31_140110_create_files_table',2),(45,'2023_04_01_135418_create_lang_posts_table',2),(46,'2023_04_01_135424_create_lang_files_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `etudiant_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_etudiant_id_foreign` (`etudiant_id`),
  CONSTRAINT `posts_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'2023-04-04 03:29:13','2023-04-04 03:29:13','New title','Hello World',1),(2,'2023-04-04 16:32:16','2023-04-04 16:32:16','Tenetur qui nesciunt est.','Dolore corporis laboriosam laudantium tempore laborum. Dolor nobis quasi illo assumenda blanditiis. Occaecati minima veritatis tempora ut aut. Sequi itaque voluptatem quam provident vel quia. Voluptatibus et praesentium id inventore. Quam dolore consequatur quibusdam quod quidem dolor aut. Sed officiis aut facere. Nulla similique optio voluptas quia quo nesciunt et. Architecto est voluptatem autem nihil id itaque dolor. Magni iure adipisci totam. Ea doloribus voluptates ut sint. Id consequuntur in consequatur vel et ut consequatur. Et enim alias perspiciatis ut. Recusandae sunt architecto unde veritatis molestiae iure. Sed quia dolorem voluptatem et facere voluptas. Placeat provident cumque rerum et rerum et. Rem eum cumque ut suscipit. Et delectus quia nulla ipsam autem dignissimos. Quos explicabo quis et aliquam quasi accusamus. Aliquam accusantium rerum cupiditate. Alias id qui quis incidunt. Minima doloremque modi aut dolor iure omnis. Accusamus totam rerum beatae nihil quae possimus. Voluptatem quo ullam nam explicabo. Et nemo in porro molestiae velit vel. Adipisci quis qui asperiores quas at. Nemo debitis et rem ea officia eius. Quia quaerat recusandae rerum voluptas fuga. Optio enim saepe fugit vero. Nesciunt qui numquam vitae aliquam enim autem qui. Nobis voluptas reprehenderit in autem iste qui qui earum. Pariatur at molestias cum ipsum. Perferendis minus fuga quis consequatur accusamus. Magni autem maiores inventore voluptatem eos. Voluptatem non accusamus iste quia. Aliquid fugiat consequatur enim. Quos ut modi sed provident. Omnis aut qui ut voluptas voluptate. Voluptatem amet labore ea vel reprehenderit hic deleniti rem. Est qui cupiditate laborum rerum. Molestiae commodi ullam rerum laboriosam qui in. Earum architecto voluptates repellat possimus itaque velit nisi.',7),(3,'2023-04-04 16:32:16','2023-04-04 16:32:16','Id quasi inventore ea modi nesciunt qui officiis ut.','Temporibus qui voluptatem et dicta illo eos. Earum aut et eos accusantium alias et ullam. Repellendus architecto quod sit repellendus alias molestiae. Error et quia voluptatem. Assumenda ut delectus ut sunt culpa ipsum numquam et. Ut sit iste quo maxime fugiat alias reiciendis nobis. Consequatur possimus est distinctio non et voluptatem excepturi. Tenetur qui quisquam quo quidem sequi sapiente dolore cum. Explicabo soluta eos nesciunt rerum velit. Sequi nulla sapiente cumque ea optio magnam. Autem eos quia incidunt. Dignissimos ipsam expedita quibusdam quae laudantium. Expedita incidunt soluta odio exercitationem. Aut eos eaque mollitia nihil. Cupiditate unde possimus maxime tenetur fuga. Et facilis modi id beatae est omnis. At odit id perspiciatis dolores hic consequuntur perspiciatis. Voluptatem dicta consequatur quasi omnis adipisci iure alias. Dolores officiis voluptatibus velit numquam. Dolores tempore consequatur voluptatem et. Quisquam quas sequi et fuga. Enim sapiente ut nisi quisquam reiciendis. Sint dolorem aliquam reiciendis aliquid. Sed est amet in quia quia. Et saepe praesentium et quas accusantium enim amet aut. Qui quasi ullam tempore magni. Quia dolorem architecto consectetur occaecati sapiente. Repellendus fuga quisquam alias in beatae.',8),(4,'2023-04-04 16:32:16','2023-04-04 16:32:16','Hic illum expedita quasi.','Odit magni hic omnis. Et quo totam facilis consequatur occaecati est. Eius at quos reprehenderit distinctio reprehenderit expedita ea. Cupiditate dolorem quia modi dolores. Delectus quis minima pariatur dolore voluptatem tempora. Maxime quae ut molestiae saepe. Ea voluptas ratione molestias neque. Eveniet error dolore ut totam aut quia. Quia vel ut veritatis dolorem velit. Adipisci omnis laborum enim. Mollitia aut eligendi eius consequatur. Sed ducimus tempore aliquam illo dolores accusantium. Saepe fuga autem iure qui quibusdam perferendis. Est ut minus voluptatem reiciendis assumenda ducimus. Consequatur reprehenderit corrupti consequatur. Quo et expedita aperiam possimus eaque et laudantium. Dolor fuga nihil omnis excepturi nemo et. Consequatur quasi nulla culpa tempora quasi alias consequatur. Voluptatum et autem sed in animi velit. Laborum tempora iusto quis aliquam sint accusamus. Vitae repudiandae quod consectetur atque. Nostrum fuga rem exercitationem voluptate et. Quo dolore asperiores laborum dolor esse mollitia est et. Labore sint doloremque unde ut maxime quisquam. Consequatur consequatur molestias doloribus sit. Rerum eum iure aut nobis nemo quibusdam. Sequi sed modi quod et error beatae aperiam dolorem.',9),(5,'2023-04-04 16:32:16','2023-04-04 16:32:16','Et fugiat atque sit iste fuga quia.','Ut quo et eaque illum. Et ipsa et enim in mollitia consequuntur odit enim. Facilis minima maiores et earum occaecati. Delectus ducimus ut repellat eligendi excepturi. Nesciunt nesciunt odio excepturi. Nihil quo velit error est ratione. Minima beatae sit itaque accusamus et ad asperiores. Inventore quo optio voluptatem nam provident numquam velit. Et soluta optio quam molestias ullam. Pariatur quia rem tenetur nemo veritatis est molestiae vero. Temporibus asperiores reprehenderit sunt neque fugit vel accusantium. Molestiae dolorem sed mollitia qui sint beatae quis eius. Quos consequuntur nam eum voluptas. Sint saepe accusantium iure atque deleniti natus ipsum. Earum nam explicabo inventore commodi a optio laboriosam. Vel ad eos dolorum molestiae quisquam quos aliquid. Aut voluptas fugiat in mollitia dolore nulla. Repellat quisquam aut ullam quia. Ipsam magnam dolores et ut fugit dicta. Quaerat dignissimos minima autem asperiores voluptate minima placeat. Pariatur eos autem est. Sunt doloribus dolorum et culpa laborum repudiandae cupiditate alias. Aliquam labore non ut natus quia eos cumque. Sed unde assumenda iure minima aperiam dicta. Quis beatae numquam voluptas nihil magnam mollitia. Atque quaerat est recusandae voluptatem qui quis accusamus sit. Doloribus necessitatibus quia nulla eius quasi quis. Aut ut architecto modi dicta incidunt expedita totam. Nesciunt ullam repellendus nihil mollitia. Vero quidem mollitia vitae ex quia quia. Magnam delectus voluptatem ut.',10),(9,'2023-04-04 19:04:15','2023-04-04 19:04:15','ENGLISH','Message de partie anglais',11),(10,'2023-04-04 19:28:43','2023-04-04 19:28:43','Ab sed fugit voluptatem provident iusto quia consectetur.','Expedita aliquam incidunt aut fuga assumenda. Occaecati beatae ipsum est velit excepturi. Sint vel distinctio autem nihil eaque ducimus ullam aut. Illo iste totam quae sed enim. Quas facilis voluptatem aut aperiam optio et distinctio nostrum. Consequatur quas inventore eos culpa vitae. Soluta eos aut aut ipsum animi libero. Quod modi consequuntur aliquid consequatur sed. Reprehenderit fuga dolores quisquam qui culpa aut ut. Rerum ratione sit quaerat eveniet sunt sint. Molestias ipsa voluptatem pariatur. Aut corrupti repudiandae suscipit totam accusamus reiciendis. Dolorem ducimus molestiae ut ullam. Autem ut quis est ut eum. Et molestiae adipisci odio et dolorem quis voluptas excepturi. Quibusdam velit sed et delectus consequuntur magni qui. Nostrum ducimus facilis esse quae adipisci aut numquam assumenda. Et delectus iure doloribus animi. Corrupti nihil facere delectus quia quas minus sequi sunt. Voluptatem quas fuga rerum ea corporis ipsum voluptatum. Ut nihil id officia perspiciatis. Fugit ipsa qui eaque. Pariatur molestiae molestiae neque omnis.',13),(11,'2023-04-04 19:28:43','2023-04-04 19:28:43','Sed qui qui ipsam praesentium voluptate cupiditate soluta.','Quia quaerat tenetur sit natus aut. Saepe et et quae facilis. Placeat odit debitis animi est et. Dicta quae officia debitis voluptas rem blanditiis. Atque ratione nesciunt voluptatibus alias et temporibus qui. Tenetur reiciendis recusandae rerum quis dolores. Ut est est qui expedita. Voluptas voluptatem tenetur esse sunt quia quam eum. Consequatur aliquid rerum aut nesciunt molestiae soluta. Aut ratione eveniet vero molestias dolore et. Aspernatur reprehenderit vero quo est saepe ipsam. Totam perferendis aut et quas. Dicta aut consectetur et. Illo ex debitis hic praesentium quidem nam. Voluptate voluptatem ipsum omnis inventore pariatur dolore. Natus aliquam est natus odio vitae vel a. Consequatur quidem unde beatae animi adipisci qui excepturi. Modi non laboriosam voluptatibus earum. Adipisci voluptatibus et exercitationem molestiae in. Maiores repudiandae qui nulla eaque. Voluptas quia quidem sapiente laborum officia et sit. Quidem recusandae similique quo repellendus ipsa.',14),(12,'2023-04-04 19:28:43','2023-04-04 19:28:43','Similique asperiores praesentium et ipsum.','Consequatur nulla magnam repudiandae. Autem aut qui sit non. Qui a soluta nemo ut consequatur. Voluptates vel eum culpa est perspiciatis voluptate explicabo. Et incidunt aspernatur molestias nam. Nesciunt dolorem unde accusamus ea modi ut commodi. Perspiciatis et dolores inventore asperiores deleniti adipisci. Vel distinctio vitae aut. Aliquam quo vel explicabo consequatur in. Nam optio dolor a explicabo ad nesciunt et odit. Eum nihil praesentium minima expedita. Sed voluptas quis recusandae nam omnis repellendus. Tempore quibusdam maiores eaque neque. Et est ut repudiandae corporis facilis quaerat. Odio consequatur quam voluptatibus voluptates et libero nisi. Ipsam odio veniam aut a ut rerum. Vero accusamus molestiae voluptatem voluptatem perferendis corporis. Repellat est beatae dolore. Nam cupiditate voluptatibus possimus eligendi tenetur reiciendis. Ut aspernatur sunt soluta nihil. Eveniet et in et ut aut et. Vel eos tempore nulla animi voluptatem et. Necessitatibus qui numquam sint commodi id. Eveniet earum porro voluptas ut architecto voluptatibus. Consequatur molestiae omnis sed aperiam reprehenderit dolores sit voluptatem. Eum tempore animi voluptatem animi sed magni. Molestiae maxime quia odio dolorem voluptatem sint amet. Aut aliquam sunt dolor aut dolor. Sint perspiciatis laudantium accusantium voluptas.',15),(13,'2023-04-04 19:28:43','2023-04-04 19:28:43','Aliquam at magni in magni vero.','Ea sequi aut corporis molestias quia quis molestiae. Sapiente odio omnis ut quam. Incidunt aut cum corporis aut quaerat itaque dolorem. Fugit praesentium exercitationem itaque omnis facilis. Laboriosam porro quidem ut eius esse animi atque. Quis et vero quis nam laboriosam est. Impedit illum amet quasi nobis. Est ducimus aut illo est qui. Culpa distinctio quis sint modi molestias non odit quae. Esse voluptatum quis cupiditate deleniti necessitatibus perspiciatis aperiam perspiciatis. Eos natus repudiandae distinctio quia. Ut eum eos quo enim et reiciendis nostrum. Voluptas pariatur asperiores eaque eos rerum. Soluta sed necessitatibus dolor recusandae dolor sequi nisi magni. Occaecati quaerat excepturi possimus adipisci nulla est dolores. Quia non sed ipsa expedita distinctio non accusantium. Et libero et minima et. Beatae doloribus doloribus dolores nisi fugit. Et aut tenetur officia doloribus at consequatur. Omnis eum assumenda ut.',16),(14,'2023-04-04 19:28:43','2023-04-04 19:28:43','Ab iusto aliquid blanditiis fugit id ullam molestias.','Officiis hic eum quam quibusdam ab minima. Debitis mollitia iste numquam sit. Cupiditate totam non est quo consequatur quis. Sed iusto similique est dolorem. Amet ratione placeat deserunt. Et sunt neque quo. Quae voluptas fuga minima quos maiores in culpa voluptatem. Reiciendis reiciendis dicta ut illo libero minima. Magni consectetur aspernatur quod est enim. Sit dolores sint molestias omnis repellendus suscipit. Ut perspiciatis illo tempore ipsa laboriosam qui nam qui. Est eum aut qui repellat dolore. Dolore eligendi quos sit suscipit sunt sunt ut. Earum autem officiis tenetur similique pariatur possimus. Debitis at corporis quisquam excepturi quasi molestiae. Dignissimos perspiciatis placeat dignissimos rem molestiae excepturi suscipit minus. Commodi esse nisi commodi. Quam vero corporis et quia odio molestias consequatur. Inventore qui minima ut. Facilis culpa voluptas odit autem. Consequatur nulla est enim voluptatum. Et sunt saepe dolorem voluptatum qui ducimus omnis. Nulla sint qui eum iure. Modi aut aut modi dolore illum aliquam est. Velit et velit est unde. Harum commodi placeat dolorem iure dolorum accusantium velit. Labore maiores delectus velit laudantium rerum modi non. Facilis laboriosam incidunt ut dolores ad accusamus tempora aut. Modi accusamus sit sed est quisquam consequatur. Ipsa sint officiis quidem. Aperiam unde deserunt provident qui. Nihil reiciendis eligendi iste voluptatum possimus est. Aspernatur dolorum iste consequatur. Sit hic temporibus ipsum ullam et similique et. Explicabo itaque consequatur et perspiciatis iste porro dolores et. Voluptas et molestiae enim culpa. Earum totam asperiores eos quae quasi velit qui. Eligendi sunt doloremque corrupti quia quia veniam et. Ullam tempore sint quia et. Quod ex odio unde placeat. Distinctio dolor sunt alias et sunt. Dolorem laudantium amet quia similique dolor repellat recusandae libero.',17),(15,'2023-04-04 19:28:43','2023-04-04 19:28:43','Dicta dolores qui et eum quis.','Omnis sit animi reprehenderit aut recusandae quasi veritatis ut. Sequi hic assumenda soluta quasi et. Fugit laborum velit ullam nisi nostrum. Consequatur perspiciatis maiores quos illo fugiat rerum qui. Pariatur in earum quis molestiae dolore deleniti pariatur. In quia accusantium voluptatibus aut unde. Quos praesentium veniam magnam. Perferendis et aliquid ab consequatur qui. Placeat velit officiis quis debitis. A quasi nulla labore atque consequatur ratione excepturi. Fugit ratione nisi eius totam sit consequuntur adipisci. Cumque qui alias maiores impedit tenetur voluptatem in. Consequatur consequatur eum ex ut reiciendis incidunt. Laudantium sint cupiditate voluptatem magni suscipit voluptatem sit reprehenderit. Qui sequi hic eum nihil. Dolores excepturi sit ratione cum quam. Explicabo eos ratione dolores quam a qui. Cumque eum omnis odio est. Quam nihil deleniti consequatur et. Sapiente optio eveniet iusto cupiditate ut voluptatem quis. Qui odio recusandae incidunt aut quasi velit. Dolor rerum minus omnis nihil eius. Tempora quia et assumenda amet quasi aut. Sit eum quibusdam ipsam qui ea laboriosam pariatur. Voluptates et inventore autem sapiente. Id labore laborum id velit optio tenetur. Qui dolor excepturi quis deleniti consequatur ut. Velit numquam occaecati veniam illo. Aperiam consectetur quo eos maxime. Ullam error consequatur distinctio numquam sed assumenda. Quibusdam ut a veritatis sint et ratione. Maiores tenetur recusandae aut eos. Aut quis sed quia iusto fugit excepturi omnis. Ut iure enim optio nisi.',18),(16,'2023-04-04 19:28:43','2023-04-04 19:28:43','Totam accusamus nihil velit autem asperiores adipisci.','Molestiae voluptatibus et voluptatibus sunt. Autem porro ut ut quo numquam sunt. Qui neque reiciendis culpa consequatur. Qui velit consequatur quas enim qui iusto. Vel qui tempora ad iusto. Aliquid assumenda cumque veniam iste est et. Nihil est cupiditate dolore qui a. Ea rerum error id maxime optio commodi non. Reiciendis quasi repudiandae impedit. Id aut nam qui qui quod. Animi nemo nemo minima veniam est exercitationem. Atque repellendus et necessitatibus sit saepe modi. Nemo facilis aliquid culpa perspiciatis. Quidem nostrum molestiae delectus. Aliquid commodi iure omnis libero expedita autem accusantium. Optio voluptatem aut unde sequi. Sunt sint minus praesentium. Consequatur aspernatur ipsum eos. Tempora voluptatibus dolorum modi laboriosam iste consequatur. Illum laudantium asperiores ut rerum. Repellat id reiciendis delectus ut. Est excepturi odit rerum doloribus architecto similique ad. Id consequatur velit natus non ratione enim. Maxime fugit facilis iste eius. Aliquam ad facere minus. Mollitia id earum qui ipsa sunt temporibus vel. Ut est ut aut aut corrupti aspernatur. Mollitia iusto ut dicta voluptatem voluptas.',19),(17,'2023-04-04 19:28:43','2023-04-04 19:28:43','Commodi sunt omnis explicabo earum saepe beatae.','Maiores voluptatum saepe sunt nobis debitis. Pariatur nulla earum occaecati. Quo consequatur optio ipsum iure omnis voluptatum pariatur. Vel dolores neque quo numquam dolorum. Id odit voluptatem eaque ipsum. Dicta qui similique nesciunt nulla. Dolore quaerat earum eligendi sed facere. Qui cupiditate itaque dolores eos reprehenderit ab non. Est a reiciendis eligendi molestiae cumque cum saepe. Dolorem debitis praesentium delectus rem. Illo veniam voluptas facere quia nostrum similique odio. Alias sit autem nobis corporis repudiandae. In modi beatae id quam. Inventore eius harum cupiditate rerum enim nobis distinctio. Ex quia natus totam magnam qui aut. Nostrum accusantium qui ab aut. Doloremque vel cupiditate velit accusamus quo aut. Non distinctio consequatur et dolorem velit. Quia a ducimus magni magnam facere soluta. Aspernatur fugit odit harum aspernatur omnis officiis. Natus et eligendi itaque ut. Vero dolore et nihil cum provident. Soluta odio et dolorum est numquam quo. Itaque eos facilis id earum quisquam totam voluptatum.',20),(18,'2023-04-04 19:28:43','2023-04-04 19:28:43','Sed enim est eligendi.','At atque odit et id dignissimos placeat. Numquam quis dolorem ab recusandae voluptates quis autem. Voluptatem porro repellendus odio et ut rerum rerum. Vero neque reprehenderit qui dignissimos autem ipsam. Accusamus deleniti labore voluptatem fugiat cupiditate voluptatum. Molestias totam non eum fugiat qui. Aut voluptatem nulla voluptate. Debitis eaque minima corporis eos sed suscipit est. Quidem id laboriosam aut dicta. Nihil et odit accusantium dolorem aliquid et aut in. Aut illum eius sit asperiores quasi quas. Quod placeat incidunt aut sequi. Consequatur ipsa dicta ut dolores quidem. Ut placeat doloribus tenetur laboriosam doloribus. Aut et possimus eum error consequatur est. Aut fuga eum aut voluptatibus. Cum illo maxime eos voluptatem sapiente consequuntur. Culpa a recusandae beatae consequatur ut. Expedita voluptates similique aliquid tempora quia sint atque sint. Ut quis velit quia eveniet fuga. Et voluptates qui fuga nam et et magnam. Corrupti omnis enim veniam libero maiores porro ut. Quae sit error sint aut est quidem. Quasi perferendis esse consequatur ullam explicabo tenetur. Ab id qui perspiciatis sed sint saepe. Velit autem accusamus rerum assumenda ut exercitationem debitis. Modi quisquam architecto nesciunt sed dicta quis molestias. Tenetur vel debitis eligendi assumenda quam. Nobis at unde tenetur dolores doloremque explicabo doloribus. A minima delectus voluptatem quis placeat. Commodi id beatae et aut nam quia dolorem recusandae. Possimus voluptatem eum distinctio itaque molestias. Adipisci repudiandae laboriosam ex nihil nobis. Deleniti sed et totam ut illo tenetur dignissimos. Ut at autem et cum totam.',21),(19,'2023-04-04 19:28:43','2023-04-04 19:28:43','Suscipit nihil facilis libero et et voluptas et.','Vitae quos at quidem cumque. Voluptas dolor iusto sit nihil saepe. Soluta eum incidunt soluta facilis delectus officiis. Dolor enim et corporis sint unde quae asperiores. Magnam voluptates sequi dolor ut unde atque in. Aut velit et eos adipisci et. Quam possimus id est quidem cum aut porro corporis. Maxime rerum sit voluptate voluptas iusto. Dolorum laborum animi voluptatem rem dolorem quis. Autem amet doloremque nesciunt ullam praesentium eligendi. Fugit in cupiditate quae ipsam vel. Illo repudiandae assumenda esse fugit nihil. Cum qui earum porro quaerat sed tempora. Est animi nesciunt hic libero iure dolor tempore nesciunt. Unde dolore ad aut consequatur quis qui. Consequuntur neque animi rem voluptatum et. Sequi rerum consectetur sed ratione at aperiam tempore voluptatibus. Eos odit dolorem eos. Voluptatem debitis tempora consequuntur aliquid. Laboriosam odit enim nam in. Iure vel sit facilis a. Laudantium rem voluptatibus vel modi et sunt. Ab fugit animi ut animi est ipsam. Dolores doloribus error officia et nulla quia magni. Quae aut fuga corporis et sunt. Et nemo id facere recusandae. Animi aut quibusdam illo et. Labore odio quia excepturi voluptas veniam soluta. Laboriosam est suscipit culpa praesentium ut.',22),(20,'2023-04-04 19:28:43','2023-04-04 19:28:43','Nobis autem labore eveniet molestias.','In dignissimos aut ad omnis. Aperiam odio similique molestias beatae adipisci qui. Nisi qui qui et odit. Sunt suscipit dolore voluptate modi ut. Voluptates aut magni nulla nihil. Fugit corporis quibusdam eum dolore. Provident aperiam vero sunt possimus non pariatur. Quis nemo deleniti laborum inventore. Dolore quo itaque totam amet alias voluptas praesentium et. Qui tenetur velit eaque doloremque qui ut eius quos. Vel voluptas hic sit culpa molestiae qui facere. Veritatis beatae maiores est qui qui inventore. Optio et nostrum labore praesentium ab ut. Et tempora distinctio accusantium harum neque. Eius fugit quod consequuntur nihil. Rerum ea vitae voluptas provident dolorem. Sunt quia quo et illo dolore. Quidem explicabo mollitia officiis accusantium et. Dolorum porro occaecati quae autem sunt. Perspiciatis asperiores architecto consequatur voluptatem. Rerum quo laudantium tempore deserunt voluptate et consectetur.',23),(21,'2023-04-04 19:28:43','2023-04-04 19:28:43','Vitae similique ratione officia nam perspiciatis.','A ut cumque odit minima ducimus. Expedita aut blanditiis non sed ut. Ex aut et repellendus dolore veritatis perferendis. Ut ut dignissimos omnis exercitationem. Illum voluptatum sed aspernatur. Harum suscipit et cumque non exercitationem quis magnam. Omnis error fugiat enim et. Maxime numquam libero est voluptas. Itaque sit ut veritatis doloremque et. Reprehenderit aut libero sed dignissimos. Ut voluptatibus repellat illum perferendis velit qui. A ipsum neque incidunt maiores itaque dolorem consectetur sunt. Qui qui consequatur facere quae. Distinctio et quos non labore aut. Explicabo maxime quos accusamus vel reprehenderit. Quam quae necessitatibus enim earum aut. Nobis consequatur cupiditate eius saepe similique. Tempore dolor iste aliquid nostrum et alias velit. Facilis autem dolor in commodi quia deleniti quisquam veritatis. Amet maxime aut dicta non ipsam ut. Laudantium sit perspiciatis deserunt eveniet et vero molestiae. Eveniet tempora sit accusantium qui assumenda necessitatibus. Qui delectus necessitatibus quod voluptas. Aut autem sed suscipit. Sunt praesentium quia ut quia consequuntur dolorum. Maxime eos aliquam in saepe cum qui quos. Cupiditate officia sint consectetur accusantium porro aut earum. Aut porro doloribus deserunt. Eum tempora sint fugiat perspiciatis dolor. Similique repellendus placeat aut expedita. Delectus beatae sit dignissimos corrupti est. Et at a incidunt debitis aspernatur reiciendis. Repudiandae nihil sapiente repellat tempore autem a reprehenderit. Consequatur explicabo officiis a veniam eos maxime. Minus nesciunt veritatis eum omnis. Ad occaecati ipsum itaque a et dolor id. Maiores mollitia quia nostrum similique. Architecto ipsum nulla consequatur quae. Est ducimus qui ad nihil aspernatur fugit. Tempora et in expedita qui molestiae.',24),(22,'2023-04-04 19:28:43','2023-04-04 19:28:43','Repellendus inventore ea consequatur.','Tenetur quibusdam ut delectus dolorum in saepe excepturi. Quia illo eos expedita et animi dolorem dolores. Pariatur occaecati perferendis quibusdam dolores voluptatem vero deleniti. Voluptatibus corporis beatae beatae aut. Reprehenderit molestiae ipsum id reprehenderit sint. Illo eaque qui laudantium accusantium nam perspiciatis nesciunt. Quidem iure neque aut possimus dolores et. Omnis est molestiae quia excepturi dignissimos sapiente. Amet explicabo eos dolor ullam nostrum omnis et atque. Corrupti reprehenderit fuga ipsa error eum magni. Sit modi inventore temporibus nisi et quasi. Numquam voluptas velit eos dicta. Alias magni eum excepturi et inventore et aspernatur. Dignissimos ut ipsum est sunt. Odio sed enim error minus. Voluptatibus rerum necessitatibus aliquid placeat consequatur sint eaque. Est magnam et facere illum fugit quia. Quod aut reprehenderit enim accusantium reiciendis numquam. Qui aut eos quae aliquam ea voluptas. Similique et accusantium quia deserunt autem harum et. Minus culpa iure dolor. Blanditiis est error qui quis quia fuga. Autem eius deleniti aperiam repudiandae aut deleniti vitae qui. Cupiditate beatae ut porro. Sint et in nostrum praesentium quo. Fugiat illum dolorem inventore numquam. Neque ab possimus quidem sint beatae aut. Neque at earum et voluptatem quo voluptatum quibusdam. Quia iusto molestiae explicabo quo ab quo. Ipsum quia impedit sed voluptatem itaque officiis. Iste repellat consequatur itaque omnis molestiae officiis. Corrupti qui incidunt velit debitis reiciendis veritatis placeat sunt. Laudantium dolores deserunt facilis et. Cum reiciendis qui alias saepe quasi. Explicabo quidem reiciendis nemo excepturi. Tempora est consequuntur laborum asperiores non. Excepturi recusandae ab temporibus ratione aperiam quia expedita enim. Neque debitis et atque. Illum sit et deserunt autem. Eos iusto consequuntur quaerat nam.',25),(23,'2023-04-04 19:28:43','2023-04-04 19:28:43','Dolorem dolorum esse assumenda maxime eos voluptates.','Veniam error aspernatur natus vitae incidunt eum. Qui ipsum recusandae et non cupiditate labore maiores. Quis perferendis qui et doloremque sapiente ab. Pariatur ea impedit maiores recusandae et. Ut nam delectus quaerat saepe occaecati. Ex ut rerum necessitatibus eos minus suscipit. A eum voluptas est. Aut qui quis sed tempora. Sit eos tempore et consectetur voluptatem neque consequatur. Eum soluta ut rem dolorem aperiam est sequi. Dignissimos aliquid ea accusantium facere ut id. Assumenda ut aut in sed. Saepe quo ut quia aut beatae quae consequuntur. Debitis expedita non magni minima voluptatibus voluptatem aut. Qui eum dolores at voluptatem quam accusamus eligendi dolores. Ipsam et nihil est minima non expedita dicta. Et sunt quia velit. Qui beatae consequatur illum et. Ut non voluptatem quasi nihil. Officia nihil perspiciatis velit dolorem. Nemo blanditiis aperiam sunt rerum aspernatur quidem. Nulla et perspiciatis magnam quis accusamus. Corporis similique eligendi aut vel in.',26),(24,'2023-04-04 19:28:43','2023-04-04 19:28:43','Reiciendis nostrum odio illum voluptatem unde.','Et mollitia aut rerum reiciendis et qui ab. Fuga blanditiis quo eius aliquid nihil tempora consequatur sint. Explicabo quibusdam ut deleniti consequuntur. Molestiae adipisci rerum omnis qui perferendis. Reprehenderit minus sit ut. Recusandae nihil ut doloremque atque dolorem odit et. Est magni quia fuga. Veniam enim in quo aut praesentium rerum et aut. Molestias quibusdam corrupti quia laborum. Recusandae eos in tempora dignissimos doloremque doloremque aliquid. Velit consequatur deleniti debitis deleniti dicta. A voluptatem incidunt architecto. In cumque optio odit ut. Eum esse sit quia ut necessitatibus quia. Et repudiandae aut et animi. Dicta harum nihil nisi quo ipsam. Itaque nulla est placeat quis autem incidunt aut. Magnam cupiditate sed corporis earum recusandae ut nesciunt ut. Rem nulla dolorem nihil expedita iste voluptas. Quidem at aut voluptatem quia rerum laboriosam ratione. Omnis soluta commodi sint sed nobis sapiente. Velit odio consequuntur rerum rerum aut labore mollitia. Beatae natus vitae sint ut dolores iure asperiores. Harum molestiae sint ducimus voluptas consequatur eaque. Dolor molestias est consequatur nihil. Iure est iusto et deleniti ratione. Non molestias aliquid in itaque. Consequuntur tenetur at vel ratione. Perspiciatis sunt dolorem dolorum. Sunt est minima ea similique amet. Accusantium occaecati dolorem nostrum ut sed ipsa et. Voluptatem asperiores sunt modi et commodi ea. Ipsa porro doloremque illum velit accusantium aut repellat. Dolorum consequuntur ipsum error et qui numquam. Veritatis dicta odit repudiandae ipsam itaque dolorem. Quis odio consectetur nihil iste nihil. Enim magnam excepturi accusamus a in esse veniam. Quia molestiae aliquid sint nulla ea saepe. Fugiat suscipit veritatis vel in quas adipisci saepe.',27),(25,'2023-04-04 19:28:43','2023-04-04 19:28:43','Magni doloremque esse sint dolorum quia.','Nesciunt vitae temporibus qui. Dicta aut tempore autem unde aut qui. Natus et enim aut architecto dolores ut. Eius non consectetur dolores recusandae rerum asperiores at. Cum odio assumenda enim adipisci voluptas. Commodi dolor dolor eaque ut ut vitae natus. Alias quisquam quo et corporis velit. Officiis esse sed quis est praesentium. Pariatur quaerat sed vel ut. Dolor unde explicabo incidunt perspiciatis. Quibusdam omnis nemo quod nihil non dolorem assumenda. Corrupti magni repudiandae et natus. Illum ipsam quia fugit iure aut autem. Sed consequatur qui rerum sunt sed magnam saepe. Enim itaque adipisci molestiae. Soluta voluptatibus accusamus ipsam voluptatem. Et sit consequatur omnis sunt quis eveniet illum repellat. Voluptatibus sit sunt quod illum. Sed quaerat eaque dicta. Ad fugiat accusantium et itaque enim. Qui sapiente esse eligendi minima blanditiis. Sint quis modi corporis nulla eius quasi eius. Voluptatum dignissimos rerum in dolores doloremque fugiat rerum. Quia explicabo ut molestiae dolore saepe minima fuga. Facilis eos alias molestiae sit architecto qui. Facilis doloremque illo ea recusandae assumenda. Aut doloribus quibusdam tempora nulla. Magni et non ex beatae quisquam. Itaque delectus necessitatibus animi est in. Neque iste et maiores pariatur ab sit. Et et porro quisquam eligendi enim iure est. Eos delectus repellat sit excepturi ad ullam. Est ut placeat enim ea quia perferendis quis. Dolorem adipisci ipsum labore qui est adipisci. Velit odio minima sint eos doloribus. Impedit occaecati quisquam repellendus atque. Cumque blanditiis repellendus eaque aut.',28),(26,'2023-04-04 19:28:43','2023-04-04 19:28:43','Laborum et aut beatae expedita.','Unde dolores rerum pariatur facilis nemo qui eum. Ipsam quaerat sint eum quam qui sapiente placeat. Iure omnis soluta sed ad hic. Modi in illo tempora beatae. Accusamus dolorum distinctio provident delectus voluptatibus ut. Asperiores quis quisquam ad omnis ex laborum voluptas. Et ullam hic et veritatis eos accusamus. Reprehenderit qui qui ratione in quia consectetur omnis. Nostrum eum exercitationem ipsam quasi animi. Cupiditate saepe aliquam dolores fugiat illo magni alias. Et eaque omnis ipsam ea sed. Placeat quo placeat et tempore amet. Saepe sequi at voluptatem esse temporibus. Nulla quisquam neque sint nobis sequi. Consequatur saepe molestias sit perferendis. Quos quibusdam aut sed rerum qui. Accusantium id esse autem ut. Et occaecati eos porro ut. Culpa voluptatem magni dolores. Quis sit at voluptas alias nemo dolorum mollitia debitis. Vel in fugiat consequuntur officiis fugit nihil. Deserunt et illo sapiente maiores est. Officiis voluptatem dolorum consequatur est. Quia distinctio pariatur at voluptas quasi culpa nulla. Qui omnis qui ducimus saepe et. Explicabo sint quaerat et voluptates animi et corporis sunt. Velit aspernatur voluptates quis est dolor autem. Omnis architecto corrupti sunt repellendus deserunt officia magni vel. Libero quam facilis hic eum molestiae sed rerum. Et sunt rerum deleniti eum ullam molestiae voluptatem.',29),(27,'2023-04-04 19:28:43','2023-04-04 19:28:43','Nemo sapiente reprehenderit et atque.','Consequatur autem et necessitatibus architecto provident quo modi aut. Cum dolor eaque a nam. Dicta qui provident officiis quia sit eos eligendi. Voluptatem reiciendis rem tenetur voluptatibus sint quae adipisci vel. Deleniti doloremque quod qui possimus. Quod dolorem nemo ut aut placeat. Id eos consequatur placeat consequatur similique velit. Atque maiores ut sit. Sapiente quibusdam et consequatur atque. Ut consequatur ex enim voluptas inventore. Est qui magni facilis sint. Laborum iste ut non unde adipisci rerum incidunt. Aut iusto aut aut autem. Ea sunt magni et. Molestiae sunt sed qui similique aut eos sint. Molestiae sit earum quo rerum. Voluptatibus reiciendis voluptas ex dolorem. Facilis sunt veritatis voluptatem quia. Qui aliquam blanditiis molestiae qui cum eligendi. Delectus aut et illo minima voluptate. Similique minus culpa assumenda nesciunt possimus molestiae sed. Ut consequatur ut ipsum animi. Eaque et et recusandae totam consequuntur esse. Rerum maiores deleniti ducimus molestias et ad laudantium.',30),(28,'2023-04-04 19:28:43','2023-04-04 19:28:43','Assumenda illo minus aliquam adipisci quasi aut.','Sint velit cupiditate aut voluptatem ullam. Est ut voluptatem neque ut quia provident. Eos voluptatibus aliquam tenetur aut magni ipsa magni. Sit ullam tenetur hic voluptatem. Tempora aut dolore id. Qui aut ipsum ut repudiandae laudantium dicta minus. Quas sit aut officia dolor ut perspiciatis. Et sequi facere quas velit aperiam blanditiis. Id quia rerum recusandae earum deleniti. Sed consectetur nisi soluta reiciendis quasi. Maiores rerum sit est enim sed. Qui voluptates sint ut minus neque quae facere sit. Est deleniti exercitationem tempore mollitia. Labore excepturi ut velit quasi architecto. Expedita sapiente iste corporis qui architecto reprehenderit qui. Pariatur et ratione corporis voluptatem eius sit inventore. Aut quo aut error. Sed accusantium dolores sint cum est animi animi. A non et sunt dicta. In libero amet hic velit. Qui officiis saepe labore beatae ratione aliquam facilis. Enim et dolor eos. Ut sed temporibus et illum quam at cupiditate. Molestiae consequuntur beatae aut expedita incidunt. Similique at aliquid qui. Earum velit ut aut inventore et quam cupiditate. Sed aliquam tempore omnis numquam.',31),(29,'2023-04-04 19:28:43','2023-04-04 19:28:43','Voluptatem id temporibus quis consectetur ab quos recusandae.','Voluptatibus ut asperiores asperiores est in. Vero suscipit inventore eos harum. Blanditiis et ut repudiandae odio recusandae. Praesentium nihil rerum quis harum omnis quod fugit. Eaque magni rerum rerum blanditiis consequatur. Ipsa sunt rerum et velit inventore similique. Esse maxime qui totam quia autem ullam quae. Harum voluptas doloribus magnam voluptatem. Quibusdam harum quod animi dicta. Praesentium aut corrupti et voluptas quisquam est. Hic ut animi aliquid necessitatibus veritatis et. Deleniti et dolorem quia illum sed. Et eos et dolorem natus accusantium aut. Molestiae minus molestiae assumenda accusamus id. Non non aut voluptatem itaque consequatur. Illo unde hic et eaque reiciendis et sed corrupti. Rerum sint placeat minus quia non. Consectetur molestiae error provident est ab eaque necessitatibus. Quia ut neque reiciendis nihil harum. Quia tenetur dolor et quia sed. Non quis expedita et esse itaque. Quo voluptatem eaque et. Dolores nobis dolorum et. Itaque est aliquid consequuntur alias ab facilis voluptatibus. Cupiditate quos quidem rem animi tempora. Iusto assumenda voluptatibus nam vero ratione ea aut. Ipsa incidunt voluptatem qui quia. Provident ipsa unde et est magnam nihil. Qui doloribus odit atque sint ipsam. Qui eveniet repudiandae voluptatem. Vel facilis ut repudiandae sit consequatur deserunt rerum. Commodi perferendis esse voluptas deleniti hic molestias modi veritatis. Hic reiciendis dolores rerum et et officia. Possimus sit quia rerum provident. Dolorem perferendis voluptatem occaecati id. Deserunt maiores et ipsa mollitia animi. Veritatis sit beatae consequatur a animi. Reprehenderit fugit maxime voluptatum.',32);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villes`
--

DROP TABLE IF EXISTS `villes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villes`
--

LOCK TABLES `villes` WRITE;
/*!40000 ALTER TABLE `villes` DISABLE KEYS */;
INSERT INTO `villes` VALUES (1,NULL,NULL,'Montreal'),(2,NULL,NULL,'Quebec'),(3,NULL,NULL,'Joliette'),(4,'2023-04-04 16:31:33','2023-04-04 16:31:33','Eldonmouth'),(5,'2023-04-04 16:31:33','2023-04-04 16:31:33','Madisynport'),(6,'2023-04-04 16:31:33','2023-04-04 16:31:33','North William'),(7,'2023-04-04 16:31:33','2023-04-04 16:31:33','Whitechester'),(8,'2023-04-04 16:31:33','2023-04-04 16:31:33','New Montana'),(9,'2023-04-04 16:32:03','2023-04-04 16:32:03','East Myriam'),(10,'2023-04-04 16:32:03','2023-04-04 16:32:03','North Ashleigh'),(11,'2023-04-04 16:32:03','2023-04-04 16:32:03','Lake Guido'),(12,'2023-04-04 16:32:03','2023-04-04 16:32:03','East Jeanieberg'),(13,'2023-04-04 16:32:15','2023-04-04 16:32:15','Kreigertown'),(14,'2023-04-04 16:32:15','2023-04-04 16:32:15','Port Ezequiel'),(15,'2023-04-04 16:32:16','2023-04-04 16:32:16','West Curtisburgh'),(16,'2023-04-04 16:32:16','2023-04-04 16:32:16','Lemuelton'),(17,'2023-04-04 19:28:42','2023-04-04 19:28:42','East Jeradview'),(18,'2023-04-04 19:28:42','2023-04-04 19:28:42','East Ernestoport'),(19,'2023-04-04 19:28:42','2023-04-04 19:28:42','West Kathryne'),(20,'2023-04-04 19:28:42','2023-04-04 19:28:42','Bartonfurt'),(21,'2023-04-04 19:28:42','2023-04-04 19:28:42','Nyahstad'),(22,'2023-04-04 19:28:42','2023-04-04 19:28:42','Tillmanshire'),(23,'2023-04-04 19:28:42','2023-04-04 19:28:42','Glovermouth'),(24,'2023-04-04 19:28:42','2023-04-04 19:28:42','Ryanport'),(25,'2023-04-04 19:28:42','2023-04-04 19:28:42','South Eltafort'),(26,'2023-04-04 19:28:42','2023-04-04 19:28:42','Runolfsdottirtown'),(27,'2023-04-04 19:28:42','2023-04-04 19:28:42','North Lawsonfurt'),(28,'2023-04-04 19:28:42','2023-04-04 19:28:42','West Keenanville'),(29,'2023-04-04 19:28:43','2023-04-04 19:28:43','McLaughlinmouth'),(30,'2023-04-04 19:28:43','2023-04-04 19:28:43','Kevintown'),(31,'2023-04-04 19:28:43','2023-04-04 19:28:43','Sashafurt'),(32,'2023-04-04 19:28:43','2023-04-04 19:28:43','East Bertachester'),(33,'2023-04-04 19:28:43','2023-04-04 19:28:43','Colleenshire'),(34,'2023-04-04 19:28:43','2023-04-04 19:28:43','Port Kelton'),(35,'2023-04-04 19:28:43','2023-04-04 19:28:43','North Floyd'),(36,'2023-04-04 19:28:43','2023-04-04 19:28:43','Lake Jedidiahshire');
/*!40000 ALTER TABLE `villes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 23:58:02
