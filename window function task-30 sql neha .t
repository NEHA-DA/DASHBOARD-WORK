CREATE DATABASE WindowFunctionsPractice;

USE WindowFunctionsPractice;


CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);



INSERT INTO Employee
(emp_id, emp_name, department, city, salary, joining_date)
VALUES
(101, 'Aarav Sharma', 'IT', 'Ahmedabad', 72000, '2021-01-15'),
(102, 'Priya Patel', 'IT', 'Mumbai', 85000, '2020-06-10'),
(103, 'Rahul Mehta', 'IT', 'Ahmedabad', 78000, '2022-03-20'),
(104, 'Neha Shah', 'HR', 'Pune', 65000, '2021-08-12'),
(105, 'Vikram Singh', 'HR', 'Delhi', 72000, '2019-04-18'),
(106, 'Ananya Desai', 'HR', 'Mumbai', 68000, '2022-01-25'),
(107, 'Rohan Gupta', 'Sales', 'Delhi', 55000, '2023-02-14'),
(108, 'Sneha Joshi', 'Sales', 'Ahmedabad', 62000, '2021-11-05'),
(109, 'Karan Shah', 'Sales', 'Mumbai', 58000, '2022-07-19'),
(110, 'Meera Patel', 'Finance', 'Pune', 82000, '2020-09-21'),
(111, 'Arjun Mehta', 'Finance', 'Delhi', 90000, '2018-05-16'),
(112, 'Kavya Shah', 'Finance', 'Ahmedabad', 85000, '2021-12-01'),
(113, 'Dev Kumar', 'IT', 'Bangalore', 78000, '2023-06-11'),
(114, 'Isha Patel', 'IT', 'Mumbai', 92000, '2019-10-28'),
(115, 'Manav Joshi', 'Sales', 'Pune', 61000, '2020-02-17'),
(116, 'Pooja Mehta', 'HR', 'Ahmedabad', 75000, '2018-11-30'),
(117, 'Aditya Shah', 'Finance', 'Mumbai', 88000, '2022-04-09'),
(118, 'Nisha Gupta', 'Sales', 'Delhi', 59000, '2023-09-13'),
(119, 'Harsh Patel', 'IT', 'Pune', 88000, '2021-03-22'),
(120, 'Riya Singh', 'Finance', 'Ahmedabad', 76000, '2023-01-18');




CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    sale_date DATE,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    amount DECIMAL(12,2),

    FOREIGN KEY (employee_id)
    REFERENCES Employee(emp_id)
);




