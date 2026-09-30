create database  salesdatadb;

use salesdatadb;

select * from dbo.samplesuperstore;

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
 

 --Level 1 — Basic SELECT & Filtering---
 --task-1 Display all records from the samplesuperstore table.--
 select * from dbo.samplesuperstore ;

 --task-2 Display only:

--Order_ID

-Order_Date--

Customer_Name

Category

Sales

Profit

--answer ---
select
order_id,
order_date,
customer_name,
category,
sales,
profit
from dbo.samplesuperstore ;

--task-3 Find all orders where Sales is greater than 500.
select *
from dbo.samplesuperstore 
where sales >500;

--task-4 Find all products where Profit is negative.--
select *
from dbo.samplesuperstore 
where profit < 0 ;

---task-5 Find all orders belonging to the Consumer segment.--
select*
from dbo.samplesuperstore 
where segment = 'consumer' ;

--task-6 Display all orders from the Technology category.--
select *
from dbo.samplesuperstore
where category = 'technology' ;

--task-7 Find all orders where Discount is greater than 0.20.--
select *
from dbo.samplesuperstore
where discount >0.20 ;


--task-8 Display orders shipped using First Class.--
select *
from dbo.samplesuperstore
where ship_mode = 'frist class' ;

--task-9 ind all records from the West region.--

select *
from dbo.samplesuperstore
where region = 'west' ;


--task-10 Display products whose name contains the word Chair.
select *
from dbo.samplesuperstore
where product_name like '%chair%' ; 


--Level 2 — Sorting & DISTINCT--

--task -11 Display the 20 highest-sales orders.
select top 20 *
from dbo.samplesuperstore
order by sales desc;

--task-12 Display the 20 orders with the lowest profit
select top  20 *
from dbo.samplesuperstore
order by profit asc ;

--task-13 Display all unique:
select
category,
sub_category,
segment,
region
from  dbo.samplesuperstore;

--task 14 Display products sorted by Sales from highest to lowest.
select *
from dbo.samplesuperstore
order by sales desc ;

--task-15 Display products sorted by Profit from lowest to highest.
select *
from dbo.samplesuperstore
order by profit asc ;


--task-16 Display customers alphabetically by Customer_Name.
select *
from dbo.samplesuperstore
order by customer_name asc ;


--task-17 Display the orders with the highest discount.
select *
from dbo.samplesuperstore
order by discount desc ;


--task-18 Display the 10 most expensive individual sales transactions
select top 10 *
from dbo.samplesuperstore
order by sales desc ;


--Level 3 — Aggregate Functions--
--task-19 Find the total sales.--
select
SUM(sales) as total_sales
 from dbo.samplesuperstore;

 --task-20 Find the total profit.

 select
 SUM(profit) as total_profit
 from dbo.samplesuperstore ;

 --task-21 Find the average sales.
 select
 AVG(sales) as averge_sales
 from dbo.samplesuperstore ;

 --task-22 find the avrege profit--
 select
 AVG(profit)as averge_profit
 from dbo.samplesuperstore ;

 --task-24Find the minimum and maximum sales.
 select
 MIN(SALES) AS LOWEST_SALES,
 MAX(SALES) AS HIGHEST_SALES
 FROM dbo.samplesuperstore ;

 --TASK-25 Find the minimum and maximum profit.
 select
 MIN(Profit) AS LOWEST_PROFIT,
 MAX(Profit) AS HIGHEST_PROFIT
 FROM dbo.samplesuperstore ;

 --TASK-25 Count the total number of records.


 SELECT
 COUNT(*) AS TOTAL_RECORDS
 FROM DBO.samplesuperstore;

 --TASK-26 Count the number of unique customers.
 SELECT
 COUNT(*) AS TOTAL_CUSTOMER
  FROM DBO.samplesuperstore;

  --TASK-27 Count the number of unique products.
  SELECT
  COUNT(*) AS TOTAL_PRODUCTS
  FROM DBO.samplesuperstore;

  --TASK-28 Find the total quantity sold.
  SELECT
  SUM(QUANTITY) AS TOTAL_QUANTITY
  FROM DBO.samplesuperstore ;


  --Level 4 — GROUP BY--

  --TASK-29 Find total sales by category.
  SELECT
  CATEGORY,
  SUM(SALES)AS TOTAL_SALES
  FROM DBO.samplesuperstore
  GROUP BY Category ;
  --TASK-30 Find total profit by category.
  SELECT
  CATEGORY,
  SUM(PROFIT) AS TOTAL_PROFIT
  FROM DBO.samplesuperstore
  GROUP BY Category ;

  --TASK-31 Find average sales by category.
  SELECT
  CATEGORY,
  AVG(SALES)AS AVEAGE_SALES
  FROM DBO.samplesuperstore
  GROUP BY Category ;

  --TASK 32 Find total sales by sub-category
  SELECT
  SUB_CATEGORY,
  SUM(SALES)AS TOTAL_SALES
  FROM DBO.samplesuperstore
  GROUP BY Sub_Category ;
  --TASK-33 Find total profit by sub-category.
  SELECT
  SUB_CATEGORY,
  SUM(PROFIT) AS TOTAL_PROFIT
  FROM DBO.samplesuperstore
  GROUP BY Sub_Category ;

  --TASK-34 Find total sales by region.
  SELECT
  Country_Region,
  SUM(SALES) AS TOTAL_SALES
  FROM DBO.samplesuperstore
  GROUP BY Country_Region ;

  --TASK-35 Find total profit by region.
  SELECT
  COUNTRY_REGION,
  SUM(PROFIT)AS TOTAL_PROFIT
  FROM DBO.samplesuperstore
  GROUP BY Country_Region ;

  --TASK-36 Find total sales by customer segment.
  SELECT
  SEGMENT,
  SUM(SALES) AS TOTAL_SALES
  FROM DBO.samplesuperstore
  GROUP BY Segment ;

  --TASK-37 Find total quantity sold by category.
  SELECT
  CATEGORY,
  SUM(QUANTITY) AS TOTAL_QUANTITY
  FROM DBO.samplesuperstore
  GROUP BY Category;

  --TASK-38 Find the number of orders for each ship mode.
  SELECT
  SHIP_MODE,
  COUNT(*) AS TOTAL_ORDERS
  FROM DBO.samplesuperstore
  GROUP BY SHIP_MODE ;

  --TASK-39 Find the number of customers in each segment.
  SELECT
  SEGMENT,
  COUNT(*) AS TOTAL_CUSTOMER
  FROM DBO.samplesuperstore
  GROUP BY Segment ;
  --TASK-40 Find total sales by state.
  SELECT
  COUNTRY_REGION,
  SUM(SALES)TOTAL_SALES
  FROM DBO.samplesuperstore
  GROUP BY COUNTRY_REGION ;

 -- Level 5 — HAVING---

