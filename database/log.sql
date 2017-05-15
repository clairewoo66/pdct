CREATE TABLE `t_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operatorId` int(11) NOT NULL,
  `operatorName` varchar(64) NOT NULL,
  `method` varchar(1024) DEFAULT NULL,
  `message` varchar(2048) DEFAULT NULL,
  `operateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
