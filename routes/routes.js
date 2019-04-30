var db = require("../models");

module.exports = function (app) {
  // Load index page
  app.get("/", function (req, res) {
    db.users_info.findAll({}).then(function () {
      res.render("index", {});
    });
  });

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
      .then(function () {
        res.json("/results");
      })
  })
};
