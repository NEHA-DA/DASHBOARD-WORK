create database  salesdatadb;

use salesdatadb;

select * from dbo.salesdata ;

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
from dbo.salesdata ;


select
SUM(sales) as total_sales,
SUM(profit) as total_profit,
sum(quantity) as total_quantity,
AVG(sales ) as aveage_sales
from dbo.salesdata ;



select *
from dbo.salesdata;
where sales >500 ;








