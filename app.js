var express = require('express');
var app = express();
var index = require('./routes/index');
var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use('/', index);

app.use(function(err, req, res, next) {
    console.error(err.message); 
    if (!err.statusCode) err.statusCode = 400;

    res.status(err.statusCode).send(err.message); 
  });




app.listen(3000, function(){
    console.log('Aplicacion corriendo en el port 3000!!')
}) ;    



module.exports = app;