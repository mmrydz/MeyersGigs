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
  app.put("/survey", function(req, res) {
    db.Users.update(
      {
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
        quest20: req.body.quest20
      },
      {
        where: { id: results.dataValues.id }
      }
    ).then(function() {
      res.redirect("/results");
    });
  });
  // Load survey page and pass in user_info
  // The user's personality type is determined as follows:
  // 1. If total score for questions 1-5 <= 13, then their first letter is I.  If the total score is  > 13 , E.
  //    Append that letter to the ‘personality’ string in users.
  // 2. If total score for questions 6-10 <= 13, then their first letter is N.  If the total score is  > 13 , S.
  //    Append that letter to the ‘personality’ string in userss.
  // 3. If total score for questions 11-15 <= 13, then their first letter is F.  If the total score is  > 13 , T.
  //    Append that letter to the ‘personality’ string in users.
  // 4. If total score for questions 16-20 <= 13, then their first letter is J.  If the total score is  > 13 , P.
  //    Append that letter to the ‘personality’ string in users.
  app.get("/survey", function(req, res) {
    res.render("survey");
  });

  // update user data with personality field from server and redirect to result/userspersonality
  app.put("/survey/:id", function(req, res) {
    db.Users
      .update(
        { personality: req.body.personality },
        { where: { id: req.params.id } }
      )
      .then(function() {
        res.redirect("result/" + req.body.personality);
      });
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
