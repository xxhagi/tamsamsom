module.exports = function(app, conn){
  var express = require('express');
  var router = express.Router();
  var md5 = require('md5');

  /* Login */
  router.get('/login', (req, res) => {
    res.render('account/login', {});
  });

  router.post('/login', (req, res) => {
    var email = req.body.email;
    var password = req.body.password;

    /* Check duplicate */
    var sql = 'SELECT * FROM user WHERE email = ?'
    conn.query(sql, [email], function(err, result, fields){
      if (err) {
        console.log(err);
        res.status(500).send('Internal Server Error: ' + err);
      } else {
        if (result.length != 1) {
          res.status(500).send('Non exist user');
        } else {
          /* Password match */
          if (md5(password) != result[0].password) {
            res.status(500).send('Incorrect password');
          } else {
            req.session.user = {
              'email': result[0].email,
              'isAdmin': result[0].is_admin
            }
            res.redirect('/');
          }
        }
      }
    });
  });

  /* Logout */
  router.get('/logout', (req, res) => {
    var sess = req.session;
    if(sess.user){
      req.session.destroy(function(err){
        if (err){
          console.log(err);
        } else {
          res.redirect('/');
        }
      });
    }
    res.redirect('/');
  });

  /* Sign Up: GET */
  router.get('/signup', (req, res) => {
    res.render('account/signup', {});
  });

  /* Sign Up: POST */
  router.post('/signup', (req, res) => {
    var email = req.body.email;
    var username = req.body.username;
    var password = req.body.password;

    /* Check duplicate */
    var sql = 'SELECT COUNT(*) as cnt FROM user WHERE email = ?'
    conn.query(sql, [email], function(err, result, fields){
      if (err) {
        console.log(err);
        res.status(500).send('Internal Server Error: ' + err);

      } else if (result[0].cnt > 0) {
        console.log(err);
        res.status(500).send('Duplicated email: ' + email);

      } else {
        /* password hash */
        var hashed_password = md5(password);

        var sql = 'INSERT INTO user (`username`, `email`, `password`, `inserted`) VALUES (?, ?, ?, now())';
        conn.query(sql, [username, email, hashed_password], function(err, result, fields){

          if(err){
            console.log(err);
            res.status(500).send('Internal Server Error: ' + err);

          } else {
            var sql = 'SELECT * from user WHERE id = ?';
            conn.query(sql, [result.insertId], function(err, users, fields){
              if(err) {
                console.log(err);
                res.status(500).send('Internal Server Error');
              }

              res.render('account/signup_done', {
                user: users[0]
              });
            });
          }
        });
      }
    });
  });


  return router;
};
