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
from customers ;


---task-1---- sales tractions summary
select
count(*) as total_transactions,
sum(quantity)as total_quantity_sold,
sum(quantity *unit_price)as total_sales_value,
avg(unit_price) as average_unit_price,
max(unit_price) as highest_unit_price,
min(unit_price)as lowest_unit_price
from customers ;

---task-2 category performance 
select
category,
count(*) number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity* unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
group by category
order by total_sales_value desc;


task-3 salesperson wise

select
salesperson,
count(*) as number_of_tranctions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
group by salesperson
order by total_sales_value desc ;


task-4 city wisw sales tractions---
select
city,
count(*) number_of_tranctions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
group by city
order by total_sales_value desc;


task-5 customer type 

select
customer_type,
count(*) as number_of_transactions,
sum(quantity) as total_quantity_purchased,
sum(quantity*unit_price)as total_sales_value,
avg(unit_price) as average_unit_price
from customers
group by customer_type
order by total_sales_value desc ;


task-6 payment type---

select
payment_mode,
count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price 
from customers
group by payment_mode
order by total_sales_value desc ;


task 7 high performance category--

select
category,
sum(quantity) as total_quantity_sold ,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
group by category
having sum(quantity*unit_price)>300000;



task-8 highperforming sales persons---
select
salesperson,
sum(quantity) as total_quantity_sold ,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
group by salesperson
having sum(quantity*unit_price)>500000
order by total_sales_value desc;



task-9 high value products---

select
product_name,
sum(quantity) as total_quantity_sold ,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
group by product_name
having sum(quantity)>5
order by total_quantity_sold desc;


task-10 premimum customer analusis

select
count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price 
from customers
where customer_type = 'premium'
having sum(quantity*unit_price)>200000;


task11 vip customer analysis--

select
salesperson,


where customer_type = 'vip'
group by salesperson
having sum(quantity*unit_price)>300000
order by total_sales_value desc;

task12 city and payment analysis

select
city,
count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price 
from customers
where payment_mode in ('online','card')
group by city
having sum(quantity*unit_price)>300000 ;


task-13 discount percentage analysis---

select
discount_percent,
count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price 
from customers
group by discount_percent
having count(*) >=2
order by discount_percent;


task14 electronice sales tranctions
select
salesperson,
count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price, 
max(unit_price) as highest_unit_price
from customers
where payment_mode = 'electronic'
group by salesperson
having sum(quantity*unit_price) >250000
order by total_sales_value desc;


task15  furniture analysis

select
city,
count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
where category = 'furniture'
and quantity>2
group by city
having SUM(quantity*unit_price) > 50000;


task-16 applicance sales analysis
select
salesperson,
count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
where category = 'appliance'
and payment_mode<> 'cash'
and discount_percent <20
group by salesperson
having SUM(quantity*unit_price) > 100000 ;



----task17----
select
customer_type,
count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
where customer_type in('premimu','vip')
group by customer_type
order by total_sales_value desc ;


 ask 18 — Salesperson Discount Analysis

 select
 salesperson,
 count(*) as number_of_transactions,
sum(quantity) as total_quantity_sold,
sum(quantity*unit_price) as total_sales_value,
avg(unit_price) as average_unit_price
from customers
where discount_percent >15
group by salesperson
having count(*) >=2;




