INSERT INTO Sales
(sale_id, employee_id, sale_date, product, category, quantity, amount)
VALUES
(1,101,'2025-01-03','Laptop','Electronics',2,140000),
(2,102,'2025-01-04','Monitor','Electronics',3,75000),
(3,103,'2025-01-05','Keyboard','Accessories',5,25000),
(4,107,'2025-01-06','Laptop','Electronics',1,70000),
(5,108,'2025-01-07','Mouse','Accessories',10,15000),
(6,110,'2025-01-08','Printer','Electronics',2,50000),
(7,111,'2025-01-09','Laptop','Electronics',2,145000),
(8,102,'2025-01-10','Keyboard','Accessories',8,40000),
(9,109,'2025-01-11','Monitor','Electronics',2,52000),
(10,112,'2025-01-12','Printer','Electronics',3,72000),
(11,101,'2025-01-13','Mouse','Accessories',15,22500),
(12,103,'2025-01-14','Laptop','Electronics',1,72000),
(13,114,'2025-01-15','Monitor','Electronics',4,108000),
(14,115,'2025-01-16','Keyboard','Accessories',12,60000),
(15,108,'2025-01-17','Laptop','Electronics',2,150000),
(16,116,'2025-01-18','Printer','Electronics',1,26000),
(17,117,'2025-01-19','Monitor','Electronics',3,81000),
(18,118,'2025-01-20','Mouse','Accessories',20,30000),
(19,119,'2025-01-21','Laptop','Electronics',3,225000),
(20,120,'2025-01-22','Keyboard','Accessories',10,50000),
(21,101,'2025-01-23','Monitor','Electronics',2,54000),
(22,102,'2025-01-24','Laptop','Electronics',1,76000),
(23,103,'2025-01-25','Mouse','Accessories',12,18000),
(24,107,'2025-01-26','Printer','Electronics',2,52000),
(25,108,'2025-01-27','Monitor','Electronics',2,50000),
(26,110,'2025-01-28','Laptop','Electronics',1,73000),
(27,111,'2025-01-29','Keyboard','Accessories',15,75000),
(28,112,'2025-01-30','Mouse','Accessories',25,37500),
(29,114,'2025-02-01','Laptop','Electronics',2,155000),
(30,115,'2025-02-02','Monitor','Electronics',3,78000),
(31,116,'2025-02-03','Keyboard','Accessories',10,50000),
(32,117,'2025-02-04','Laptop','Electronics',1,74000),
(33,118,'2025-02-05','Printer','Electronics',2,51000),
(34,119,'2025-02-06','Monitor','Electronics',4,104000),
(35,120,'2025-02-07','Mouse','Accessories',18,27000),
(36,101,'2025-02-08','Laptop','Electronics',2,148000),
(37,102,'2025-02-09','Printer','Electronics',1,25000),
(38,103,'2025-02-10','Monitor','Electronics',3,79000),
(39,107,'2025-02-11','Mouse','Accessories',20,30000),
(40,108,'2025-02-12','Keyboard','Accessories',14,70000),
(41,109,'2025-02-13','Laptop','Electronics',2,152000),
(42,110,'2025-02-14','Monitor','Electronics',2,53000),
(43,111,'2025-02-15','Printer','Electronics',3,78000),
(44,112,'2025-02-16','Laptop','Electronics',2,146000),
(45,114,'2025-02-17','Keyboard','Accessories',10,50000),
(46,115,'2025-02-18','Mouse','Accessories',15,22500),
(47,116,'2025-02-19','Laptop','Electronics',1,71000),
(48,117,'2025-02-20','Monitor','Electronics',3,81000),
(49,118,'2025-02-21','Keyboard','Accessories',12,60000),
(50,119,'2025-02-22','Laptop','Electronics',2,149000),
(51,120,'2025-02-23','Printer','Electronics',2,50000),
(52,101,'2025-02-24','Mouse','Accessories',22,33000),
(53,102,'2025-02-25','Monitor','Electronics',2,51000),
(54,103,'2025-02-26','Laptop','Electronics',1,75000),
(55,107,'2025-02-27','Keyboard','Accessories',16,80000),
(56,108,'2025-02-28','Printer','Electronics',2,49000),
(57,109,'2025-03-01','Mouse','Accessories',25,37500),
(58,110,'2025-03-02','Laptop','Electronics',2,150000),
(59,111,'2025-03-03','Monitor','Electronics',4,106000),
(60,112,'2025-03-04','Keyboard','Accessories',18,90000);



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product VARCHAR(50),
    category VARCHAR(50),
    amount DECIMAL(12,2),
    status VARCHAR(30)
);



