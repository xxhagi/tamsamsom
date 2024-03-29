module.exports = function(app, conn, upload) {
    var express = require('express');
    var router = express.Router();
    

      router.get('/', (req, res, next) => {
        var sql = 'SELECT * FROM qna';
        conn.query(sql, [], function(err, qna, fields){
          if(err){
            console.log(err);
            res.status(500).send('Internal Server Error: ' + err);
          }
          else{
            res.render('qna/list', {
              'qna': qna
            })
          }
        })
      })
    
      router.get('/add', (req, res, next) => {
        res.render('qna/add')
      })
      router.post('/add', (req, res, next) => {
        var title = req.body.title;
        var text = req.body.text;
        var sql = 'INSERT INTO qna (`title`, `text`, `inserted`, `updated`) VALUES(?, ?, now(), now())';
        conn.query(sql, [title, text], function(err, result, fields){
          if(err){
            console.log(err);
            res.status(500).send('Internal Server Error: ' + err)
          }
          else{
            res.redirect('/qna/' + result.insertId);
          }
        })
      })
      router.get('/:id', (req, res, next) => {
        var id = req.params.id;
        var sql = 'SELECT * FROM qna WHERE id=?';
        conn.query(sql, [id], function(err, qnas, fields){
          if(err){
            console.log(err);
            res.status(500).send('Internal Server Error: ' + err);
          }
          else{
            res.render('qna/detail', {
              id:id,
              qna:qnas[0]
            })
          }
        })
      })
    
      router.get('/:id/edit', (req, res, next) => {
        var id = req.params.id;
        var sql = 'SELECT * FROM qna WHERE id=?';
        conn.query(sql, [id], function(err, qnas, fields){
          if(err){
              console.log(err);
              res.status(500).send('Internal Server Error: ' + err);
          }
          else{
            res.render('qna/edit', {
              qna: qnas[0]
            })
          }
        })
      })
    
      /* 수정 */
      router.post('/:id/edit', (req, res, next) => {
        var id = req.params.id;
        var title = req.body.title;
        var text = req.body.text;
        var sql = 'UPDATE qna SET `title` = ?, `text` = ?, `updated` = now() WHERE id=?';
        conn.query(sql, [title, text, id], function(err, result, fields){
          if(err){
            console.log(err);
            res.status(500).send('Internal Server Error: ' + err);
          }
          else{
            res.redirect('/qna/' + id)
          }
        })
      })
    
      
  /* Delete confirmation */
  router.get('/:id/delete', (req, res, next) => {
    var id = req.params.id;
    var sql = 'SELECT * FROM qna WHERE id=?';
    conn.query(sql, [id], function(err, news, fields){
      if(err){
        console.log(err);
        res.status(500).send('Internal Server Error: ' + err);
      } else {
        res.render('qna/delete', {news:news[0]});
      }
    });
  });

  /* DELETE DB row */
  router.post('/:id/delete', (req, res, next) => {
    var id = req.params.id;

    var sql = 'DELETE FROM qna WHERE id = ?';
    conn.query(sql, [id], function(err, result, fields){
      if(err){
        console.log(err);
        res.status(500).send('Internal Server Error: ' + err);
      } else {
        res.redirect('/qna/');
      }
    });
  });
    
      

      return router;
    };