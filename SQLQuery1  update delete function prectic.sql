create database products ;

use  products ;

create table products (
product_id int ,
product_name varchar(50),
price int );

insert products
values
(101, 'apple airpods',700 ),
(102, 'samsung tv', 1000),
(103, 'dell laptop',1500),
(104, 'sony camera',2000),
(105, 'adidas shoes', 600);

select *
from products;

update products
set price = 2000
where product_id = 103;

select *
from products;

delete from products
where product_id =104;

select *
from products;

select product_name,price
from products;

select * from 
products
where price >500;


