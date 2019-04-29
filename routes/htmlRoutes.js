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
      db.users_info
        .findOne({
          where: { username: username, password: password }
        })
        .then(function(results) {
          console.log(results);
          if (results.length > 0) {
            req.session.loggedin = true;
            req.session.username = username;
            res.redirect("survey");
          } else {
            response.send("Incorrect Username and/or Password!");
          }
          res.end();
        });
    } else {
      response.send("Please enter Username and Password!");
      response.end();
    }
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
    db.users_info.findAll({}).then(function(dbExamples) {
      res.render("survey", {
        msg: "The Personality Test!",
        examples: dbExamples
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