41-- Find categories whose total sales are greater than 100,000.

SELECT
CATEGORY,
SUM(SALES)AS TOTAL_SALES
FROM DBO.samplesuperstore
GROUP BY Category
HAVING SUM( Sales) >100000;

--TASK-42 Find sub-categories whose total profit is greater than 10,000.
SELECT
SUB_CATEGORY,
SUM(PROFIT) AS TOTAL_PROFIT
FROM DBO.samplesuperstore
GROUP BY Sub_Category
HAVING SUM( Profit) > 10000;

--TASK-43 Find customers whose total sales exceed 5,000.
SELECT
CUSTOMER_NAME,
SUM(SALES) AS TOTAL_SALES
FROM DBO.samplesuperstore
GROUP BY CUSTOMER_NAME
HAVING SUM(SALES) >5000 ;

--TASK-44 Find states whose total sales exceed 50,000
SELECT
COUNTRY_REGION,
SUM(SALES) AS TOTAL_SALES
FROM DBO.samplesuperstore
GROUP BY Country_Region
HAVING SUM(SALES) > 50000 ;

--TASK-45 Find products whose total sales exceed 10,000.
SELECT
PRODUCT_NAME,
SUM(SALES) AS TOTAL_SALES
FROM DBO.samplesuperstore
GROUP BY PRODUCT_NAME
HAVING SUM(SALES)> 10000 ;

--TASK-46 Find categories having an average discount greater than 20%.
SELECT
CATEGORY,
AVG(DISCOUNT) AS AVERAGE_DISCOUNT
FROM DBO.samplesuperstore
GROUP BY Category
HAVING AVG(DISCOUNT) >0.20 ;

--TASK-47 Find customers who have placed more than 10 orders.
SELECT
CUSTOMER_NAME,
COUNT(*) AS ORDER_COUNT
FROM DBO.samplesuperstore
GROUP BY Customer_Name
HAVING COUNT(*) > 10 ;


--TASK-48 Find sub-categories with total profit below 0.
SELECT
SUB_CATEGORY,
SUM(PROFIT) AS TOTAL_PROFIT
FROM DBO.samplesuperstore
GROUP BY Sub_Category
HAVING SUM(PROFIT) < 0 ;

--Level 6 — CASE--

49 --Create a column called Profit_Status--
SELECT*,
CASE
 WHEN Profit > 0 THEN 'Profitable'  
  WHEN  Profit < 0  THEN  ' Loss  '
  ELSE 'NO PROFIT'
  END AS PROFIT_STATUS
  FROM DBO.SAMPLESUPERSTORE ;

  --TASK-50 Create a Sales_Category:--
  SELECT*,
  CASE
  WHEN SALES <100 THEN 'LOW'
  WHEN SALES BETWEEN 100 AND 500  THEN 'MEDIUM'
  WHEN SALES BETWEEN 501 AND 1000 THEN 'HIGH'
  WHEN SALES >1000 THEN 'VERY HIGH '
  END AS SALES_CATEGORY
  FROM DBO.samplesuperstore ;

  --TASK-51  Classify discounts into:

  SELECT *,
  CASE
  WHEN DISCOUNT  = 0 THEN 'NO DISCOUNT'
  WHEN DISCOUNT <=0.10 THEN 'LOW'
  WHEN DISCOUNT<=0.30 THEN 'MEDIUM'
  ELSE 'HIGH'
  END AS DISCOUNT_CATEGORY
  FROM DBO.samplesuperstore ;







  

 





























