create database restaurant;
use restaurant;

create table menu (
    dish_id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    price float,
    created_date datetime,
    modified_date datetime,
    PRIMARY KEY (dish_id)
);

insert into menu (dish_id, name, price, created_date, modified_date)
values (1, "Lomo saltado", 14.5, now(), now());

insert into menu (name, price, created_date, modified_date)
values ("Aji de gallina", 12, now(), now());

insert into menu (name, price, created_date, modified_date)
values ("Arroz con pollo", 14 , now(), now());

insert into menu (name, price, created_date, modified_date)
values ("Chaufa de pollo", 11.5, now(), now());

select dish_id, name, price, created_date, modified_date 
from menu;
