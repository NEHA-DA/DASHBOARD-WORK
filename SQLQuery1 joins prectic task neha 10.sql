CREATE DATABASE SALESDB ;

USE DATABASE SALESDB;


CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Mobile VARCHAR(15),
    Email VARCHAR(100)
);


INSERT INTO Customer VALUES
(101, 'Rahul', 'Ahmedabad', '9876543210', 'rahul@gmail.com'),
(102, 'Priya', 'Mumbai', '9876543211', 'priya@gmail.com'),
(103, 'Amit', 'Pune', '9876543212', 'amit@gmail.com'),
(104, 'Neha', 'Delhi', '9876543213', 'neha@gmail.com'),
(105, 'Riya', 'Surat', '9876543214', 'riya@gmail.com'),
(106, 'Karan', 'Jaipur', '9876543215', 'karan@gmail.com'),
(107, 'Pooja', 'Vadodara', '9876543216', 'pooja@gmail.com'),
(108, 'Arjun', 'Bangalore', '9876543217', 'arjun@gmail.com'),
(109, 'Sneha', 'Chennai', '9876543218', 'sneha@gmail.com'),
(110, 'Vikas', 'Kolkata', '9876543219', 'vikas@gmail.com'),
(111, 'Anjali', 'Rajkot', '9876543220', 'anjali@gmail.com'),
(112, 'Rohan', 'Indore', '9876543221', 'rohan@gmail.com')
(113, 'Meera', 'Ahmedabad', '9876543222', 'meera@gmail.com');

INSERT INTO Customer
(CustomerID, Name, City, Mobile, Email)
VALUES
(113, 'Meera', 'Ahmedabad', '9876543222', 'meera@gmail.com');





CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    OrderDate DATE
);




INSERT INTO Orders VALUES
(1, 101, 'Laptop', 1, 50000, '2026-01-05'),
(2, 102, 'Mobile', 2, 20000, '2026-01-08'),
(3, 103, 'Keyboard', 1, 1500, '2026-01-12'),
(4, 101, 'Mouse', 3, 500, '2026-01-15'),
(5, 104, 'Monitor', 1, 12000, '2026-01-20'),
(6, 105, 'Headphones', 2, 2500, '2026-01-22'),
(7, 106, 'Tablet', 1, 30000, '2026-02-02'),
(8, 102, 'Laptop', 1, 55000, '2026-02-05'),
(9, 107, 'Mobile', 1, 25000, '2026-02-10'),
(10, 108, 'Keyboard', 2, 1800, '2026-02-14'),
(11, 101, 'Monitor', 2, 15000, '2026-02-18'),
(12, 109, 'Laptop', 1, 60000, '2026-02-20'),
(13, 110, 'Mouse', 5, 600, '2026-02-25'),
(14, 103, 'Mobile', 1, 22000, '2026-03-01'),
(15, 105, 'Laptop', 1, 52000, '2026-03-05'),
(16, 111, 'Headphones', 3, 3000, '2026-03-08'),
(17, 112, 'Monitor', 1, 14000, '2026-03-12'),
(18, 107, 'Laptop', 2, 50000, '2026-03-15'),
(19, 104, 'Mobile', 1, 28000, '2026-03-18'),
(20, 108, 'Mouse', 4, 700, '2026-03-20'),
(21, 106, 'Mobile', 1, 24000, '2026-03-22'),
(22, 110, 'Keyboard', 2, 2000, '2026-03-25'),
(23, 112, 'Laptop', 1, 58000, '2026-03-28'),
(24, 102, 'Headphones', 1, 3500, '2026-03-30'),
(25, 111, 'Mobile', 2, 23000, '2026-04-02');

INSERT INTO Orders
(OrderID, CustomerID, Product, Quantity, Price, OrderDate)
VALUES
(26, 999, 'Tablet', 1, 30000, '2026-04-05');

SELECT *
FROM Customer

SELECT *
FROM Orders


--TASK-1  Task 1 — Customer Order Details--


SELECT
Customer.CustomerID,
Customer.Name,
Customer.City,
Orders.OrderID,
Orders.Product,
Orders.Price
FROM Customer
INNER JOIN Orders
ON.Customer.CustomerID = Orders.CustomerID ;



--TASK-2 Task 2 — Customers With Orders

SELECT
Customer.Name,
Customer.City,
Orders.Product,
Orders.Price
FROM Customer
inner join Orders
on Customer.CustomerID = Orders . CustomerID;


--task-3 Task 3 — All Customers
select
Customer.CustomerID,
Customer.name,
Orders.OrderID,
orders.Product,
Orders.price
from Customer
left join Orders
on.Customer.CustomerID = Orders.CustomerID ;


--task-4 Task 4 — Customers Without Orders
select
Customer.CustomerID,
Customer.Name,
Customer.City
from Customer
left join Orders
on.Customer.CustomerID = Orders.CustomerID
where Orders.OrderID is null ;


---task-5 Task 5 — All Orders
select
Orders.OrderID,
Customer.CustomerID,
Customer.Name,
Orders.Product,
Orders.Price
from  Customer
right join Orders
on.Customer.CustomerID = Orders.CustomerID ;


--task-6 Orders Without Customers--
select
Orders.orderid,
Customer.CustomerID,
Orders.Product,
Orders.Price
from Customer
right join Orders
on .Customer.CustomerID = Orders.CustomerID
where Customer.CustomerID is null ;


---task-7  Full Customer and Order Analysis--

select
Customer.CustomerID,
Customer.name,
Orders.OrderID,
Orders.Product,
Orders.Price
from Customer
full outer join Orders
on.Customer.CustomerID = Orders.CustomerID ;



--task-8 Task 8 — Orders Above ₹10,000--
select
Customer.Name,
Orders.OrderID,
Orders.Product,
Orders.price
from Customer
inner join Orders
on.Customer.CustomerID = Orders.CustomerID
where Orders.Price>10000 ;


---task-9 Customers From Delhi
select
Customer.Name,
Customer.City,
Orders.OrderID,
Orders.Product,
Orders.Price
from Customer
inner join Orders
on.Customer.CustomerID = Orders.CustomerID
where Customer.City  = 'delhi' ;


--task-10 Task 10 — Orders With Quantity Greater Than 2

select
Customer.Name,
Orders.Product,
Orders.Quantity,
Orders.Price
from Customer
inner join Orders
on.Customer.CustomerID = Orders.CustomerID
where Orders.Quantity>2
order by quantity desc ;






