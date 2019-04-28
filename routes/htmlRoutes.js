var db = require("../models");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    db.Example.findAll({}).then(function(dbExamples) {
      res.render("index", {
        msg: "Welcome!",
        examples: dbExamples
      });
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
  app.get("/survey", function(req, res) {
    db.Example.findAll({}).then(function(dbExamples) {
      res.render("survey", {
        msg: "The Personality Test!",
        examples: dbExamples
      });
    });
  });

  // Load results page and pass in user_info with personality type updated
  app.get("/example/:id", function(req, res) {
    db.Example.findOne({ where: { id: req.params.id } }).then(function(
      dbExample
    ) {
      res.render("example", {
        example: dbExample
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
