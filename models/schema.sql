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

-- Section Creates user_info Table 

USE meyers_gigs_db;

CREATE TABLE users_info(
    id INT NOT NULL AUTO_INCREMENT UNIQUE,
    uuid char(36),
   username VARCHAR(255) NOT NULL,
   firstname VARCHAR(255) NOT NULL,
   lastname VARCHAR(255) NOT NULL,
   `password` VARCHAR(255) NOT NULL,
   personality VARCHAR(255),
   PRIMARY KEY(id)
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
