module.exports = function(app, conn, upload) {
    var express = require('express');
    var router = express.Router();
    
    router.get('/', function(req, res, next) {
      res.render('index', {
        title: "Hanguler"
      });
    });
    
    return router;
    };