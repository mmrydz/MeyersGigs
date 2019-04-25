-------------------------------------------------
-------------------------------------------------
-- Section Documents the Structure of the Database

-- > meyers_gigs_db
------- > users_info
------- > surveys_info
------- > types_info
------- > jobs_info

-------------------------------------------------
-------------------------------------------------

-- Section Creates the Database

DROP DATABASE IF EXISTS meyers_gigs_db;
CREATE DATABASE meyers_gigs_db;

-------------------------------------------------
-------------------------------------------------

-- Section Creates the Datbase Tables

-- Section Creates users_info Table 

USE meyers_gigs_db;

CREATE TABLE users_info(
    id INT NOT NULL AUTO_INCREMENT UNIQUE,
    uuid VARCHAR(255),
   username VARCHAR(255) NOT NULL,
   firstname VARCHAR(255) NOT NULL,
   lastname VARCHAR(255) NOT NULL,
   `password` VARCHAR(255) NOT NULL,
   personality VARCHAR(255),
   PRIMARY KEY(id)
);

CREATE TABLE types_info(
    id INTEGER(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    personality VARCHAR(255),
    description TEXT(500),
    img_url TEXT(255),
    job_title_1 VARCHAR(255),
    job_title_2 VARCHAR(255),
    job_title_3 VARCHAR(255)
);

DELIMITER ;;
CREATE TRIGGER before_insert_users_info
BEFORE INSERT ON users_info
FOR EACH ROW
BEGIN
  IF new.uuid IS NULL THEN
    SET new.uuid = uuid();
  END IF;
END
;;


CREATE INDEX idx_uuid
ON users_info (uuid);

-- Section Creates surveys_info Table 

CREATE TABLE surveys_info(
    id INT NOT NULL AUTO_INCREMENT UNIQUE,
    uuid VARCHAR(255),
   q1 INT,
   q2 INT,
   q3 INT,
   q4 INT,
   q5 INT,
   q6 INT,
   q7 INT,
   q8 INT,
   q9 INT,
   q10 INT,
   q11 INT,
   q12 INT,
   q13 INT,
   q14 INT,
   q15 INT,
   q16 INT,
   q17 INT,
   q18 INT,
   q19 INT,
   q20 INT,
   PRIMARY KEY(id),
   FOREIGN KEY (uuid) REFERENCES users_info(uuid)
);
