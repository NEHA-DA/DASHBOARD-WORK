create database salesanalysisdb;

use companydb;
--primary key = not null and always unique


create table customers(
userid int primary key,
user_name  varchar(50),
age int,
country varchar (50),
amount_spend int);

insert into customers(id,user_name,age,country,amount_spend)
values

(1, 'malini',21, 'canada',50000),
(2, 'kavya',22,'india',30000),
(3,'dhuvi',23,'usa',25000),
(4,'neha',26,'uk',30000),
(5,'isha',29,'dubai',50000),
(6,'vidhi',27,'sigapure',80000),
(7,'garima',30,'china',50000),
(8,'nikita',25,'india',30000),
(9,'chetana',28,'india',25000),
(10,'krishna',21,'usa',50000),
(11,'mishva',23,'uk',20000),
(12,'devansh',24,'usa',30000),
(13,'mohit',23,'canada',20000),
(14,'krunal',29,'china',21000),
(15,'dhurv',28,'india',30000);

select *
from customers;

---task 5----
select USER_NAME,country,amount_spend
from customers;
---task 6----
select user_name, age,country
from customers;
---task7---
--filtering data using where--
--highvalue customers 7---
select* from customers
where amount_spend>=50000;

---task8----
select* from customers
where age<30;

---task9---
select* from customers
where country = 'india';

--task10---
select * from customers
where amount_spend<30000;

--task 11---

select* from customers
where age<30 and amount_spend>30000;

---task12---
select* from customers
where country = 'india' and amount_spend>20000;
--task 13---
select * from customers
where country = 'india'or amount_spend>20000;

---task14---
select * from customers
where (country ='india'
or country='uk')
and amount_spend>25000;

--task15---
select* from customers
where not country=
'india';
--task16---
select *
from customers
where country = 'india'
--order by amount_spend dec;
order by amount_spend asc;

---task17---
select *
from customers
order by amount_spend
desc;

--task18---
select userid,age,country,
amount_spend
from customers
order by age asc;

---task19---
select *
from customers
where age between 25 and 28
and amount_spend>20000
and (country = 'india'
or country = 'usa')
order by amount_spend
desc;

---task20---
select *
from customers
where age >=25 and amount_spend>20000 and country = 'usa'
order by amount_spend desc;


