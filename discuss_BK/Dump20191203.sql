CREATE DATABASE  IF NOT EXISTS `discuss` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `discuss`;
-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: discuss
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `questionId` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `commentName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`commentId`),
  KEY `questionId` (`questionId`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `questions` (`questionId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1189 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1001,'HI','2019-11-28 05:45:16',1058,'VIV'),(1001,'HJI','2019-11-28 05:48:03',1059,'vivek'),(1001,'wevwv','2019-11-28 05:56:20',1060,'vivek'),(1001,'vh','2019-11-28 05:59:19',1061,'vivek'),(1001,'hi','2019-11-28 06:00:34',1062,'vivek'),(1001,'hy','2019-11-28 06:03:16',1063,'vivek'),(1001,'c','2019-11-28 06:06:01',1064,'vivek'),(1001,'dwvw','2019-11-28 06:12:22',1065,'vivek'),(1001,'new 111111','2019-11-28 06:24:55',1066,'vivek'),(1001,'new 111111','2019-11-28 06:25:08',1067,'vivek'),(1001,'new 1111112222','2019-11-28 06:25:11',1068,'vivek'),(1001,'aqaaqqqqq','2019-11-28 06:31:19',1069,'vivek'),(1001,'aaaaaa','2019-11-28 06:32:27',1070,'vivek'),(1001,'bbbb','2019-11-28 06:37:14',1071,'vivek'),(1001,'ssss','2019-11-28 06:48:00',1072,'vivek'),(1001,'ssss','2019-11-28 06:48:04',1073,'vivek'),(1001,'ssss','2019-11-28 06:48:09',1074,'vivek'),(1001,'ssss','2019-11-28 06:48:22',1075,'vivek'),(1001,'aaaa','2019-11-28 06:53:05',1076,'vivek'),(1001,'aaa','2019-11-28 06:54:28',1077,'vivek'),(1001,'new','2019-11-28 06:55:26',1078,'vivek'),(1001,'newwefweg','2019-11-28 06:55:31',1079,'vivek'),(1001,'newwefweg','2019-11-28 06:55:33',1080,'vivek'),(1001,'newwefweg','2019-11-28 06:55:34',1081,'vivek'),(1001,'newwefweg','2019-11-28 06:55:36',1082,'vivek'),(1001,'sdv sdv','2019-11-28 08:23:41',1083,'vivek'),(1001,'asvv','2019-11-28 08:24:04',1084,'halo'),(1001,'new','2019-11-28 08:33:04',1085,'vivek'),(1001,'ascqsc','2019-11-28 08:34:57',1086,'vivek'),(1001,'qweveqw','2019-11-28 08:35:33',1087,'vivek'),(1001,'qweveqw','2019-11-28 08:35:39',1088,'vivek'),(1001,'qweveqw','2019-11-28 08:35:44',1089,'vivek'),(1001,'new','2019-11-28 08:35:48',1090,'vivek'),(1001,'aaaa','2019-11-28 08:36:30',1091,'vivek'),(1001,'aaaab','2019-11-28 08:36:38',1092,'vivek'),(1001,'nhww','2019-11-28 08:38:27',1093,'vivek'),(1001,'bew1','2019-11-28 08:43:37',1094,'vivek'),(1001,'bew1','2019-11-28 08:43:40',1095,'vivek'),(1001,'bew1','2019-11-28 08:43:56',1096,'vivek'),(1001,'bew1','2019-11-28 08:43:59',1097,'vivek'),(1001,'bew1','2019-11-28 08:44:01',1098,'vivek'),(1001,'bew1','2019-11-28 08:44:02',1099,'vivek'),(1001,'bew1','2019-11-28 08:44:04',1100,'vivek'),(1001,'aaa','2019-11-28 08:53:03',1101,'vivek'),(1001,'aaa','2019-11-28 08:53:08',1102,'vivek'),(1001,'ssss','2019-11-28 08:58:16',1103,'vivek'),(1001,'xxx','2019-11-28 08:59:45',1104,'vivek'),(1001,'aaa','2019-11-28 09:01:06',1105,'vivek'),(1001,'ssss','2019-11-28 09:04:35',1106,'vivek'),(1001,'asvv','2019-11-28 09:09:31',1107,'halo'),(1001,'asvv','2019-11-28 09:09:39',1108,'halo'),(1001,'asdvv','2019-11-28 09:14:03',1109,'vivek'),(1001,'aaaa','2019-11-28 09:16:11',1110,'vivek'),(1001,'aaaa','2019-11-28 09:16:20',1111,'vivek'),(1001,'aaaa','2019-11-28 09:16:39',1112,'vivek'),(1001,'new new new new new new new newnew new new newnew ','2019-11-28 09:19:08',1113,'vivek'),(1001,'new new new new new new new newnew new new newnew ','2019-11-28 09:19:18',1114,'vivek'),(1001,'avqavqevqev','2019-11-28 09:25:49',1115,'vivek'),(1001,'<span style={{position: \'absolute\',\n  right: \'150p','2019-11-28 09:26:26',1116,'vivek'),(1001,'<span style={{position: \'absolute\',\n  right: \'150p','2019-11-28 09:27:23',1117,'vivek'),(1001,'<span style={{position: \'absolute\',\n  right: \'150px\'}}>{this.getFormattedTimeStamp(item.timestamp)}</span><span style={{position: \'absolute\',\n  right: \'150px\'}}>{this.getFormattedTimeStamp(item.timestamp)}</span><span style={{position: \'absolute\',\n  right: \'150px\'}}>{this.getFormattedTimeStamp(item.timestamp)}</span>','2019-11-28 09:28:09',1118,'vivek'),(1002,'hi','2019-11-28 09:59:37',1119,'vivek'),(1002,'hi','2019-11-28 09:59:42',1120,'vivek'),(1002,'new','2019-11-28 10:00:03',1121,'vivek'),(1004,'Initial Comment','2019-11-28 10:13:10',1122,'default'),(1004,'hi','2019-11-28 10:14:21',1123,'vivek'),(1001,'aaaa','2019-11-29 05:14:46',1124,'vievf'),(1001,'wevwev','2019-11-29 06:26:32',1125,'vievf'),(1001,'wevwev','2019-11-29 06:34:10',1126,'vievf'),(1001,'wevwev','2019-11-29 06:34:13',1127,'vievf'),(1001,'wevwev','2019-11-29 06:34:14',1128,'vievf'),(1001,'wevwev','2019-11-29 06:34:15',1129,'vievf'),(1001,'wevwev','2019-11-29 06:34:17',1130,'vievf'),(1001,'wevwev','2019-11-29 06:34:18',1131,'vievf'),(1001,'wevwev','2019-11-29 06:34:19',1132,'vievf'),(1001,'wevwev','2019-11-29 06:34:21',1133,'vievf'),(1001,'wevwev','2019-11-29 06:35:23',1134,'vievf'),(1001,'wevwev','2019-11-29 06:35:23',1135,'vievf'),(1001,'wevwevwevwv','2019-11-29 06:35:28',1136,'vievf'),(1001,'wevwevwevwv','2019-11-29 06:35:36',1137,'vievf'),(1001,'wevwevwevwv','2019-11-29 06:35:37',1138,'vievf'),(1001,'wevwevwevwv','2019-11-29 06:35:38',1139,'vievf'),(1001,'wevwevwevwv','2019-11-29 06:35:39',1140,'vievf'),(1001,'dfsberb','2019-12-02 06:15:26',1141,'vievf'),(1001,'newww','2019-12-02 06:18:54',1142,'vivek'),(1001,'hiiii','2019-12-02 06:57:48',1143,'vivek'),(1001,'efbeb','2019-12-02 07:06:05',1144,'vivek'),(1001,'efbeb','2019-12-02 07:06:08',1145,'vivek'),(1001,'vfqwevwr','2019-12-02 09:01:31',1146,'vivek'),(1001,'new','2019-12-02 09:08:12',1147,'vivek'),(1001,'new','2019-12-02 09:08:16',1148,'vivek'),(1001,'new','2019-12-02 09:08:26',1149,'vivek'),(1001,'hi','2019-12-02 09:12:38',1150,'vivek'),(1001,'hi','2019-12-02 09:12:41',1151,'vivek'),(1001,'hi','2019-12-02 09:12:47',1152,'vivek'),(1001,'hi','2019-12-02 09:12:47',1153,'vivek'),(1001,'hi','2019-12-02 09:12:48',1154,'vivek'),(1001,'hi','2019-12-02 09:12:48',1155,'vivek'),(1001,'hielo','2019-12-02 09:13:14',1156,'vivek'),(1001,'hielo','2019-12-02 09:13:45',1157,'vivek'),(1001,'aaaa','2019-12-02 09:13:52',1158,'vivek'),(1001,'aaaabbbb','2019-12-02 09:14:15',1159,'vivek'),(1001,'wegwbvg','2019-12-02 09:14:21',1160,'null'),(1001,'asvv','2019-12-02 09:17:09',1161,'vivek'),(1001,'asvvwebvwb','2019-12-02 09:17:11',1162,'vivek'),(1001,'erbqebqb','2019-12-02 09:24:12',1163,'vivek'),(1001,'dvav','2019-12-02 10:39:58',1164,'viviv'),(1001,'cfchkg','2019-12-03 05:47:52',1165,'vivek'),(1001,'cfchkgr','2019-12-03 05:48:11',1166,'vivek'),(1001,'abc\n','2019-12-03 08:21:36',1167,'vivek'),(1001,'1\n','2019-12-03 08:22:17',1168,'vivek'),(1001,'2\n','2019-12-03 08:22:21',1169,'vivek'),(1001,'3\n','2019-12-03 08:22:25',1170,'vivek'),(1001,'4\n','2019-12-03 08:22:27',1171,'vivek'),(1001,'5\n','2019-12-03 08:22:31',1172,'vivek'),(1001,'6\n','2019-12-03 08:22:34',1173,'vivek'),(1001,'7\n','2019-12-03 08:22:37',1174,'vivek'),(1001,'8\n','2019-12-03 08:22:39',1175,'vivek'),(1001,'9\n','2019-12-03 08:22:42',1176,'vivek'),(1001,'10\n','2019-12-03 08:22:45',1177,'vivek'),(1001,'11\n','2019-12-03 08:22:48',1178,'vivek'),(1001,'12\n','2019-12-03 08:22:51',1179,'vivek'),(1001,'13\n','2019-12-03 08:22:54',1180,'vivek'),(1001,'14\n','2019-12-03 08:22:56',1181,'vivek'),(1001,'15\n','2019-12-03 08:22:59',1182,'vivek'),(1001,'16\n','2019-12-03 08:23:02',1183,'vivek'),(1001,'17','2019-12-03 08:23:05',1184,'vivek'),(1001,'18','2019-12-03 08:23:07',1185,'vivek'),(1001,'19','2019-12-03 08:23:10',1186,'vivek'),(1001,'20','2019-12-03 08:23:13',1187,'vivek'),(1001,'21','2019-12-03 08:23:15',1188,'vivek');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `questionId` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1001,'hi'),(1002,'HOW YA?'),(1003,'new test question'),(1004,'new test2');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'discuss'
