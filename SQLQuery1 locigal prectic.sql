create database companyhb;
use companyhb;

create table sales (
employee_id int,
employee_name varchar(50),
department varchar (50),
salary int,
age int );

insert into sales
values
(1, 'amit','it',60000,28 ),
(2, 'sneha','hr',45000,25),
(3, 'raj','finance',70000,32),
(4,'simran','it',55000,27),
(5,'karan','marketing',40000,24);

select *
from sales ;

select *
from sales
where salary > 40000 ;

select *
from sales
where department = 'it';

select *
from sales
where salary between 25000 and 55000 ;

select employee_name
from sales
where employee_name = 'simran';

select top 3 *
from sales
order by salary desc;

select *
from sales
where not department = 'hr' ;

