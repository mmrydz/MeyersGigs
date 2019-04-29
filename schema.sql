DROP DATABASE IF EXISTS meyers_gigs_db;
CREATE DATABASE meyers_gigs_db DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE meyers_gigs_db;

CREATE TABLE users_info(
   `id` INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
   `username` VARCHAR(100),
   `password` VARCHAR(255),
   `personality` VARCHAR(255),
   PRIMARY KEY(id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;