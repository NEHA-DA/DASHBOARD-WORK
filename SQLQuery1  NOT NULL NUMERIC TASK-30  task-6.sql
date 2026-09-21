
CREATE DATABASE SalesPractice;
GO

USE SalesPractice;
GO

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    Product VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Discount DECIMAL(10,2),
    OrderDate DATE,
    DeliveryDate DATE
);

INSERT INTO Orders VALUES
(1001, 101, 'Laptop',      2, 54999.75,  8500.50,  1500.00, '2026-01-05', '2026-01-10'),
(1002, 102, 'Mobile',      3, 18999.49, -1200.75, NULL,     '2026-01-12', '2026-01-20'),
(1003, 103, 'Headphones',  5, 2499.95,   750.25,  200.00,  '2026-02-03', NULL),
(1004, 104, 'Monitor',     2, 15499.60,    0.00,  500.00,  '2026-02-18', '2026-02-25'),
(1005, 105, 'Keyboard',    4, 1299.45,   450.80,  NULL,     '2026-03-07', '2026-03-11'),
(1006, 106, 'Mouse',       6, 799.99,    -350.40, 100.00,   '2026-03-15', NULL),
(1007, 107, 'Tablet',      1, 32999.90,  5200.75, NULL,     '2026-04-02', '2026-04-08'),
(1008, 108, 'Printer',     2, 8999.55,   1250.25, 300.00,  '2026-04-19', '2026-04-27'),
(1009, 109, 'Camera',      3, 42999.85,  -800.60, NULL,     '2026-05-06', NULL),
(1010, 110, 'Smartwatch', 2, 7499.35,    950.45, 250.00,  '2026-05-22', '2026-05-29');


CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    Mobile VARCHAR(15),
    OfficePhone VARCHAR(15),
    HomePhone VARCHAR(15)
);

INSERT INTO Customers VALUES
(101, 'Neha',  '9876543210', NULL,          NULL),
(102, 'Riya',  NULL,         '07940001111', NULL),
(103, 'Amit',  NULL,         NULL,           '9876500001'),
(104, 'Karan', NULL,         NULL,           NULL),
(105, 'Priya', '9876512345', '07945556666', NULL),
(106, 'Rahul', NULL,         '07941112222', NULL),
(107, 'Pooja', NULL,         NULL,           '9876599999'),
(108, 'Jay',   '9876588888', NULL,          NULL),
(109, 'Anita', NULL,         NULL,           NULL),
(110, 'Vivek', '9876577777', '07943334444', NULL);


CREATE TABLE Financials (
    Product VARCHAR(50),
    Sales DECIMAL(12,2),
    Cost DECIMAL(12,2)
);

INSERT INTO Financials VALUES
('Laptop', 65000.00, 56000.00),
('Mobile', 54000.00, 55200.00),
('Headphones', 12500.00, 11750.00),
('Monitor', 31000.00, 31000.00),
('Keyboard', 5200.00, 4750.00),
('Mouse', 4800.00, 5150.00);

SELECT * FROM Orders
SELECT * FROM Customers
SELECT * FROM Financials


---TASK-1 Display the absolute value of the profit column.

SELECT
ORDERID,
ABS(PROFIT) AS ABSOLUTEPROFIT
FROM Orders;

--TASK-2 Display product prices rounded to 2 decimal places.

SELECT
PRODUCT,
PRICE,
ROUND(PRICE,2) AS ROUNDEDPRICE
FROM Orders;


--TASK-3 Display the ceiling value of every product price.
SELECT
PRODUCT,
PRICE,
CEILING(PRICE) AS CEILINGPRICE
FROM Orders;

--TASK-4 Display the floor value of every product price.
SELECT
PRODUCT,
PRICE,
FLOOR(PRICE) AS FLOORPRICE
FROM Orders;

--TASK-5 Calculate the square of every quantity.
SELECT
ORDERID,
QUANTITY,
POWER(QUANTITY,2) AS QUANTITYSQUARE
FROM Orders;

--TASK-6 Calculate the square root of a numeric column.

SELECT
PRODUCT,
PRICE,
SQRT(PRICE) AS SQUAREROOTPRICE
FROM Orders;

--TASK-7 Calculate a total order value using:
SELECT
ORDERID,
QUANTITY,
PRICE,
ROUND(QUANTITY * PRICE,2) AS TOTALORDERVALUE
FROM Orders ;

--TASK-8 Display whether each transaction has a positive, negative, or zero profit using SIGN().
SELECT
ORDERID,
PROFIT,
SIGN(PROFIT) AS PROFITSIGN
FROM Orders;

--TAK-9 Generate a random number between 1 and 100.
SELECT
FLOOR(RAND()*100)+1 AS RANDOMNUMBER
FROM Orders;


--TASK-10 Calculate the area of a circle with radius stored in a column.

SELECT
PRODUCT,
PRICE,
PI()*POWER(PRICE,2) AS CIRCLEAREA
FROM Orders;

--TAS-11 Display the current date and time.
SELECT
GETDATE() AS CURRENTDATETIME;

--TASK-12 Display today's date without the time portion.
SELECT
CONVERT(DATE, GETDATE()) AS TODAYDATE;

--TASK-13 Display the year from every order date.

SELECT
ORDERID,
YEAR(ORDERDATE) AS ORDERYEAR
FROM Orders;

