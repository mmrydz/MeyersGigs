
-------------------------------------------------
-------------------------------------------------
-- Section Seeds the users_info table

TRUNCATE TABLE users_info;

INSERT INTO users_info (username, firstname, lastname, `password`)
VALUES ('wmcfall1','Will','McFall','23werf90');

INSERT INTO users_info (username, firstname, lastname, `password`)
VALUES ('mikejones','Mike','Jones','candiedyams');

INSERT INTO users_info (username, firstname, lastname, `password`)
VALUES ('steveirwin','Steven','Irwin','crocsandcrocs');

INSERT INTO users_info (username, firstname, lastname, `password`)
VALUES ('killerclown12','John','Gacy','killerclownin');

SELECT * FROM users_info;