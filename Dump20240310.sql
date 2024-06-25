-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: valuation
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `additionals`
--

DROP TABLE IF EXISTS `additionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additionals` (
  `Additional_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Email_id` varchar(45) NOT NULL,
  `Phone_no` varchar(45) NOT NULL,
  `uid` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `sem` varchar(45) NOT NULL,
  `priority_1` varchar(45) NOT NULL,
  `priority_2` varchar(45) NOT NULL,
  `priority_3` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `totelpapers` int(11) NOT NULL,
  `collegename` varchar(45) NOT NULL,
  PRIMARY KEY (`Additional_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additionals`
--

LOCK TABLES `additionals` WRITE;
/*!40000 ALTER TABLE `additionals` DISABLE KEYS */;
/*!40000 ALTER TABLE `additionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assign`
--

DROP TABLE IF EXISTS `assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assign` (
  `Assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `Additional_id` int(11) NOT NULL,
  `Paper_id` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`Assign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign`
--

LOCK TABLES `assign` WRITE;
/*!40000 ALTER TABLE `assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assign_paper`
--

DROP TABLE IF EXISTS `assign_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assign_paper` (
  `assign_paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `issuepaper_id` int(11) NOT NULL,
  `additional_id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`assign_paper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_paper`
--

LOCK TABLES `assign_paper` WRITE;
/*!40000 ALTER TABLE `assign_paper` DISABLE KEYS */;
/*!40000 ALTER TABLE `assign_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add additionals',7,'add_additionals'),(26,'Can change additionals',7,'change_additionals'),(27,'Can delete additionals',7,'delete_additionals'),(28,'Can view additionals',7,'view_additionals'),(29,'Can add assign',8,'add_assign'),(30,'Can change assign',8,'change_assign'),(31,'Can delete assign',8,'delete_assign'),(32,'Can view assign',8,'view_assign'),(33,'Can add bill',9,'add_bill'),(34,'Can change bill',9,'change_bill'),(35,'Can delete bill',9,'delete_bill'),(36,'Can view bill',9,'view_bill'),(37,'Can add cheif',10,'add_cheif'),(38,'Can change cheif',10,'change_cheif'),(39,'Can delete cheif',10,'delete_cheif'),(40,'Can view cheif',10,'view_cheif'),(41,'Can add form',11,'add_form'),(42,'Can change form',11,'change_form'),(43,'Can delete form',11,'delete_form'),(44,'Can view form',11,'view_form'),(45,'Can add login',12,'add_login'),(46,'Can change login',12,'change_login'),(47,'Can delete login',12,'delete_login'),(48,'Can view login',12,'view_login'),(49,'Can add paper',13,'add_paper'),(50,'Can change paper',13,'change_paper'),(51,'Can delete paper',13,'delete_paper'),(52,'Can view paper',13,'view_paper'),(53,'Can add status',14,'add_status'),(54,'Can change status',14,'change_status'),(55,'Can delete status',14,'delete_status'),(56,'Can view status',14,'view_status'),(57,'Can add work',15,'add_work'),(58,'Can change work',15,'change_work'),(59,'Can delete work',15,'delete_work'),(60,'Can view work',15,'view_work'),(61,'Can add course',16,'add_course'),(62,'Can change course',16,'change_course'),(63,'Can delete course',16,'delete_course'),(64,'Can view course',16,'view_course'),(65,'Can add assign paper',17,'add_assignpaper'),(66,'Can change assign paper',17,'change_assignpaper'),(67,'Can delete assign paper',17,'delete_assignpaper'),(68,'Can view assign paper',17,'view_assignpaper'),(69,'Can add issue paper',18,'add_issuepaper'),(70,'Can change issue paper',18,'change_issuepaper'),(71,'Can delete issue paper',18,'delete_issuepaper'),(72,'Can view issue paper',18,'view_issuepaper');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `nameofexaminer` varchar(45) DEFAULT NULL,
  `nameofcollage` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `total_no_of_paper` varchar(45) DEFAULT NULL,
  `mandatory_deduction` varchar(45) DEFAULT NULL,
  `Elligibel_no_of_papers` varchar(45) DEFAULT NULL,
  `Remuneration` varchar(45) DEFAULT NULL,
  `Additional_maximum_chairman_fee` varchar(45) DEFAULT NULL,
  `Remunerationfor_decussiom` varchar(45) DEFAULT NULL,
  `totel` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheif`
--

DROP TABLE IF EXISTS `cheif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cheif` (
  `cheif_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `totelpapers` int(11) NOT NULL,
  `collegename` varchar(45) NOT NULL,
  PRIMARY KEY (`cheif_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheif`
--

LOCK TABLES `cheif` WRITE;
/*!40000 ALTER TABLE `cheif` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chief_issuepaper_additional`
--

DROP TABLE IF EXISTS `chief_issuepaper_additional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chief_issuepaper_additional` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) NOT NULL,
  `cheif_id` int(11) NOT NULL,
  `Additional_id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chief_issuepaper_additional`
--

LOCK TABLES `chief_issuepaper_additional` WRITE;
/*!40000 ALTER TABLE `chief_issuepaper_additional` DISABLE KEYS */;
/*!40000 ALTER TABLE `chief_issuepaper_additional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Computer Science');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'additionals','additionals'),(1,'admin','logentry'),(8,'assign','assign'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'bill','bill'),(10,'cheif','cheif'),(5,'contenttypes','contenttype'),(16,'course','course'),(11,'form','form'),(17,'issuepaper','assignpaper'),(18,'issuepaper','issuepaper'),(12,'login','login'),(13,'paper','paper'),(6,'sessions','session'),(14,'status','status'),(15,'work','work');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'additionals','0001_initial','2024-02-29 08:09:54.222874'),(2,'contenttypes','0001_initial','2024-02-29 08:09:54.448954'),(3,'auth','0001_initial','2024-02-29 08:09:57.085293'),(4,'admin','0001_initial','2024-02-29 08:09:57.634626'),(5,'admin','0002_logentry_remove_auto_add','2024-02-29 08:09:57.698505'),(6,'admin','0003_logentry_add_action_flag_choices','2024-02-29 08:09:57.759175'),(7,'assign','0001_initial','2024-02-29 08:09:57.797784'),(8,'contenttypes','0002_remove_content_type_name','2024-02-29 08:09:58.333672'),(9,'auth','0002_alter_permission_name_max_length','2024-02-29 08:09:58.429794'),(10,'auth','0003_alter_user_email_max_length','2024-02-29 08:09:58.522776'),(11,'auth','0004_alter_user_username_opts','2024-02-29 08:09:58.560063'),(12,'auth','0005_alter_user_last_login_null','2024-02-29 08:09:58.812839'),(13,'auth','0006_require_contenttypes_0002','2024-02-29 08:09:58.848350'),(14,'auth','0007_alter_validators_add_error_messages','2024-02-29 08:09:58.908622'),(15,'auth','0008_alter_user_username_max_length','2024-02-29 08:09:58.998816'),(16,'auth','0009_alter_user_last_name_max_length','2024-02-29 08:09:59.095617'),(17,'auth','0010_alter_group_name_max_length','2024-02-29 08:09:59.197012'),(18,'auth','0011_update_proxy_permissions','2024-02-29 08:09:59.262840'),(19,'auth','0012_alter_user_first_name_max_length','2024-02-29 08:09:59.358468'),(20,'bill','0001_initial','2024-02-29 08:09:59.400531'),(21,'cheif','0001_initial','2024-02-29 08:09:59.440842'),(22,'course','0001_initial','2024-02-29 08:09:59.481379'),(23,'form','0001_initial','2024-02-29 08:09:59.522971'),(24,'login','0001_initial','2024-02-29 08:09:59.563131'),(25,'paper','0001_initial','2024-02-29 08:09:59.602310'),(26,'sessions','0001_initial','2024-02-29 08:09:59.853853'),(27,'status','0001_initial','2024-02-29 08:09:59.894563'),(28,'work','0001_initial','2024-02-29 08:09:59.931471'),(29,'issuepaper','0001_initial','2024-03-05 05:47:27.020383');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5p1z6i68yb3k2fgi5n0c5f79vhkhagh3','eyJ1X2lkIjoxfQ:1rjGdV:zXRD_541D67ZUpi6XDUJ_nxJCKxNVQZ1JlfuklH0k7w','2024-03-24 10:42:33.456138'),('puygmlkjt83gapwnbnhix0qo8myqdylh','eyJ1X2lkIjoxLCJpc3N1ZV9pZCI6MX0:1riCKC:8sMefs2aOQEwY3I3_JjuT975LxPLp-_9gCYkpgDl_rY','2024-03-21 11:54:12.337053');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(45) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `college_name` varchar(45) NOT NULL,
  `Experience` varchar(45) NOT NULL,
  `choice` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuepaper`
--

DROP TABLE IF EXISTS `issuepaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuepaper` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) NOT NULL,
  `cheif_id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuepaper`
--

LOCK TABLES `issuepaper` WRITE;
/*!40000 ALTER TABLE `issuepaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuepaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (3,'admin','admin','admin',1),(5,'chief1','12345','cheif',4),(6,'additional1','12345','additional',1),(7,'abu','','cheif',5),(8,'qwe','qwe','cheif',6),(9,'dh','dh','cheif',7),(10,'ben','ben','additional',2);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper` (
  `Paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `sem` varchar(45) NOT NULL,
  `paper` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`Paper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (1,1,'1 sem','Computer Graphics','Approved'),(2,1,'1 sem','computer fundamentals & HTML','Approved'),(3,1,'2 sem','Problem solving using c','Approved'),(4,1,'3 sem','python programing','Approved'),(5,1,'3 sem','Data structures using c','Approved'),(6,1,'4 sem','Data communication and Optical Fibers','Approved'),(7,1,'4 sem','Microprocessors-Architecture and Programing','Approved'),(8,1,'4 sem','Database Management System and RDBMS','Approved'),(9,1,'5 sem','Computer organisation and Architecture','Approved'),(10,1,'5 sem','Java Programming','Approved'),(11,1,'5 sem','Web Programming Using PHP','Approved'),(12,1,'5 sem','Principle of Software Engineering','Approved'),(13,1,'6 sem','Android Programming','Denied'),(14,1,'6 sem','Operating Systems','Denied'),(15,1,'6 sem','Computer Networks','Approved'),(16,1,'3 sem','Sensors and Transducers','Denied'),(17,1,'6 sem','Operating Systems','Approved');
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `Status_id` int(11) NOT NULL AUTO_INCREMENT,
  `Check_id` varchar(45) NOT NULL,
  `Count_id` varchar(45) NOT NULL,
  `date_time_id` varchar(45) NOT NULL,
  `paper_availability` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`Status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_bill`
--

DROP TABLE IF EXISTS `view_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `view_bill` (
  `No` int(11) DEFAULT NULL,
  `Name of examiner` varchar(45) DEFAULT NULL,
  `Name of collage` varchar(45) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Total No of Papers Valued` varchar(45) DEFAULT NULL,
  `Mandatory Deduction` varchar(45) DEFAULT NULL,
  `Eligible No Of Papers` varchar(45) DEFAULT NULL,
  `Remuneration` varchar(45) DEFAULT NULL,
  `Additional Maximum & Chairman fee` varchar(45) DEFAULT NULL,
  `Remuneration For Discussion` varchar(45) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_bill`
--

LOCK TABLES `view_bill` WRITE;
/*!40000 ALTER TABLE `view_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `view_bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 16:33:17
