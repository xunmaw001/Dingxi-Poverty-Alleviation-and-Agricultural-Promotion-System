-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm27blb
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm27blb/upload/1616130506168.jpg'),(2,'picture2','http://localhost:8080/jspm27blb/upload/1616129767971.jpg'),(3,'picture3','http://localhost:8080/jspm27blb/upload/1616130491045.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616130686500 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-19 04:17:31','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-19 04:17:31','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-19 04:17:31','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-19 04:17:31','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-19 04:17:31','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-19 04:17:31','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1616130669841,'2021-03-19 05:11:09','sdfssdfsdf','<p>sdsfsfsdfsf</p>',0,1616130550080,'11','开放'),(1616130686499,'2021-03-19 05:11:26',NULL,'dfsf',71,1616130550080,'11',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fupinjihua`
--

DROP TABLE IF EXISTS `fupinjihua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fupinjihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `guojiamingcheng` varchar(200) DEFAULT NULL COMMENT '国家名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='扶贫计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fupinjihua`
--

LOCK TABLES `fupinjihua` WRITE;
/*!40000 ALTER TABLE `fupinjihua` DISABLE KEYS */;
INSERT INTO `fupinjihua` VALUES (21,'2021-03-19 04:17:31','标题1','http://localhost:8080/jspm27blb/upload/1616129611068.jpg','内容1\r\n','2021-03-19','国家名称1'),(22,'2021-03-19 04:17:31','标题2','http://localhost:8080/jspm27blb/upload/1616129634997.jpg','内容2\r\n','2021-03-19','国家名称2'),(23,'2021-03-19 04:17:31','标题3','http://localhost:8080/jspm27blb/upload/1616129654774.jpg','内容3\r\n','2021-03-19','国家名称3'),(24,'2021-03-19 04:17:31','标题4','http://localhost:8080/jspm27blb/upload/1616129681128.jpg','内容4\r\n','2021-03-19','国家名称4'),(25,'2021-03-19 04:17:31','标题5','http://localhost:8080/jspm27blb/upload/1616129711102.jpg','内容5\r\n','2021-03-19','国家名称5'),(26,'2021-03-19 04:17:31','标题6','http://localhost:8080/jspm27blb/upload/1616129722007.jpg','内容6\r\n','2021-03-19','国家名称6');
/*!40000 ALTER TABLE `fupinjihua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huinongfuli`
--

DROP TABLE IF EXISTS `huinongfuli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huinongfuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='惠农福利';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huinongfuli`
--

LOCK TABLES `huinongfuli` WRITE;
/*!40000 ALTER TABLE `huinongfuli` DISABLE KEYS */;
INSERT INTO `huinongfuli` VALUES (31,'2021-03-19 04:17:31','标题1','http://localhost:8080/jspm27blb/upload/1616129995869.jpg','内容1\r\n','2021-03-19'),(32,'2021-03-19 04:17:31','标题2','http://localhost:8080/jspm27blb/upload/1616130019052.jpg','内容2\r\n','2021-03-19'),(33,'2021-03-19 04:17:31','标题3','http://localhost:8080/jspm27blb/upload/1616130039957.jpg','内容3\r\n','2021-03-19'),(34,'2021-03-19 04:17:31','标题4','http://localhost:8080/jspm27blb/upload/1616130064462.jpg','内容4\r\n','2021-03-19'),(35,'2021-03-19 04:17:31','标题5','http://localhost:8080/jspm27blb/upload/1616130084342.jpg','内容5\r\n','2021-03-19'),(36,'2021-03-19 04:17:31','标题6','http://localhost:8080/jspm27blb/upload/huinongfuli_tupian6.jpg','内容6','2021-03-19');
/*!40000 ALTER TABLE `huinongfuli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','bdffsfhrj6guqc0gqps6fzw1077ggjn2','2021-03-19 04:19:08','2021-03-19 06:12:44'),(2,1616130550080,'11','yonghu','用户','dh3glhzjce214u27gqbno0auarqltje5','2021-03-19 05:09:19','2021-03-19 06:15:06');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-19 04:17:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616130550081 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-19 04:17:31','用户1','123456','用户姓名1','http://localhost:8080/jspm27blb/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-19 04:17:31','用户2','123456','用户姓名2','http://localhost:8080/jspm27blb/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-19 04:17:31','用户3','123456','用户姓名3','http://localhost:8080/jspm27blb/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-19 04:17:31','用户4','123456','用户姓名4','http://localhost:8080/jspm27blb/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-19 04:17:31','用户5','123456','用户姓名5','http://localhost:8080/jspm27blb/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-19 04:17:31','用户6','123456','用户姓名6','http://localhost:8080/jspm27blb/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com'),(1616130550080,'2021-03-19 05:09:10','11','123456','杨先生','http://localhost:8080/jspm27blb/upload/1616130570026.jpg','男','13823899999','');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxiunongmin`
--

DROP TABLE IF EXISTS `youxiunongmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxiunongmin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nongminxingming` varchar(200) DEFAULT NULL COMMENT '农民姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `gerenjianjie` longtext COMMENT '个人简介',
  `fengguangshiji` varchar(200) DEFAULT NULL COMMENT '风光事迹',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='优秀农民';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxiunongmin`
--

LOCK TABLES `youxiunongmin` WRITE;
/*!40000 ALTER TABLE `youxiunongmin` DISABLE KEYS */;
INSERT INTO `youxiunongmin` VALUES (41,'2021-03-19 04:17:31','农民姓名1','http://localhost:8080/jspm27blb/upload/youxiunongmin_touxiang1.jpg','个人简介1','风光事迹1'),(42,'2021-03-19 04:17:31','农民姓名2','http://localhost:8080/jspm27blb/upload/youxiunongmin_touxiang2.jpg','个人简介2','风光事迹2'),(43,'2021-03-19 04:17:31','农民姓名3','http://localhost:8080/jspm27blb/upload/youxiunongmin_touxiang3.jpg','个人简介3','风光事迹3'),(44,'2021-03-19 04:17:31','农民姓名4','http://localhost:8080/jspm27blb/upload/youxiunongmin_touxiang4.jpg','个人简介4','风光事迹4'),(45,'2021-03-19 04:17:31','农民姓名5','http://localhost:8080/jspm27blb/upload/youxiunongmin_touxiang5.jpg','个人简介5','风光事迹5'),(46,'2021-03-19 04:17:31','农民姓名6','http://localhost:8080/jspm27blb/upload/youxiunongmin_touxiang6.jpg','个人简介6','风光事迹6');
/*!40000 ALTER TABLE `youxiunongmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianjuanzeng`
--

DROP TABLE IF EXISTS `zaixianjuanzeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianjuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `juanzengwuzi` varchar(200) DEFAULT NULL COMMENT '捐赠物资',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `juanzengriqi` date DEFAULT NULL COMMENT '捐赠日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616130749160 DEFAULT CHARSET=utf8 COMMENT='在线捐赠';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianjuanzeng`
--

LOCK TABLES `zaixianjuanzeng` WRITE;
/*!40000 ALTER TABLE `zaixianjuanzeng` DISABLE KEYS */;
INSERT INTO `zaixianjuanzeng` VALUES (61,'2021-03-19 04:17:31','用户名1','用户姓名1','联系电话1','捐赠物资1','数量1','2021-03-19','是',''),(62,'2021-03-19 04:17:31','用户名2','用户姓名2','联系电话2','捐赠物资2','数量2','2021-03-19','是',''),(63,'2021-03-19 04:17:31','用户名3','用户姓名3','联系电话3','捐赠物资3','数量3','2021-03-19','是',''),(64,'2021-03-19 04:17:31','用户名4','用户姓名4','联系电话4','捐赠物资4','数量4','2021-03-19','是',''),(65,'2021-03-19 04:17:31','用户名5','用户姓名5','联系电话5','捐赠物资5','数量5','2021-03-19','是',''),(66,'2021-03-19 04:17:31','用户名6','用户姓名6','联系电话6','捐赠物资6','数量6','2021-03-19','是',''),(1616130749159,'2021-03-19 05:12:28','11','杨先生','13823899999','书本','100本','2021-03-19','是','感谢你的捐赠');
/*!40000 ALTER TABLE `zaixianjuanzeng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiyuanzhebaoming`
--

DROP TABLE IF EXISTS `zhiyuanzhebaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiyuanzhebaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `baomingyiyuan` longtext COMMENT '报名意愿',
  `baomingriqi` date DEFAULT NULL COMMENT '报名日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616130723610 DEFAULT CHARSET=utf8 COMMENT='志愿者报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiyuanzhebaoming`
--

LOCK TABLES `zhiyuanzhebaoming` WRITE;
/*!40000 ALTER TABLE `zhiyuanzhebaoming` DISABLE KEYS */;
INSERT INTO `zhiyuanzhebaoming` VALUES (51,'2021-03-19 04:17:31','用户名1','用户姓名1','性别1','联系电话1','报名意愿1','2021-03-19','是',''),(52,'2021-03-19 04:17:31','用户名2','用户姓名2','性别2','联系电话2','报名意愿2','2021-03-19','是',''),(53,'2021-03-19 04:17:31','用户名3','用户姓名3','性别3','联系电话3','报名意愿3','2021-03-19','是',''),(54,'2021-03-19 04:17:31','用户名4','用户姓名4','性别4','联系电话4','报名意愿4','2021-03-19','是',''),(55,'2021-03-19 04:17:31','用户名5','用户姓名5','性别5','联系电话5','报名意愿5','2021-03-19','是',''),(56,'2021-03-19 04:17:31','用户名6','用户姓名6','性别6','联系电话6','报名意愿6','2021-03-19','是',''),(1616130723609,'2021-03-19 05:12:02','11','杨先生','男','13823899999','sdfsfsff','2021-03-19','是','');
/*!40000 ALTER TABLE `zhiyuanzhebaoming` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-20 10:02:16
