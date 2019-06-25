var promise = require('bluebird'); 
//maneja lsa promesas de la 
var express = require ('express');
const format = require('string-format');
var bodyParser = require('body-parser');


var options = {
  promiseLib: promise // Initialization Options
};

//declaro el path de conecxion a la Base de postgresSql//
var pgp = require('pg-promise')(options);
var connectionString = 'postgres://postgres:1234@localhost:5432/prueba';
var db = pgp(connectionString);

function getAllEquipo(req, res, next) {
  db.any('select * from "tb_equipo"')
    .then(function (data) {
      res.status(200)
        .json({
          data: data,
          message: 'TODOS LOS EQUIPOS'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

function getSingleEquipo(req, res, next) {
    var id_equipo = parseInt(req.params.id_equipo);
    db.one('select * from "tb_equipo" where id_equipo = $1',id_equipo)
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'recupera un equipo'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

function createEquipo(req, res, next) {
    console.log(req.query);
  debugger;
//  var query = format("insert into \"tb_equipo\" (id_equipo,pais_id,equipo) values ({id_equipo},{pais_id},'{equipo}')", req.body)
0
  db.one('INSERT INTO  \"tb_equipo\" (pais_id,equipo) VALUES ($1, $2) RETURNING id_equipo', [req.body.pais_id, req.body.equipo])
  .then(data => {
      console.log(data.id_equipo); // print new user id;
      var equipo = req.body;
      equipo.id_equipo = data.id_equipo;
      res.status(200)
    
        .json(equipo);
    })
  .catch(error => {
      console.log('ERROR:', error); // print error;
  });
  }
//////////////////////////////////////////


/////////////////////////////////////////
function updateEquipo(req, res, next) {
  console.log(req.query);
  debugger;
  db.none('update "tb_equipo" set equipo=$1 where id_equipo=$2',[req.body.equipo, parseInt(req.body.id_equipo)])
  
    .then(function () {
      
      res.status(200)
        .json({
          //status: 'success',
                   
          message: 'Actualizado EQUIPO'
        });
    })
    .catch(function (err) {
      return next(err);
    })
}


function deleteEquipo(req, res, next) {
  var id_equipo = parseInt(req.params.id_equipo);
  db.result('delete from "tb_equipo" where id_equipo = $1', id_equipo)
    .then(function (result) {
      res.status(200)
        .json({
          status: 'success',
          message: `Removed ${result.rowCount} EQUIPO`
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

/////////////
// Exports
/////////////

module.exports = {
  getAllEquipo: getAllEquipo,
  getSingleEquipo: getSingleEquipo,
  createEquipo: createEquipo,
  updateEquipo: updateEquipo,
  deleteEquipo: deleteEquipo
};

