var express = require('express');
var router = express.Router();
var db = require('../server/db');
var app = express();


app.get('/', function(req, res) {
    console.log('Path: '+__dirname);
    res.sendFile(__dirname + '/index.html');


    var itemId = req.params.id;
 
	res({
	    url: url+itemId,
	    json: false
	}, function (error, res, body) {
 
	    if (!error && res.statusCode === 200) {
	    	// Pintamos la respuesta JSON en navegador.
	        res.send(body) 
	    }
	})
});

//////////////////////
// Postgres queries
//////////////////////


router.get('/api/equipo', db.getAllEquipo);
router.get('/api/equipo/:id_equipo', db.getSingleEquipo);
router.post('/api/equipo', db.createEquipo);
router.put('/api/equipo/:id', db.updateEquipo);
router.delete('/api/equipo/:id', db.deleteEquipo);

module.exports = router;