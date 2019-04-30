var db = require("../models");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    res.render("index");
  });

  //Login POST request
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
          res.redirect("/survey/" + results.dataValues.id);
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

  app.post("/signup", function(req, res) {
    var username = req.body.username;
    var password = req.body.password;
    var pwvfy = req.body.password_verify;
    console.log(username);
    console.log(password);
    console.log(pwvfy);
    if(username && password === pwvfy)
  })

  app.put("/survey/:id", function(req, res) {
    var userid = req.params.id;
    db.Users.update(
      {
        //fill personality body here
      },
      {
        where: { id: userid }
      }
    ).then(function() {
      res.redirect("/results");
    });
  });

  app.get("/survey/:id", function(req, res) {
    res.render("survey");
  });

  // get results data from server where user personality type is specific value
  app.get("/results/:id", function(req, res) {
    db.types_info
      .findAll({ where: { personality: req.params.id } })
      .then(function(dbExample) {
        var object = { results: dbExample };
        console.log(object);
        return res.render("result", object);
      });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
