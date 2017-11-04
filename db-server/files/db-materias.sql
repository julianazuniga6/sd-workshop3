DROP TABLE IF EXISTS `materia`;

CREATE TABLE `materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `profesor` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

LOCK TABLES `materia` WRITE;
INSERT INTO `materia` VALUES (1,'Sistemas distribuidos','Daniel Barrag�n'),(2,'Redes Convergentes','Juli�n Etayo'),(3,'Redes I','�lvaro Pach�n');
UNLOCK TABLES;

CREATE USER 'admin'@'192.168.0.26' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON * . * TO 'admin'@'192.168.0.26';
FLUSH PRIVILEGES;