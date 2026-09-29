create database  salesdatadb;

use salesdatadb;

select * from samplesuperstore;

select ROUND (SUM(sales),2) as total_sales
from dbo.salesdata ;

select
SUM(sales)as total_sales
from dbo.salesdata;

select
ROUND(sum(sales),2) as total_sales
from dbo.salesdata ;

select
order_id,
order_date,




customer_name,
category,
sales,
profit
from dbo.salesdata ;

select 
SUM(quantity) as total_quantity
from dbo.salesdata ;

select
ROUND(sum(profit),2) as total_profit
from dbo.salesdata ;

select top 10 *
from samplesuperstore ;


select
SUM(sales) as total_sales,
SUM(profit) as total_profit,
sum(quantity) as total_quantity,
AVG(sales ) as aveage_sales
from dbo.salesdata ;

--task-2 Find all orders where Sales is greater than 500.


select *
from samplesuperstore
where sales >500 ;


---task-3 Find all products where Profit is negative--
select *
from samplesuperstore
where profit <= 700 ;


---task-3 Find all orders belonging to the Consumer segment.

select *
from samplesuperstore
where segment = 'customer ';

--task - 4 Find all orders where Discount is greater than 0.20.
select *
from samplesuperstore
where discount > 0.20 ;


---task-5 Display all orders from the Technology category.

select *
from samplesuperstore 
where category = 'technology ' ;

---task-6 Find all records from the West region.

select *
from samplesuperstore
where region = 'west';


--task-7 Find all products where Profit is negative.
select *
from samplesuperstore 
where profit <0 ;

--task-8 Display products whose name contains the word Chair.
select  *
from samplesuperstore 
where product_name like '%chair%';


--task 9 Display orders shipped using First Class.

select *
from samplesuperstore
where ship_mode = 'frist class ';



---Level 2 — Sorting & DISTINCT--

--task-11 Display the 20 highest-sales orders.


select*
top 20 from samplesuperstore;


--task-12 Display all unique--

select
category,
sub_category,
segment,
region
from samplesuperstore ;

--task-13 Display products sorted by Sales from highest to lowest.

select *
from samplesuperstore
order by sales desc ;


--task-14 Display products sorted by Profit from lowest to highest.

select *
from samplesuperstore
order by profit desc ;


--tas-15 Display the orders with the highest discount.

select
* from samplesuperstore
order by discount desc ;


--task-16 Display the 20 highest-sales orders.

select  top 20 *
from samplesuperstore ;

--task-17 Display the orders with the highest discount.

select *
from samplesuperstore
where discount = (select max(discount) from samplesuperstore) ;

--task-18 Display the 10 most expensive individual sales transactions.

select top 10*
from samplesuperstore
order by sales desc ;

--Level 3 — Aggregate Functions--

19--Find the total sales.

select
SUM(sales) as total_sales
from samplesuperstore ;

--20 Find the total profit.
select
SUM(profit) as total_profit
from samplesuperstore ;

--21 Find the average sales.
select
AVG(sales) as average_sales
from samplesuperstore ;

--22 find the average profit--
select
AVG(profit) as avreage_profit
from samplesuperstore ;

--23 Find the minimum and maximum sales.

select
MAX(sales) as highest_sales
from samplesuperstore ;

select
MIN(sales) as lowest_sales
from samplesuperstore ;

--24 find the minimum and maximum profit
select
MAX(profit) as highest_profit
from samplesuperstore ;

select
MIN(profit) as lowest_profit
from samplesuperstore ;


--25 Count the total number of records.

select
count(*) as total_records
from samplesuperstore ;


--26 Find the total quantity sold.

select
sum(quantity) as total_quantity
from samplesuperstore ;

27--Count the number of unique customers.

select
count(*) as total_customer
from samplesuperstore ;

--28 Count the number of unique products.

select
count(*) as total_products
from samplesuperstore ;

--Level 4 — GROUP BY--

--task-29 Find total sales by category.

select
category,
sum(sales) as total_sales
from samplesuperstore
group by category ;

---30 Find total profit by category.

select
category,
sum(profit) as total_profit
from samplesuperstore
group by category ;

--31 Find average sales by category.

select
category,
AVG(sales) as average_sales
from samplesuperstore
group by category ;

--32 
group by category ;
 


























