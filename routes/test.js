module.exports = function(app, conn, upload) {
    var express = require('express');
    var router = express.Router();
    
    router.get('/', function(req, res, next) {
      res.render('test/test', {
        title: "Hanguler"
      });
    });
    
    return router;
    };