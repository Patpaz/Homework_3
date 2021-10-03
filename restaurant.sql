create database menu;
use menu;

create table dishes (
    dish_id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    price float,
    created_date datetime,
    modified_date datetime,
    PRIMARY KEY (dish_id)
);
insert into dishes (name, price, created_date, modified_date) 
values ('Lomo saltado', 14.50, now(), now());

insert into dishes (name, price, created_date, modified_date) 
values ('Aji de gallinao', 12.00, now(), now());

insert into dishes (name, price, created_date, modified_date) 
values ('Arroz con pollo', 14.00, now(), now());

insert into dishes (name, price, created_date, modified_date) 
values ('Chaufa de pollo', 11.50, now(), now());

select dish_id, name, price, created_date, modified_date
from dishes;



