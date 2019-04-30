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

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