--

--
-- Dumping routines for database 'discuss'
--
/*!50003 DROP PROCEDURE IF EXISTS `CREATE_COMMENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `CREATE_COMMENT`(
	IN COMMENT1 VARCHAR(1000),
    IN QUESTION_ID INT,
    IN comment_name varchar(50)
)
BEGIN
	INSERT INTO COMMENTS (comment, questionId, commentName) VALUES(COMMENT1, QUESTION_ID, comment_name);
    select row_count();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CREATE_QUESTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `CREATE_QUESTION`(
	IN QUESTION VARCHAR(500)
)
BEGIN
	DECLARE qid int;
	INSERT INTO QUESTIONS (QUESTION) VALUES(QUESTION);
    SELECT LAST_INSERT_ID() into qid;
    call create_comment('Initial Comment',qid,'default');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GET_QUESTION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `GET_QUESTION`(
	IN QID INT
)
BEGIN
	SELECT * FROM QUESTIONS WHERE questionId = QID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LATEST_COMMENTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `LATEST_COMMENTS`(
	IN MYTIMESTAMP TIMESTAMP,
    IN QUESTION_ID INT
)
BEGIN
	SELECT * FROM COMMENTS WHERE questionId=QUESTION_ID AND TIMESTAMP>MYTIMESTAMP ORDER BY timestamp DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TOP10_COMMENTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `TOP10_COMMENTS`(
	IN MYTIMESTAMP TIMESTAMP,
    IN QUESTION_ID INT
)
BEGIN
	SELECT * FROM COMMENTS WHERE questionId=QUESTION_ID AND TIMESTAMP<MYTIMESTAMP ORDER BY timestamp DESC LIMIT 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-03 14:23:16