INSERT INTO Orders
(order_id, customer_id, order_date, product, category, amount, status)
VALUES
(1001,201,'2025-01-02','Laptop','Electronics',70000,'Delivered'),
(1002,202,'2025-01-03','Mouse','Accessories',1500,'Delivered'),
(1003,201,'2025-01-08','Monitor','Electronics',25000,'Delivered'),
(1004,203,'2025-01-10','Keyboard','Accessories',3000,'Delivered'),
(1005,202,'2025-01-12','Laptop','Electronics',72000,'Delivered'),
(1006,204,'2025-01-15','Printer','Electronics',26000,'Cancelled'),
(1007,201,'2025-01-18','Keyboard','Accessories',3500,'Delivered'),
(1008,205,'2025-01-20','Laptop','Electronics',75000,'Delivered'),
(1009,203,'2025-01-23','Mouse','Accessories',1800,'Delivered'),
(1010,202,'2025-01-25','Monitor','Electronics',27000,'Delivered'),
(1011,206,'2025-01-27','Laptop','Electronics',68000,'Delivered'),
(1012,204,'2025-01-29','Keyboard','Accessories',3200,'Delivered'),
(1013,205,'2025-02-01','Printer','Electronics',25500,'Delivered'),
(1014,201,'2025-02-03','Mouse','Accessories',2000,'Delivered'),
(1015,203,'2025-02-05','Laptop','Electronics',73000,'Delivered'),
(1016,202,'2025-02-07','Keyboard','Accessories',3500,'Delivered'),
(1017,206,'2025-02-10','Monitor','Electronics',28000,'Delivered'),
(1018,204,'2025-02-12','Laptop','Electronics',71000,'Delivered'),
(1019,205,'2025-02-15','Mouse','Accessories',2200,'Delivered'),
(1020,201,'2025-02-18','Printer','Electronics',25000,'Delivered'),
(1021,203,'2025-02-20','Monitor','Electronics',26000,'Delivered'),
(1022,202,'2025-02-22','Laptop','Electronics',76000,'Delivered'),
(1023,206,'2025-02-24','Keyboard','Accessories',3800,'Delivered'),
(1024,204,'2025-02-26','Mouse','Accessories',1900,'Delivered'),
(1025,205,'2025-02-28','Laptop','Electronics',78000,'Delivered'),
(1026,201,'2025-03-02','Monitor','Electronics',29000,'Delivered'),
(1027,203,'2025-03-04','Printer','Electronics',27000,'Delivered'),
(1028,202,'2025-03-06','Mouse','Accessories',2100,'Delivered'),
(1029,206,'2025-03-08','Laptop','Electronics',74000,'Delivered'),
(1030,204,'2025-03-10','Keyboard','Accessories',3600,'Delivered'),
(1031,205,'2025-03-12','Monitor','Electronics',30000,'Delivered'),
(1032,201,'2025-03-15','Laptop','Electronics',80000,'Delivered'),
(1033,203,'2025-03-17','Mouse','Accessories',2300,'Delivered'),
(1034,202,'2025-03-19','Printer','Electronics',28000,'Delivered'),
(1035,206,'2025-03-21','Monitor','Electronics',31000,'Delivered');



select *
from Employee

select *
from sales

select *
from Orders


--task-1 Rank Employees by Salary--

select
emp_name,
department,
salary,
RANK() over (order by salary desc) as salary_rank
from Employee ;


--task-2 Dense Rank Employees
select
emp_name,
salary,
DENSE_RANK() over (order by salary desc) as salary_rank
from Employee;


--task-3 Row Number for Employees

select
emp_name,
salary,
ROW_NUMBER() over (order by salary desc) as row_num
from Employee ;


---task-4  Rank Employees Within Department

select
emp_name,
department,
salary,
RANK() over (partition by department
order by salary desc
) as department_rank
from Employee;


---task-5 Top 3 Employees in Each Department--
select *
from (

select
emp_name,
department,
salary,
ROW_NUMBER() over(partition by department
order by salary desc
) as rn
from Employee)
as ranked where rn<=3 ;


--task-6 Department Average Salary--

select
emp_name,
department,
salary,
AVG(salary) over (partition by department) as department_avg_salary
from Employee ;


---task-7 Difference from Department Average--

SELECT
    emp_name,
    department,
    salary,
    salary - AVG(salary) OVER (PARTITION BY department) 
        AS difference_from_avg
FROM Employee;


---task-8 Department Total Salary

select
emp_name,
department,
salary,
SUM(salary) over (partition by department) as department_total_salary
from Employee;


---task-9 Employee Salary Percentage

select
emp_name,
department,
salary,
(salary *100.0)/
SUM(salary) over (partition by department) as salary_percentage
from Employee ;


--task-10 Department Employee Count--

select
emp_name,
department,
salary,
count(*) over (partition by department) as department_employee_count
from Employee;


---task-11 Running Sales Total--

select
sale_id,
employee_id,
sale_date,
amount,
sum(amount) over(order by sale_date) as runing_total
from sales;


---task-12 Running Sales by Employee--