--TASK-14 Display the month number from every order date.
SELECT
ORDERID,
MONTH(ORDERDATE) AS ORDERMONTH
FROM Orders;

--TASK-15 Display the name of the month from every order date.
SELECT
ORDERDATE,
DATENAME(MONTH,ORDERDATE) AS MONTHNAME
FROM Orders;

--TASK-16 Display the weekday name for every order.
SELECT
ORDERDATE,
DATENAME(WEEKDAY,ORDERDATE) AS WEEKDAYNAME
FROM Orders;


--TASK-17 Calculate the number of days between order date and delivery date.
SELECT
ORDERID,
ORDERDATE,
DELIVERYDATE,
DATEDIFF(DAY,ORDERDATE,DELIVERYDATE) AS DELIVERYDAYS
FROM Orders;

--TASK-18 Calculate an expected delivery date by adding 7 days to the order date.


SELECT
ORDERID,
ORDERDATE,
DATEADD(DAY,7,ORDERDATE) AS EXPECTEDELIVERYDATE
FROM Orders;

--TASK-19 Display the last day of the month for every order date.
SELECT
ORDERID,
ORDERDATE,
EOMONTH(ORDERDATE) AS MONTHENDDATE
FROM Orders;

--TASK-20 Display orders placed in each year and month.

SELECT
YEAR(ORDERDATE) AS ORDERYEAR,
MONTH(ORDERDATE) AS ORDERMONTH,
COUNT(*)  AS TOTALORDERS
FROM Orders
GROUP BY YEAR(ORDERDATE), MONTH(ORDERDATE)
ORDER BY YEAR(ORDERDATE),MONTH(ORDERDATE);


--TASK-21 Find all customers whose phone number is NULL.


SELECT *
FROM Customers
WHERE Mobile  IS NULL ;


--TASK-22 Find all customers whose phone number is NOT NULL.
SELECT *
FROM Customers
WHERE Mobile IS NOT NULL ;


--TASK-23 Display Not Available instead of NULL phone numbers.
SELECT
CUSTOMERNAME,
ISNULL(MOBILE, 'NOT AVAILABLE') AS MOBILE
FROM Customers;

--TASK-24 Display 0 instead of NULL discount values

SELECT
ORDERID,
DISCOUNT,
ISNULL(DISCOUNT,0) AS DISCOUNTVALUE
FROM Orders;

--TASK-25 For every customer, return the first available value among
SELECT
CUSTOMERID,
CUSTOMERNAME,
COALESCE(MOBILE, OFFICEPHONE,HOMEPHONE, 'NO CONTACT') AS CONTACTNUMBER
FROM Customers;

--TASK-26 Find the number of rows in a table using COUNT(*).
SELECT COUNT(*) AS TOTALROWS
FROM Customers;


--TASK-27 Find the number of non-NULL values in a specific column.

SELECT COUNT(MOBILE) AS NONNULLMOBLIE
FROM Customers;

--TASK-28 Calculate an average while handling NULL values.


SELECT AVG(PROFIT) AS AVERAGEPROFIT
FROM Orders;


--TASK-29 Calculate a percentage without causing a divide-by-zero error.
SELECT 
ORDERID,
PRICE,
PROFIT,
(PROFIT*100.0)/NULLIF(PRICE,0) AS PROFITPERCENTAGE
FROM Orders;

--TASK-30 Find orders where the delivery date is NULL and calculate how many days have passed since the order date.

SELECT
ORDERID,
ORDERDATE,
DeliveryDate,
DATEDIFF(DAY, ORDERDATE,GETDATE()) AS DAYSPASSED
FROM Orders
WHERE DeliveryDate IS NULL ;

---Scenario 1 — E-Commerce Delivery Analysis--
SELECT
ORDERID,
ORDERDATE,
DELIVERYDATE,
DATEDIFF(DAY,ORDERDATE,ISNULL(DELIVERYDATE,GETDATE())) AS DELIVARYDAYS
FROM Orders;


--Scenario 2 — Monthly Sales Report---
SELECT
YEAR(ORDERDATE) AS ORDERYEAR,
MONTH(ORDERDATE) AS ORDERMONTH,
DATENAME(MONTH,ORDERDATE) AS MONTHNAME,
SUM(Quantity*PRICE) AS TOTALSALES
FROM Orders
GROUP BY
YEAR(ORDERDATE),
MONTH(ORDERDATE),
DATENAME(MONTH,ORDERDATE);

--Scenario 3 — Customer Contact Report--
SELECT
CUSTOMERID,

COALESCE(MOBILE,OFFICEPHONE,HOMEPHONE,'NO CONTACT') AS CONTACTNUMBER
FROM Customers;

--Scenario 4 — Financial Profit Report--

SELECT
PRODUCT,
PRICE AS SALES,
PROFIT,
ROUND((PROFIT/NULLIF(PRICE,0))*100,2) AS PROFITPERCENTAGE
FROM Orders ;


---Scenario 5 — Order Value Report--

select
orderid,
quantity,
price,
discount,
ROUND((quantity*price)-isnull(discount,0),2) as totalvalue
from Orders ;

--Scenario 6 — Month-End Business Report--

select
orderid as transactionid,
orderdate as tranctiondate,
datename(month,orderdate) as monthname,
EOMONTH(orderdate) as monthenddate
from Orders ;





