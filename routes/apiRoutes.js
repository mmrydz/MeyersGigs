var db = require("../models");

module.exports = function(app) {
  // === Display JSON data for all users === do we want this??
  app.get("/api/users", function(req, res) {
    db.users.findAll({}).then(function(dbExamples) {
      res.json(dbUsers);
    });
  });
};
