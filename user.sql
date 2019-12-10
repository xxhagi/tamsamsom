use hanguler;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `inserted` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Jane','jane@abc.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2018-11-02 17:53:54',NULL),(2,'Mike','mike@def.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2018-11-03 17:54:45',NULL),(3,'Tom','tom@goo.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2018-11-04 17:55:04',NULL),(4,'Rob','rob@yaho.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2018-11-04 17:55:39',NULL),(9,'Kiehls','kiehls@ny.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2018-12-05 01:11:48',NULL);
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

-- Dump completed on 2018-12-05  1:21:59
