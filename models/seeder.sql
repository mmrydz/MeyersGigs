
-------------------------------------------------
-------------------------------------------------
-- Section Seeds the users_info table

INSERT INTO users_info (username, firstname, lastname, `password`)
VALUES ('wmcfall1','Will','McFall','23werf90');

INSERT INTO users_info (username, firstname, lastname, `password`)
VALUES ('mikejones','Mike','Jones','candiedyams');

INSERT INTO users_info (username, firstname, lastname, `password`)
VALUES ('steveirwin','Steven','Irwin','crocsandcrocs');

INSERT INTO users_info (username, firstname, lastname, `password`)
VALUES ('killerclown12','John','Gacy','killerclownin');

SELECT * FROM users_info;

-------------------------------------------------
-------------------------------------------------
-- Section Seeds the surveys_info table

INSERT INTO surveys_info (q1, q2 , q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20)
VALUES (1,3,4,5,1,3,4,5,3,4,5,3,1,2,2,2,1,2,3,4);

INSERT INTO surveys_info (q1, q2 , q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20)
VALUES (1,1,2,5,1,1,4,5,4,4,5,3,5,5,5,2,1,1,3,4);

INSERT INTO surveys_info (q1, q2 , q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20)
VALUES (1,3,1,1,1,3,2,3,3,1,3,1,1,2,2,2,1,2,1,1);

SELECT * FROM surveys_info;
