-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bms
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin123','13800000000','admin@example.com','管理员','技术部','无','正常','普通登录'),(2,'user1','user123','13900000001','user1@example.com','用户一','市场部','admin','正常','普通登录'),(3,'user2','user456','13900000002','user2@example.com','用户二','人事部','admin','禁用','普通登录'),(4,'addtest1','123456','18311111110','99999999@qq.co','添加测试1','运营部','leader','正常','普通登录'),(8,'frank54','111111','17080984979','q38kn@auwkz.com','弗兰克54','人事部','leader','正常','普通登录'),(9,'alice25','111111','13454542797','bh9s5@jrdggjew.com','爱丽丝25','产品部','admin','禁用','普通登录'),(10,'test212','111111','16525884834','sb0y3y@hgtpd.com','测试212','财务部','admin','正常','普通登录'),(14,'user984','111111','16716826446','lknzcrd9v4@kddd.com','用户984','人事部','leader','正常','普通登录'),(17,'user791','111111','17772083500','30qf9x@nlmommb.com','用户791','技术部','brown','正常','普通登录'),(20,'test943','111111','17563795213','19kk5g@cqzfvzqn.com','测试943','财务部','leader','禁用','普通登录'),(21,'alice46','111111','17634450948','6w6jn1ci@cmeg.com','爱丽丝46','人事部','davis','正常','普通登录'),(22,'user236','111111','17795217897','x0vj4e@dryhfe.com','用户236','人事部','admin','正常','普通登录'),(23,'user213','111111','13279013983','fqo0x@ktztx.com','用户213','产品部','admin','禁用','普通登录'),(24,'test433','111111','13308045314','w985z@wfpzmz.com','测试433','财务部','leader','禁用','普通登录'),(25,'test290','111111','13637775379','958b943m@ekperfrh.com','测试290','产品部','admin','正常','普通登录'),(26,'test866','111111','15062275324','noizd@igyipn.com','测试866','人事部','jones','正常','普通登录'),(29,'test659','111111','16318481692','g9zgke3@prws.com','测试659','人事部','leader','正常','普通登录'),(30,'user294','111111','13923522483','xdz06gi7qk@yaooiy.com','用户294','产品部','leader','禁用','普通登录'),(31,'user876','111111','17032202536','dj9be@kykhkdg.com','用户876','产品部','leader','禁用','普通登录'),(35,'test331','111111','16588826122','yr1vmy0@azzyuc.com','测试331','技术部','leader','正常','普通登录'),(37,'charlie24','111111','14155658153','m2pe464umo@hrodpwuz.com','查理24','产品部','brown','正常','普通登录'),(38,'test377','111111','15901297006','g86cgpc@ciglvs.com','测试377','产品部','admin','禁用','普通登录'),(39,'user735','111111','18013292878','5m6sqccos0@hvsg.com','用户735','人事部','admin','禁用','普通登录'),(40,'test396','111111','15096629985','zlyl8a1@jggzhcml.com','测试396','运营部','garcia','正常','普通登录'),(41,'user160','111111','13023355095','kqieu@nwvu.com','用户160','财务部','brown','正常','普通登录'),(42,'test833','111111','13125831774','8psa6iah@bayfqyh.com','测试833','人事部','admin','禁用','普通登录'),(44,'test806','111111','13490593847','w2n7g@uzpliqtg.com','测试806','运营部','leader','正常','普通登录'),(47,'test576','111111','14835257935','gbpb5bh9@shjxscy.com','测试576','运营部','leader','正常','普通登录'),(49,'user346','111111','18004867959','5erm55e@msbqe.com','用户346','财务部','admin','禁用','普通登录'),(58,'test392','111111','13559886173','u9yb3gjjx@mvzwmjx.com','测试392','产品部','leader','禁用','普通登录'),(59,'test999','111111','17877187317','4om66k@xiwww.com','测试999','技术部','admin','正常','普通登录'),(61,'test695','111111','19050204236','61smgft59@unby.com','测试695','人事部','admin','禁用','普通登录'),(62,'ivy78','111111','18724944813','mbwzac4@hcrebjb.com','艾薇78','技术部','leader','正常','普通登录'),(63,'david82','111111','15069888634','q8xyiq@xasn.com','大卫82','财务部','admin','禁用','普通登录'),(64,'test878','111111','19292324938','8m4vweidc@vexwmz.com','测试878','产品部','admin','正常','普通登录'),(65,'user929','111111','16999166770','gpsfu0srcx@crxrjy.com','用户929','运营部','admin','正常','普通登录'),(66,'test175','111111','14450139152','dxz03bzb@wbwid.com','测试175','技术部','miller','正常','普通登录'),(67,'ivy14','111111','19588824749','gxds7w5@oswcoe.com','艾薇14','财务部','garcia','禁用','普通登录'),(68,'emma74','111111','13051194087','fp0phbn@udxtupcm.com','艾玛74','人事部','leader','正常','普通登录'),(69,'test327','111111','15467783927','378k4@ffun.com','测试327','财务部','leader','正常','普通登录'),(70,'grace89','111111','16364969488','nwr5m7@qctau.com','格蕾丝89','产品部','leader','正常','普通登录'),(71,'test216','111111','15016386238','6ihqtg2g@zowk.com','测试216','人事部','admin','禁用','普通登录'),(72,'user552','111111','17659257150','cvfj0f47@ykzah.com','用户552','产品部','admin','正常','普通登录'),(73,'ivy53','111111','17401345587','rnyi3@uoglha.com','艾薇53','人事部','leader','禁用','普通登录'),(75,'david48','111111','15803591071','ocgcrtd@pkhxebwl.com','大卫48','技术部','miller','正常','普通登录'),(76,'fdgsdgd','sdfgsdgf','19760306844','432423999@dfgdfg.com','sdfgsdfg','运营部','sdfgdfg','正常','普通登录'),(78,'egsr','segrgser','18354883864','gers799@qq.com','gesrgesrg','财务部','gerserg','正常','普通登录'),(79,'serg','esrgserg','18354883864','gers799@qq.com','ergserg','人事部','ergserg','正常','普通登录'),(80,'emma29','111111','16086291708','gt8k6e@ttytpu.com','艾玛29','人事部','garcia','正常','普通登录'),(83,'bob75','111111','18990075117','xuwrygxt@kayt.com','鲍勃75','运营部','smith','正常','普通登录'),(84,'test623','111111','18599824605','qlqlhahg@tltier.com','测试623','人事部','smith','正常','普通登录'),(85,'emma39','111111','15624516001','8yk1qn@jjycfqs.com','艾玛39','技术部','leader','禁用','普通登录'),(86,'user868','111111','18600411653','7paa527h2@sbswabc.com','用户868','运营部','admin','正常','普通登录'),(87,'user210','111111','15362190791','34qxjiv@aztzghd.com','用户210','产品部','jones','正常','普通登录'),(88,'user282','111111','16034223051','2arrglece3@jruvg.com','用户282','产品部','leader','正常','普通登录'),(89,'user721','111111','13996753087','gznr8m@cexzv.com','用户721','人事部','williams','正常','普通登录'),(90,'test410','111111','17557231707','xtnmt5t@tcmdev.com','测试410','财务部','johnson','正常','普通登录'),(91,'test538','111111','13192231053','sdybg2f@jddf.com','测试538','产品部','admin','正常','普通登录'),(92,'user764','111111','18800574246','0mtjhjt8d@guskyy.com','用户764','人事部','leader','禁用','普通登录'),(93,'test542','111111','19590383827','nj3c9wm08@unxwykcp.com','测试542','人事部','leader','禁用','普通登录'),(94,'test222','111111','14510736825','lzw5ekizux@vlcrcu.com','测试222','技术部','brown','正常','普通登录'),(96,'test562','111111','14530087568','z27ys7ze@whyii.com','测试562','财务部','williams','正常','普通登录'),(98,'test551','111111','16702177315','54x119k@poyegpqj.com','测试551','财务部','leader','正常','普通登录'),(99,'user164','111111','13024717386','2lvtjnc3@uxytta.com','用户164','产品部','leader','禁用','普通登录'),(101,'frank21','111111','13677867355','rs48o0@imvyr.com','弗兰克21','财务部','leader','正常','普通登录'),(102,'user739','111111','19714688812','hpfc08mmju@hymd.com','用户739','产品部','johnson','正常','普通登录'),(103,'test795','111111','18348641767','z0st9oyhp@eilnbh.com','测试795','财务部','admin','正常','普通登录'),(108,'frank20','111111','16302485873','gn5m871@jqnu.com','弗兰克20','人事部','jones','禁用','普通登录'),(109,'user669','111111','14400245154','7rwzhz0u2v@fecmn.com','用户669','财务部','johnson','正常','普通登录'),(112,'bob45','111111','13273153305','6ivhhj6uz3@nxteplj.com','鲍勃45','人事部','admin','正常','普通登录');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-01 11:38:40
