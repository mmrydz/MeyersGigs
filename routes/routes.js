var db = require("../models");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    db.users_info.findAll({}).then(function(dbExamples) {
      res.render("index", {});
    });
  });

  // Load survey page and pass in user_info
  // The user's personality type is determined as follows:
  // 1. If total score for questions 1-5 <= 13, then their first letter is I.  If the total score is  > 13 , E.
  //    Append that letter to the ‘personality’ string in users_info.
  // 2. If total score for questions 6-10 <= 13, then their first letter is N.  If the total score is  > 13 , S.
  //    Append that letter to the ‘personality’ string in users_info.
  // 3. If total score for questions 11-15 <= 13, then their first letter is F.  If the total score is  > 13 , T.
  //    Append that letter to the ‘personality’ string in users_info.
  // 4. If total score for questions 16-20 <= 13, then their first letter is J.  If the total score is  > 13 , P.
  //    Append that letter to the ‘personality’ string in users_info.

  // posts the survey object to the server then renders the result handlebars page
  app.post("/survey/:id", function(req, res) {
    db.surveys_info.findAll({}).then(function(dbExamples) {
      res.render("result", console.log('User updated successfully'));
    });
  });

  // updates the user info table with personality type based on survey
  app.put("/users/:id", function(req, res) {
    db.users_info.findOne({}).then(function() {
      res.render("survey", console.log('User updated successfully'));
    });
  });

  // get results data from server where user personality type is specific value
  app.get("/results/:id", function(req, res) {
    db.types_info
      .findAll({ where: { id: req.params.id } })
      .then(function(dbExample) {
        res.render("result", {
          Personality: dbExample.personality,
          Description: dbExample.description,
          Celebrity: dbExample.img_url,
          Job1: dbExample.job_title_1,
          Job2: dbExample.job_title_2,
          Job3: dbExample.job_title_3
        });
      });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
