--  Data For Task ALL Join 


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Customers (customer_id, customer_name, city)
VALUES
(101, 'Aarav Shah', 'Ahmedabad'),
(102, 'Riya Patel', 'Mumbai'),
(103, 'Rahul Mehta', 'Delhi'),
(104, 'Priya Sharma', 'Ahmedabad'),
(105, 'Karan Desai', 'Pune'),
(106, 'Neha Joshi', 'Mumbai'),
(107, 'Arjun Patel', 'Bangalore'),
(108, 'Sneha Shah', 'Delhi'),
(109, 'Vivek Mehta', 'Ahmedabad'),
(110, 'Anjali Desai', 'Surat'),
(111, 'Rohan Shah', 'Pune'),
(112, 'Meera Patel', 'Mumbai'),
(113, 'Dhruv Shah', 'Ahmedabad'),
(114, 'Kavya Mehta', 'Delhi'),
(115, 'Yash Desai', 'Bangalore'),
(116, 'Ishita Patel', 'Surat'),
(117, 'Manav Shah', 'Pune'),
(118, 'Pooja Joshi', 'Mumbai'),
(119, 'Nikhil Mehta', 'Ahmedabad'),
(120, 'Tanya Shah', 'Delhi');


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Orders 
(order_id, customer_id, product_name, quantity, amount)
VALUES
(1001, 101, 'Laptop', 2, 55000),
(1002, 101, 'Mouse', 5, 800),
(1003, 101, 'Keyboard', 3, 1500),
(1004, 102, 'Laptop', 1, 62000),
(1005, 102, 'Monitor', 2, 18000),
(1006, 103, 'Mobile Phone', 2, 35000),
(1007, 103, 'Headphones', 4, 4500),
(1008, 104, 'Laptop', 1, 58000),
(1009, 104, 'Printer', 2, 12500),
(1010, 104, 'Keyboard', 5, 1400),
(1011, 105, 'Office Chair', 4, 8500),
(1012, 105, 'Monitor', 3, 17000),
(1013, 106, 'Mobile Phone', 3, 32000),
(1014, 106, 'Headphones', 5, 4200),
(1015, 107, 'Laptop', 2, 60000),
(1016, 107, 'Mouse', 10, 750),
(1017, 108, 'Monitor', 4, 16000),
(1018, 108, 'Keyboard', 6, 1300),
(1019, 109, 'Laptop', 2, 57000),
(1020, 109, 'Printer', 3, 13500),
(1021, 109, 'Mouse', 8, 700),
(1022, 110, 'Mobile Phone', 2, 36000),
(1023, 110, 'Headphones', 3, 4800),
(1024, 111, 'Laptop', 1, 65000),
(1025, 111, 'Monitor', 2, 19000),
(1026, 112, 'Printer', 4, 12000),
(1027, 112, 'Keyboard', 7, 1200),
(1028, 113, 'Laptop', 3, 54000),
(1029, 113, 'Mouse', 6, 850),
(1030, 113, 'Headphones', 4, 5000),
(1031, 114, 'Mobile Phone', 2, 34000),
(1032, 114, 'Monitor', 3, 17500),
(1033, 115, 'Laptop', 2, 59000),
(1034, 115, 'Printer', 2, 14000),
(1035, 116, 'Office Chair', 5, 9000),
(1036, 117, 'Laptop', 1, 61000),
(1037, 117, 'Keyboard', 8, 1250),
(1038, 118, 'Mobile Phone', 3, 33000),
(1039, 118, 'Headphones', 6, 4300),
(1040, 119, 'Laptop', 2, 56000),
(1041, 119, 'Monitor', 2, 18500),
(1042, 119, 'Printer', 1, 15000),
(1043, 121, 'Laptop', 1, 60000),
(1044, 122, 'Monitor', 2, 17000);


CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Products
(product_id, product_name, category, price)
VALUES
(201, 'Laptop', 'Electronics', 60000),
(202, 'Mobile Phone', 'Electronics', 35000),
(203, 'Monitor', 'Electronics', 18000),
(204, 'Printer', 'Electronics', 14000),
(205, 'Keyboard', 'Accessories', 1500),
(206, 'Mouse', 'Accessories', 800),
(207, 'Headphones', 'Accessories', 4500),
(208, 'Office Chair', 'Furniture', 9000),
(209, 'Webcam', 'Accessories', 3500),
(210, 'Tablet', 'Electronics', 28000),
(211, 'Desk', 'Furniture', 15000),
(212, 'USB Hub', 'Accessories', 1200);


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);


INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'Human Resources'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Support');


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    designation VARCHAR(100),
    salary DECIMAL(10,2)
);


