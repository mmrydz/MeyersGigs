var db = require("../models");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    db.users_info.findAll({}).then(function(dbExamples) {
      res.render("index", {});
    });
  });

var db = require("../models");

module.exports = function (app) {

  // updates users_info with survey results and personality, then redirects to /results
  app.put("/survey/:id", function (req, res) {
    db.users_info.update({
        quest1: req.body.quest1,
        quest2: req.body.quest2,
        quest3: req.body.quest3,
        quest4: req.body.quest4,
        quest5: req.body.quest5,
        quest6: req.body.quest6,
        quest7: req.body.quest7,
        quest8: req.body.quest8,
        quest9: req.body.quest9,
        quest10: req.body.quest10,
        quest11: req.body.quest11,
        quest12: req.body.quest12,
        quest13: req.body.quest13,
        quest14: req.body.quest14,
        quest15: req.body.quest15,
        quest16: req.body.quest16,
        quest17: req.body.quest17,
        quest18: req.body.quest18,
        quest19: req.body.quest19,
        quest20: req.body.quest20,
        personality: req.body.personality
    }, {
    where: req.params.id
    })
      .then(function() {
        res.json("/results");
      })
  })
};

  // posts the survey object to the server then renders the result handlebars page
  app.post("/survey/:id", function(req, res) {
    db.surveys_info.findAll({}).then(function(dbExamples) {
      res.render("result", console.log("User updated successfully"));
    });
  });

  // updates the user info table with personality type based on survey
  app.put("/users/:id", function(req, res) {
    db.users_info.findOne({}).then(function() {
      res.render("survey", console.log("User updated successfully"));
    });
  });

  // get results data from server where user personality type is specific value
  app.get("/results/:id", function(req, res) {
    db.types_info
      .findAll({ where: {personality: req.params.id}})
      .then(function(dbExample) {
        var object = {results : dbExample};
        console.log(object);
        return res.render("result", object);
      });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
