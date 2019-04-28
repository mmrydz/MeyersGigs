var db = require("../models");

module.exports = function(app) {
    // === Display JSON data for all users === do we want this??
  app.get("/api/users_info", function(req, res) {
    db.users_info.findAll({}).then(function(dbExamples) {
      res.json(dbUsers_info);
    });
  });
};