INSERT INTO Employees
(employee_id, employee_name, department_id, designation, salary)
VALUES
(301, 'Amit Shah', 1, 'Sales Executive', 45000),
(302, 'Bhavna Patel', 1, 'Sales Executive', 48000),
(303, 'Chirag Mehta', 1, 'Sales Manager', 75000),
(304, 'Disha Sharma', 2, 'Marketing Executive', 50000),
(305, 'Esha Desai', 2, 'Marketing Manager', 78000),
(306, 'Farhan Khan', 3, 'Financial Analyst', 65000),
(307, 'Gauri Joshi', 3, 'Finance Manager', 90000),
(308, 'Harsh Patel', 4, 'HR Executive', 48000),
(309, 'Isha Shah', 5, 'Software Engineer', 70000),
(310, 'Jay Mehta', 5, 'System Administrator', 68000),
(311, 'Kriti Desai', 6, 'Operations Executive', 52000),
(312, 'Lalit Shah', NULL, 'Sales Executive', 46000);

select * from Customers
select * from Orders
select * from products
select * from Departments
select * from Employees



/* =====================================================
   TASK 1 - Customer Revenue Performance
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity) AS total_quantity_purchased,
    SUM(o.amount) AS total_purchase_value,
    AVG(o.amount) AS average_order_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 3
   AND SUM(o.amount) > 75000
ORDER BY total_purchase_value DESC;


/* =====================================================
   TASK 2 - Regional Sales Performance
   ===================================================== */

SELECT
    c.city,
    COUNT(DISTINCT c.customer_id) AS number_of_customers,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.amount) AS total_sales_value,
    AVG(o.amount) AS average_order_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING SUM(o.amount) > 100000
ORDER BY total_sales_value DESC;


/* =====================================================
   TASK 3 - High-Value Customer Identification
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.amount) AS total_purchase_value,
    MAX(o.amount) AS highest_transaction_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING MAX(o.amount) > 25000
   AND SUM(o.amount) > 50000;


/* =====================================================
   TASK 4 - Customer Purchase Concentration
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_purchased,
    SUM(o.amount) AS total_purchase_value,
    AVG(o.amount) AS average_order_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) > 4
ORDER BY number_of_orders DESC,
         total_purchase_value DESC;






/* =====================================================
   TASK 5 - Product Revenue Performance
   ===================================================== */

SELECT
    p.product_name,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.amount) AS total_revenue,
    AVG(o.amount) AS average_order_amount,
    MAX(o.amount) AS highest_order_amount
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(o.order_id) >= 3
ORDER BY total_revenue DESC;


/* =====================================================
   TASK 6 - High-Volume Products
   ===================================================== */

SELECT
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.amount) AS total_revenue
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(o.quantity) > 100
   AND COUNT(o.order_id) > 5;


/* =====================================================
   TASK 7 - Revenue Contribution by City
   ===================================================== */

SELECT
    c.city,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.amount) AS total_revenue
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING COUNT(DISTINCT c.customer_id) >= 3
   AND COUNT(o.order_id) >= 5
   AND SUM(o.amount) > 200000;


/* =====================================================
   TASK 8 - Customer Order Value Analysis
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    MIN(o.amount) AS minimum_order_value,
    MAX(o.amount) AS maximum_order_value,
    AVG(o.amount) AS average_order_value,
    SUM(o.amount) AS total_purchase_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 3;


/* =====================================================
   TASK 9 - Customer Retention Analysis
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_purchased,
    SUM(o.amount) AS total_purchase_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 5
ORDER BY number_of_orders DESC;


/* =====================================================
   TASK 10 - Low-Activity Customer Analysis
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.amount) AS total_purchase_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) IN (1, 2)
ORDER BY total_purchase_value DESC;


/* =====================================================
   TASK 11 - Customer Coverage Analysis
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    COALESCE(SUM(o.quantity), 0) AS total_quantity_purchased,
    COALESCE(SUM(o.amount), 0) AS total_purchase_value
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city;


























































































































































































































































































/* =====================================================
   TASK 12 - Unconverted Customer Analysis
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


/* =====================================================
   TASK 13 - Customer Revenue Coverage
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    COALESCE(SUM(o.amount), 0) AS total_purchase_value
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city;


/* =====================================================
   TASK 14 - Product Sales Coverage
   ===================================================== */

SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.price
FROM Products p
LEFT JOIN Orders o
    ON p.product_id = o.product_id
WHERE o.order_id IS NULL;


