use  EcommerceProject;


select *
from dbo.Ecommerce ;

select top 10 *
from dbo.Ecommerce ;

select 
sum(sales) as total_sales
from dbo.Ecommerce ;

select
sum(profit) as total_profit
from dbo.Ecommerce ;

select
sum(quantity) as total_quantity
from dbo.Ecommerce ;


select
COUNT(distinct(OrderID))
from dbo.Ecommerce ;


select
sum(sales)/ COUNT(distinct(orderid)) as averageordervalue
from dbo.Ecommerce ;


--which category genertates highest sales
select
category,
sum(sales) as total_sales
from dbo.Ecommerce 
group by Category 
order by sum(sales) desc ;

--which category genrates highest profit --

select
category,
sum(profit) as total_profit
from dbo.Ecommerce
group by Category
order by sum(profit) desc ;


--which subcategory genrates highest sales--

select
subcategory,
sum(sales) as total_sales
from dbo.Ecommerce
group by SubCategory
order by total_sales desc ;


--which subcategory genrates lowest profit-- 

select
subcategory,
sum(profit) as total_profit
from dbo.Ecommerce
group by SubCategory
order by total_profit asc ;

--which customer genrates the highest sales--

select top 1 
customername,
sum(sales) as total_sales
from dbo.Ecommerce
group by CustomerName
order by total_sales desc ;


--which region generates highest sales--
select
region,
sum(sales) as total_sales
from dbo.Ecommerce
group by Region
order by total_sales desc ;

-- which region generates highest profit--
select
region,
sum(Profit) as total_profit
from dbo.Ecommerce
group by Region
order by total_profit desc ;

--highest sales segment--

select
segment,
sum(sales) as total_sales
from dbo.Ecommerce
group by Segment
order by total_sales desc ;

--which products genrates losses --

select
productname,
sum(profit) as total_profit
from dbo.Ecommerce
group by ProductName
having sum(profit) < 0
order by total_profit asc ;


select *
from dbo.Ecommerce
where Profit < 0 ;


--which customer genrates highest profit--

select top 1
customername,
sum(profit) as total_profit
from dbo.Ecommerce
group by CustomerName
order by total_profit desc ;

--highest profit segemnt--

select
segment,
sum(profit) as total_profit
from dbo.Ecommerce
group by Segment
order by total_profit desc ;

--highest sales state--

select
state,
sum(sales) as total_sales
from dbo.Ecommerce
group by State
order by total_sales desc ;

--which city genrates hightest sales--

select
city,
sum(sales) as total_sales
from dbo.Ecommerce
group by City
order by total_sales desc ;


--category with sales above 1 croce ;


select
category,
sum(sales) as total_sales
from dbo.Ecommerce
group by Category
having sum(sales) >10000000
order by total_sales desc ;


--which subcategory have profit grether then 10 lakh ?

select
subcategory,
sum(profit) as totalprofit
from dbo.Ecommerce
group by SubCategory
having sum(profit) > 1000000
order by totalprofit desc ;

--16 subcategory--

select
avg(categorysales) as averagecategorysales
from 
(
select 
category,
sum(sales) as categorysales
from dbo.Ecommerce
group by Category
)  as categorytotals ;



SELECT
    Category,
    SUM(Sales) AS TotalSales
FROM dbo.Ecommerce
GROUP BY Category
HAVING SUM(Sales) > 
(
    SELECT AVG(CategorySales)
    FROM
    (
        SELECT Category, SUM(Sales) AS CategorySales
        FROM dbo.Ecommerce
        GROUP BY Category
    ) AS CategoryTotals
)
ORDER BY TotalSales DESC;

--higest sales customer--

select
avg(customersales) as averagecustomersales
from
(
select
customername,
sum(sales) as customersales
from dbo.Ecommerce
group by CustomerName
) as customertotals ;






--highest sales --


select
customername,
sum(sales) as total_sales
from Orders
group by customername,
having  sum(sales) = (
select max(customer_sales)
from (
select sum(sales) as customer_sales
from Orders
GROUP BY CUSTOMERNAME) AS T
) ;



SELECT
    (customername),
    SUM(Sales) AS TotalSales
FROM dbo.Ecommerce
GROUP BY (CustomerName)
HAVING SUM(Sales) >
(
    SELECT AVG(CustomerSales)
    FROM
    (
        SELECT [CustomerName], SUM(Sales) AS CustomerSales
        FROM dbo.Ecommerce
        GROUP BY (CustomerName)
    ) AS CustomerTotals
)
ORDER BY TotalSales DESC;




SELECT TOP 2
CUSTOMERID,
SUM(Sales) AS TOTAL_SALES
FROM DBO.Ecommerce
GROUP BY CustomerID
ORDER BY TOTAL_SALES DESC ;


SELECT TOP 5 *
FROM DBO.Ecommerce ;


--CATEGORY WISE SALES--
SELECT
CATEGORY,
SUM(SALES) AS TOTAL_SALES
FROM DBO.Ecommerce
GROUP BY Category
ORDER BY TOTAL_SALES DESC ;






SELECT MAX(SALES) AS HIGHEST_SALES
FROM DBO.Ecommerce ;


--TOP 5 PRODUCTS BY SALES --

SELECT TOP 5
PRODUCTNAME,
SUM(SALES) AS TOTAL_SALES
FROM DBO.Ecommerce
GROUP BY PRODUCTNAME
ORDER BY TOTAL_SALES DESC ;


--TOP 5 CUSTOMERS BY PROFIT--


SELECT TOP 5
CUSTOMERNAME,
SUM(PROFIT) AS TOTAL_PROFIT
FROM DBO.Ecommerce
GROUP BY CustomerName
ORDER BY TOTAL_PROFIT DESC ;


---REGION WISE TOTAL PROFIT--

SELECT
REGION,
SUM(PROFIT) AS TOTAL_PROFIT
FROM DBO.Ecommerce
GROUP BY Region
ORDER BY TOTAL_PROFIT DESC ;


---SUBQURY AVERAGE SE ZYDA SALES ORDERS --

SELECT *
FROM DBO.Ecommerce
WHERE Sales > (
SELECT AVG(SALES)
FROM DBO.Ecommerce
) ;


---SUBQURY AVERAGE SE ZYDA PROFIT WALE SALES ORDERS--

SELECT *
FROM DBO.Ecommerce
WHERE Profit >(
SELECT AVG(PROFIT)
FROM DBO.Ecommerce
) ;

--CATEGORY AVEAGE SALES ORDERS --


select *
from dbo.Ecommerce as e 
where e.Sales> (
select avg(e2.sales)
from dbo.Ecommerce as e2
where e2.Category = e.Category ) ;

--above average profit orders --

select *
from dbo.Ecommerce as e
where e.Profit > (
select avg(e2.profit)
from dbo.Ecommerce as e2 
where e2.Category = e.Category ) ;


--customer wise total sales using ctc--


with customersales as (
select
customerid,
sum(sales) as total_sales
from dbo.Ecommerce
group by CustomerID
)

select*
from customersales
order by total_sales desc ;


---region by total sales usinf cte--

with regionsales as (
select
region,
sum(sales) as total_sales
from dbo.Ecommerce
group by Region
)

select *
 from regionsales
 order by regionsales desc ;


 --catrgory wise totalprofit---

 with categoryprofit as (
 select
 category,
 sum(profit) as total_profit
 from dbo.Ecommerce
 group by Category
 )

 select *
 from categoryprofit
 order by total_profit desc ;


 --top 5 profitable products---

 select top 5 
 productname,
 sum(profit) as total_profit
 from dbo.Ecommerce
 group by ProductName
 order by total_profit desc ;






