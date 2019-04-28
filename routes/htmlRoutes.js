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
