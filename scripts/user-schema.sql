
/*!40000 DROP DATABASE IF EXISTS `usermanagement_tut`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `usermanagement_tut` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `usermanagement_tut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `comments` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `user` VALUES (1,'Bruce','Wayne','batman@gmail.com','9898989898','','active'),(2,'Clark','Kent','superman@gmail.com','9009009000','','active'),(3,'anil','kumar','anil.pict1@gmail.com','9836001893','Hi','removed');
