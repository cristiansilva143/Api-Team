var express = require('express');
var app = express();
var index = require('./routes/index');
var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use('/', index);

app.use((req, res, next) => {
  const error = new Error('Not found');
  error.status = 404;
  next(error);
})

app.use((error, req, res, next) => {
  res.status(error.status || 400);
  res.json({
      error: {
          message: error.message
      }
  });
});





app.listen(3000, function(){
    console.log('Aplicacion corriendo en el port 3000!!')
}) ;    



module.exports = app;