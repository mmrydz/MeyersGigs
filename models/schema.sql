DROP DATABASE IF EXISTS meyers_gigs_db;
CREATE DATABASE meyers_gigs_db DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE meyers_gigs_db;

CREATE TABLE users(
   `id` INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
   `username` VARCHAR(100),
   `password` VARCHAR(255),
   `personality` VARCHAR(255),
   PRIMARY KEY(id)
);
ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`username`, `password`) VALUES ('John', 'password123');

CREATE TABLE types_info(
    id INTEGER(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    personality VARCHAR(255),
    description TEXT(500),
    img_url TEXT(255),
    job_title_1 VARCHAR(255),
    job_title_2 VARCHAR(255),
    job_title_3 VARCHAR(255),
    job_title_1_img VARCHAR(255),
    job_title_2_img VARCHAR(255),
    job_title_3_img VARCHAR(255),
    job_title_1_url VARCHAR(255),
    job_title_2_url VARCHAR(255),
    job_title_3_url VARCHAR(255)
);

