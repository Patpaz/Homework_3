var express = require('express');
var app = express();

var mysql = require('mysql')

app.get('/menu', show_menu);
function show_menu(req,res){
    var connection = mysql.createConnection({
        host: 'localhost',
        user: 'new_user',
        password: 'mapagi13',
        database: 'menu'
    });

    connection.connect();
    var my_Query = "select dish_id, name, price, created_date, modified_date from dishes; "

    connection.query(my_Query, function(error, results, fields){
        res.send(results);

        connection.end();
    });
}


app.listen(3000);