select
sale_id,
employee_id,
sale_date,
amount,
SUM(amount) over (partition by employee_id
order by sale_date) as runing_sales
from Sales;


---task-13  Running Quantity Sold

select
sale_id,
employee_id,
sale_date,
quantity,
sum(quantity) over (order by sale_date) as runing_quantity
from sales;


---task-14 Average Sales Per Employee--


select
sale_id,
employee_id,
sale_date,
amount,
AVG(amount) over (partition by employee_id) as employee_avg_sale
from Sales ;


---task-15 Maximum Sale by Employee--


select
sale_id,
employee_id,
sale_date,
amount,
MAX(amount) over (partition by employee_id) as max_sale_by_employee
from sales ;


---task-16 Previous Sale Amount
select
sale_id,
employee_id,
sale_date,
amount,
LAG(amount) over (partition by employee_id
order by sale_date) as previous_sale_amount
from sales ;


--task-17 Next Sale Amount

select
sale_id,
employee_id,
sale_date,
amount,
LEAD(amount) over (partition by employee_id
order by sale_date ) as next_sale_amount
from sales ;

--task-18 Compare Current Sale with Previous Sale--

SELECT
    sale_date,
    employee_id,
    amount AS current_amount,
    LAG(amount) OVER (
        PARTITION BY employee_id
        ORDER BY sale_date
    ) AS previous_amount,
    amount - LAG(amount) OVER (
        PARTITION BY employee_id
        ORDER BY sale_date
    ) AS difference
FROM Sales;


--task-19 Sales Growth Percentage--

SELECT
    sale_date,
    employee_id,
    amount AS current_amount,
    LAG(amount) OVER (
        PARTITION BY employee_id ORDER BY sale_date
    ) AS previous_amount,
    (amount - LAG(amount) OVER (
        PARTITION BY employee_id ORDER BY sale_date
    )) * 100.0
    / LAG(amount) OVER (
        PARTITION BY employee_id ORDER BY sale_date
    ) AS growth_percentage
FROM Sales;


--task-20 Previous Order Date--


select
customer_id,
order_date,
LAG(order_date) over (partition by customer_id
order by order_date) as previous_order_date
from Orders ;


--task-21 Running Average of Sales--

select
sale_id,
sale_date,
amount,
AVG(amount) over (order by sale_date ) as runing_avg_sales
from sales ;


---task-22 Previous 3 Sales Average--
select
sale_id,
sale_date,
amount,
avg(amount) over (order by sale_date
rows between 2 preceding and current row ) as previous_3_sales_avg
from sales ;


---hold 23,24-- 


--task-24 Department Salary Running Total

select
emp_name,
department,
joining_date,
salary,
SUM(salary) over (partition by department
order by joining_date) as runing_salary
from Employee ;


--task-25 Highest Salary So Far--

select
emp_name,
joining_date,
salary,
MAX(salary) over (order by joining_date) as highest_salary_so_far
from Employee ;


--task-26 Customer Order Ranking--
select
customer_id,
order_id,
amount,
RANK()over(
partition by customer_id
order by amount desc) as order_rank
from Orders ;

---task-27 Highest Order for Each Customer--
select
customer_id,
order_id,
amount
from(
select
customer_id,
order_id,
amount,
ROW_NUMBER() over (
partition by customer_id
order by amount desc
) as rn
from  Orders
)as m
where rn = 1;


---task-28 First and Last Order---

select
customer_id,
order_id,
order_date,
frist_value(order_id) over (
partition by customer_id
order by order_date) as frist_order,
LAST_VALUE(order_id)over (
partition by customer_id
order by order_date
rows between unbounded precding and unbounded following) as last_order
from Orders ;



--task-29 Compare Current and Previous Order--
select
customer_id,
order_id,
order_date,
amount,
amount-LAG(amount)over(
partition by customer_id
order by order_date
) as difference
from Orders ;


--task-30 Employee Sales Leaderboard--
select
employee_id,
SUM(amount) as total_sales,
RANK() over (order by sum(amount desc) as sales_rank,
DENSE_RANK() over ( order by sum(amount) desc) as dense_rank
from Sales
group by employee_id;










