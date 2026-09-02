create database sales_transactionsdb;

use sales_transactionsdb;

--primary key = not null and always unique

create table customers(
transaction_id int primary key,
customer_name varchar(50),
product_name varchar(50),
category varchar(50),
quantity int,unit_price int,
discount_percent int,
city varchar(50),
payment_mode varchar(30),
salesperson varchar(50),
customer_type varchar(30)
);


insert into customers(transaction_id,customer_name,product_name,category,quantity,unit_price,discount_percent,city,payment_mode,
salesperson,customer_type)

values

(1001, 'aarav mehta','laptop pro 15','electronics',2,75000,10,'ahmedabad','online','rahul','premium'),
(1002, 'priya shah','office chair','furniture',5,12000,8,'mumbai','card','neha','regular'),
(1003, 'rohan patel','smartphone x','electronics',3,45000,12,'ahmedabad','upi','amit','premium'),
(1004,  'sneha verma','refrigerator','appliances',1,68000,15,'delhi','card','priya','vip'),
(1005,  'karan joshi','dining table','furniture',4,18000,5,'pune','cash','rahul','regular'),
(1006,'ananya rao','laptop air 14','electronics',1,62000,7,'bangalore','online','neha','premium'),
(1007,'vikram singh','washing machine','appliances',2,42000,18,'jaipur','upi','amit','regular'),
(1008,'meera kapoor','smart phone pro','electronics',4,55000,20,'mumbai','card','priya','vip'),
(1009,'aditya shah','sofa set','furniture',3,35000,10,'ahmedabad','online','rahul','premium'),
(1010,'ishita patel','air conditioner','appliances',2,58000,12,'surat','upi','neha','premium'),
(1011,'raj malhotra','gaming laptop','electronics',2,95000,15,'delhi','card','amit','vip'),
(1012,'kavya desai','bookshelf','furniture',6,9000,5,'pune','cash','priya','regular'),
(1013,'arjun mehta','smart tv','electronics',2,72000,18,'bangalore','online','rahul','premium'),
(1014,'nisha sharma','microwave oven','appliances',3,22000,8,'ahmedabad','upi','neha','regular'),
(1015,'yash patel','refrigerator pro','appliances',1,82000,20,'mumbai','card','amit','vip'),
(1016,'simiran kaur','office desk','furniture',5,16000,12,'delhi','online','priya','regular'),
(1017,'dev kumar','smart phone ultra','electronics',3,68000,10,'jaipur','upi','rahul','premium'),
(1018,'riya shah','washing machine pro','appliances',4,48000,22,'surat','card','neha','premium'),
(1019,'manav joshi','premium sofa', 'furniture',2,65000,15,'ahmedabad','online','amit','vip'),
(1020,'pooja mehta','tablet pro','electronices',5,32000,8,'pune','upi','priya','regular'),
(1021,'harsh verma','laptop ultra','electronices',3,88000,25,'mumbai','card','rahul','vip'),
(1022,'neel shah','air conditioner pro','appliances',2,76000,10,'delhi','online','neha','premium'),
(1023,'tanvi rao','dining set','furniture',4,28000,18,'bangalore','cash','amit','premium'),
(1024,'siddarth patel','smart tv pro','electronices',6,60000,12,'surat','upi','priya','premium'),
(1025,'aisha khan','doblue dore refrigerator','appliances',2,92000,20,'ahmedabad','card','rahul','vip'),
(1026,'mohit singh','executive chair','furniture',7,14000,10,'jaipur','online','neha','regular'),
(1027,'diya mehta','gaming monitor','electronices',3,52000,15,'delhi','upi','amit','premium'),
(1028,'varun shah','washing machine','appliances',5,38000,28,'mumbai','cash','priya','regular'),
(1029,'isha patel','laxury sofa','furniture',3,78000,12,'pune','card','rahul','vip'),
(1030,'dhruv sharma','business laptop','electronices',2,110000,18,'bangalore','online','neha','vip');



select *
from customers


--task 1 transaction analysis 

select * from customers
order by unit_price desc,
quantity desc;


---task 2 high value tranctions--
select  customer_name,product_name,category,quantity,unit_price,city
from customers
where unit_price >50000 and quantity >1;


task-3 premium customer tranctions

select * from customers
where unit_price > 25000
order by unit_price desc;

tas-4 discount analysis

select * from customers
where discount_percent >15 and quantity >2 ;

task-5 city level sales analysis
select customer_name,product_name,category,quantity,unit_price,city from customers
where city in ('ahmedabad','mumbai','delhi') and unit_price >20000;

task-6 payment behaviour analysis
select customer_name,product_name,quantity,unit_price,city from customers
where payment_mode in ('online', 'card') and unit_price>15000 and quantity >2;


task-7 category analysis
select * from customers
where category in ('electronics','furniture', 'appliances')
and discount_percent <10 ;

task-8 customer segment analysis
select customer_name, customer_type, product_name, quantity, unit_price from customers
where unit_price > 30000 and quantity >1 
order by unit_price desc;

task-9 sales person tranctions analysis
select * from customers
where quantity>4  and discount_percent<20
order by quantity desc;

task-10 high quantity vs high price
--high quantity--
select transaction_id,customer_name,product_name,quantity,unit_price, category from customers
where quantity >5 and unit_price >10000;
--high price--
select transaction_id,customer_name,product_name,quantity,unit_price, category from customers
where quantity between 2 and 5 and unit_price >50000;


task 11 international city analysis
select * from customers
where quantity>2 and unit_price>20000 and not payment_mode ='cash'
order by unit_price desc;

task 12 premium electonices analysis
select customer_name,product_name,quantity,unit_price,discount_percent,customer_type from customers
where category = 'electronics' and unit_price>40000 and quantity>1 and discount_percent<15
order by unit_price desc;

task 13 furniture sales analysis

select customer_name, product_name, quantity, unit_price , discount_percent,city
 from customers
where quantity >3 and unit_price >25000
order by quantity desc;


task-14 customer type & payment analysis
select * from customers
where not payment_mode = 'cash'and customer_type = 'premimu'and quantity >1 and unit_price > 20000
order by unit_price desc;


task-15 discount high value sales
select customer_name, product_name, category, unit_price,discount_percent,payment_mode
from customers
where not payment_mode = 'cash'and  unit_price > 50000 and discount_percent > 10
order by discount_percent desc;


task 16 multiple business conditions

select* from customers
where category = 'electronics' and quantity>2 and discount_percent<15
order by unit_price desc;
select * from customers
where category = 'furniture'and quantity>3 and unit_price>20000
order by unit_price desc;
select*  from customers
where category = 'appliances'and unit_price>40000
order by unit_price desc;


task-17 customer purchse priority
select customer_name, customer_type, product_name, quantity,unit_price, city, payment_mode from customers
where customer_type in ('premium','vip')and not city = 'ahmedabad' and quantity>3 and unit_price>60000
order by unit_price desc;


---task-18 sales risk analysis
select * from customers
where discount_percent>20 and quantity>2
and unit_price<50000
and payment_mode<>'cash'
and city<>'mumbai'
order by discount_percent desc;

task-19 managment sales report
select transaction_id,customer_name,product_name,category,quantity,unit_price,discount_percent,customer_type,payment_mode,
city, salesperson from customers
where payment_mode<>'cash' and category = 'electronics'and customer_type = 'premium' and
unit_price >40000 or customer_type = 'vip'
and unit_price >50000
or category = 'regular'and quantity>5 and
unit_price>10000
order by unit_price desc;


