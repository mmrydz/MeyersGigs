MeyersGigs
==========
Existing job search sites assume that users are aware of jobs that would fit their personality. However, there are many individuals who are unclear of what their personality type is and which jobs are best suited for their personality type.

Our user can go to our full stack web app, take a brief personality test, learn about their personality type and view jobs in their desired location that are appropriate for their personality type.

Our app uses Node and Express Web Server,a MySQL database with a Sequelize ORM, has GET and POST routes for retrieving and adding new data, is deployed using Heroku (with data), and uses Realize.js (for our presentation) as our new technology. The folder structure meets the MVC paradigm requirements, and the coding meets good quality standards. We utilize Handlebars for server-side templating. We utilize jobs data from Indeed.com, celebrity personality data from mbtidatabase.com, and information on personality testing from Wikipedia: https://en.wikipedia.org/wiki/Myers%E2%80%93Briggs_Type_Indicator. 

The Experience
--------------
Users arrive on the home page where they are given information about the site and prompted to sign up via a modal in order totake the personality test. They are then redirected to the survey page. Upon submitting the survey, they are redirected to a results page where their personality type is rendered and described, along with celebrities who share the type, careers that are typically compatible with the type, and nearby jobs for those careers.  

Requirements and Technologies Used
----------------------------------
Our app uses Node and Express Web Server,a MySQL database with a Sequelize ORM, has GET and POST routes for retrieving and adding new data, is deployed using Heroku (with data), and uses Realize.js (for our presentation) as our new technology. The folder structure meets the MVC paradigm requirements, and the coding meets good quality standards. We utilize Handlebars for server-side templating. We utilize data from Indeed.com and mbtidatabase.com. 

Installation
------------
npm install mysql mysql2 sequelize fs path env express express-handlebars

Deployment
------
The app is deployed via Heroku utilizing JawsDB to connect with mysql: https://meyersgigs.herokuapp.com/

Authors
-------
* Jared Cole-Lewis
* Ben Leone
* William McFall
* Meg Rydzewski

License
-------
This project is licensed under the MIT License - see the LICENSE.md file for details.
