var express = require('express');
var app = express();

var mysql = require('mysql');

app.get('/menu', show_menu);

function show_menu(req,res){
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'utec',
        password: '1234567890',
        database: 'restaurant'
    });
   
    connection.connect();

    var my_Query = "select dish_id, name, price, created_date, modified_date from menu; "

    connection.query(my_Query, function(error, results, fields){
        res.send(results);
        connection.end();
    });
}

app.listen(3000);
