module.exports = function(app, conn, upload) {
var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.render('myclass/list', {
    title: "Hanguler"
  });
});

return router;
};