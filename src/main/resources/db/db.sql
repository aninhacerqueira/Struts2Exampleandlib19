CREATE TABLE `contact_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contact_type` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `contacts` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PHONE_NUMBER` varchar(13) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) DEFAULT NULL,
  `user_gender` varchar(6) DEFAULT NULL,
  `user_country` varchar(20) DEFAULT NULL,
  `user_about_you` varchar(100) DEFAULT NULL,
  `user_mailing_list` char(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900