/* =====================================================
   TASK 15 - Order Data Reconciliation
   FULL JOIN alternative for MySQL
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    p.product_name,
    o.quantity,
    o.amount
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
LEFT JOIN Products p
    ON o.product_id = p.product_id

UNION

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    p.product_name,
    o.quantity,
    o.amount
FROM Orders o
LEFT JOIN Customers c
    ON o.customer_id = c.customer_id
LEFT JOIN Products p
    ON o.product_id = p.product_id;


/* =====================================================
   TASK 16 - Customer Master vs Transaction Analysis
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    p.product_name,
    o.amount
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
LEFT JOIN Products p
    ON o.product_id = p.product_id
WHERE o.order_id IS NULL

UNION

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    p.product_name,
    o.amount
FROM Orders o
LEFT JOIN Customers c
    ON o.customer_id = c.customer_id
LEFT JOIN Products p
    ON o.product_id = p.product_id
WHERE c.customer_id IS NULL;


/* =====================================================
   TASK 17 - Complete Transaction Reconciliation
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    p.product_name,
    o.quantity,
    o.amount,
    o.amount AS transaction_value
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
LEFT JOIN Products p
    ON o.product_id = p.product_id

UNION

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    p.product_name,
    o.quantity,
    o.amount,
    o.amount AS transaction_value
FROM Orders o
LEFT JOIN Customers c
    ON o.customer_id = c.customer_id
LEFT JOIN Products p
    ON o.product_id = p.product_id;


/* =====================================================
   TASK 18 - Customers With No Commercial Activity
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


/* =====================================================
   TASK 19 - Products With No Sales
   ===================================================== */

SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.price
FROM Products p
LEFT JOIN Orders o
    ON p.product_id = o.product_id
WHERE o.order_id IS NULL;


/* =====================================================
   TASK 20 - Customer Acquisition Gap
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


/* =====================================================
   TASK 21 - Unsold Product Inventory
   ===================================================== */

SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.price
FROM Products p
LEFT JOIN Orders o
    ON p.product_id = o.product_id
WHERE o.order_id IS NULL
ORDER BY p.price DESC;


/* =====================================================
   TASK 22 - Product-Customer Campaign Universe
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    p.product_id,
    p.product_name,
    p.category
FROM Customers c
CROSS JOIN Products p;


/* =====================================================
   TASK 23 - Campaign Population Size
   ===================================================== */

SELECT
    COUNT(*) AS total_customer_product_combinations
FROM Customers
CROSS JOIN Products;


/* =====================================================
   TASK 24 - Geographic Product Opportunity
   ===================================================== */

SELECT
    c.city,
    p.product_name
FROM
    (SELECT DISTINCT city FROM Customers) c
CROSS JOIN Products p;


/* =====================================================
   TASK 25 - Customer Sales Leaderboard Dataset
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_purchased,
    SUM(o.amount) AS total_revenue,
    AVG(o.amount) AS average_order_value,
    MAX(o.amount) AS maximum_order_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 3
ORDER BY total_revenue DESC,
         number_of_orders DESC,
         average_order_value DESC;


/* =====================================================
   TASK 26 - Product Business Review
   ===================================================== */

SELECT
    p.product_name,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.amount) AS total_revenue,
    AVG(o.amount) AS average_order_value,
    MAX(o.amount) AS maximum_order_value
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(o.order_id) >= 5
   AND SUM(o.amount) > 200000;


/* =====================================================
   TASK 27 - Market Performance Report
   ===================================================== */

SELECT
    c.city,
    COUNT(DISTINCT c.customer_id) AS number_of_customers,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.amount) AS total_revenue,
    AVG(o.amount) AS average_order_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING COUNT(DISTINCT c.customer_id) >= 5
   AND COUNT(o.order_id) > 10
   AND SUM(o.amount) > 500000;


/* =====================================================
   TASK 28 - High-Value Transaction Analysis
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS qualifying_orders,
    SUM(o.amount) AS total_value_of_qualifying_orders
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
WHERE o.amount > 25000
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 2;


/* =====================================================
   TASK 29 - Product Demand Analysis
   ===================================================== */

SELECT
    p.product_name,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.amount) AS total_revenue,
    AVG(o.amount) AS average_order_value
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(o.quantity) > 100
   AND COUNT(o.order_id) >= 5
   AND SUM(o.amount) > 100000;


/* =====================================================
   TASK 30 - Executive Sales Performance Report
   ===================================================== */

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS number_of_orders,
    SUM(o.quantity) AS total_quantity_purchased,
    SUM(o.amount) AS total_purchase_value,
    AVG(o.amount) AS average_order_value,
    MIN(o.amount) AS minimum_order_value,
    MAX(o.amount) AS maximum_order_value
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
HAVING COUNT(o.order_id) >= 3
   AND SUM(o.amount) > 100000
ORDER BY total_purchase_value DESC;
