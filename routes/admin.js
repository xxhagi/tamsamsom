module.exports = function(app, conn, upload) {
  var express = require('express');
  var router = express.Router();

  var OnlyAdminMiddleware = function(req, res, next) {
    if (!req.session.user || req.session.user['isAdmin'] != 1) {
      return res.sendStatus(503); // 'Service Unavailable'
    }
    next();
  }

  /* User List */
  router.get('/', OnlyAdminMiddleware, (req, res) => {

    var sql = "SELECT * FROM user";
    var sqlParam = []

    conn.query(sql, sqlParam, function(err, userList, fields){
      if(err){
        res.status(500).send('Internal Server Error: ' + err);
      } else {
        res.render('admin/index', {
          users: userList
        });
      }
    });
  });

  return router;
};
