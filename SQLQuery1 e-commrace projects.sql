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


