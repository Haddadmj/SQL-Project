-- creating store database
create database store;

-- creating tables (countries,products,users,orders,order_products) in store database
use store;
create table countries(
code int primary key,
name varchar(20) unique,
continent_name varchar(20) not null
);

create table users(
id int primary key,
full_name varchar(20),
email varchar(20) unique,
gender char(1) check(gender='M' or gender='F'),
date_of_birth varchar(15),
created_at datetime,
country_code int,
foreign key (country_code) references countries(code)
);

create table orders(
id int primary key,
user_id int,
status varchar(6) check(status="start" or status="finish"),
created_at datetime,
foreign key (user_id) references users(id)
);

create table products(
id int primary key,
name varchar(10) not null,
price int default 0,
status varchar(10) check(status="valid" or status="expired"),
created_at datetime
);

create table order_products(
order_id int,
product_id int,
quantity int default 0,
constraint primary key(order_id,product_id),
foreign key(order_id) references orders(id),
foreign key(product_id) references products(id)
);

-- Inserting Rows into tables

use store;

insert into countries values (1,"Saudi Arabia","Asia") , (2,"Japan","Asia"), (3,"USA","North America");

insert into users values (1,"Mohammad Al-Haddad","moh@gmail.com",'M',"06/08/1996",now(),1),
(2,"Jackie","jackie@gmail.com",'M',"01/05/2005",now(),2),
(3,"Jade","jade@gmail.com",'F',"03/02/1985",now(),2),
(4,"David","dave@gmail.com",'M',"09/07/1999",now(),3);

insert into products values (1,"Bread",100,"valid",now()),
(2,"Layz",10,"expired",now()),
(3,"Lolipop",15,"valid",now()),
(4,"Fish",50,"valid",now());

insert into orders values (1,1,"start",now()),
(2,2,"finish",now()),
(3,2,"finish",now()),
(4,3,"start",now());

insert into order_products values (1,1,10),(2,2,100),(3,4,25);

update countries
set name = "Canada" where code = 3;

delete from products where id=3;