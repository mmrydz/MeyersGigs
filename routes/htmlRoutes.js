var db = require("../models");

module.exports = function(app) {
  app.get("/", function(req, res) {
    res.render("index");
  });

  app.get("/survey", function(req, res) {
    res.render("survey");
  });

  app.post("/auth", function(req, res) {
    var username = req.body.username;
    var password = req.body.password;
    console.log(username);
    console.log(password);
    if (username && password) {
      db.Users.findOne({
        where: { username: username, password: password }
      }).then(function(results) {
        console.log(results.dataValues);
        if (
          username === results.dataValues.username &&
          password === results.dataValues.password
        ) {
          res.redirect("/survey");
        } else {
          res.send("Incorrect Username and/or Password!");
        }
        res.end();
      });
    } else {
      res.send("Please enter Username and Password!");
      res.end();
    }
  });
};
