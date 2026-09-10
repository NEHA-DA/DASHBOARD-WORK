CREATE DATABASE COMPANYHB ;

USE COMPANYHB ;

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50)
);


INSERT INTO Employees
VALUES
(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', 'IT', 'Ahmedabad'),
(102, 'Priya Patel', 'priya.patel@gmail.com', 'HR', 'Mumbai'),
(103, 'Amit Shah', 'amit.shah@gmail.com', 'Finance', 'Ahmedabad'),
(104, 'Neha Mehta', 'neha.mehta@gmail.com', 'IT', 'Pune'),
(105, 'Rohan Desai', 'rohan.desai@gmail.com', 'Sales', 'Delhi');

SELECT *
FROM Employees 


SELECT UPPER (Employee_name) as employee_name
from Employees ;

select LOWER(employee_name)as employee_name
from Employees ;

select 
employee_id,
UPPER (city) as city
from Employees;

select
employee_id,
LOWER (city) as city
from Employees ;


select LOWER(email) as email
from Employees;

select UPPER (email) as email
from Employees;

--len---
select
employee_name,
LEN(employee_name) as name_length
from Employees;

---data length--
select
employee_name,
DATALENGTH(employee_name) as byte_count
from Employees ;

select
len(employee_name) as Character_Count,
DATALENGTH(employee_name) as byte_count
from Employees;

--concat---
select
CONCAT(employee_name,'-',department) as employee_info
from Employees;



select CONCAT(
employee_id,
' / ' ,
employee_name,
' / ',
department
) as employee_details
from Employees ;


--CONCAT_WS()--
select
CONCAT_WS(' - ',employee_name, department ,city)
from Employees;

--left--
select
LEFT(employee_name,5) as frist_five_Characters
from Employees;

--right--
select
RIGHT(employee_name,5) as frist_five_characters
from Employees;

select
LEFT(city ,3) as city_code
from Employees;

--SUBSTRING()--
select
SUBSTRING(employee_name,1,5)AS Extracted_Text
from Employees ;

SELECT
    SUBSTRING(employee_name, 7, 6) AS Last_Name
FROM Employees;
--CHARINDEX()--
select
EMPLOYEE_NAME,
CHARINDEX(' ' ,EMPLOYEE_NAME) AS SPACE_POSTION
FROM Employees ;




---FORMAT--
SELECT FORMAT(12345678,'NO') AS FORMATTED_NUMBER;


---STRING_AGG()---
SELECT
DEPARTMENT,
STRING_AGG(EMPLOYEE_NAME, ',')AS EMPLOYEE
FROM Employees
GROUP BY department;


--STRING_SPLIT()---

SELECT value
FROM STRING_SPLIT('SQL,Python,Power BI,Excel', ',');



---ASCII()--
SELECT ASCII('A');


---CHAR ()---
SELECT
CHAR(65);


--UNICODE--


--DIFFRENCE--
SELECT DIFFERENCE('NEHA', 'NHAE');

---SOUNDEX()---
SELECT SOUNDEX('NEHA');


SELECT
    SOUNDEX('Smith') AS Name1,
    SOUNDEX('Smyth') AS Name2;



    ---QUOTENAME()---
    SELECT QUOTENAME('NEHA');


    --STAR--
    SELECT STR(123.45,10,2);

    ---
    SELECT REPLICATE('*', 5);


    ---CONCAT() vs + Operator
SELECT employee_name + ' - ' + department
FROM Employees;

SELECT CONCAT(employee_name, ' - ', department)
FROM Employees;


SELECT CONCAT('Rahul', NULL, 'Sharma');


---Combining String Functions---
--EXAMPLE -1   CLEAN AND UPPERCASE NAME---

SELECT
UPPER(TRIM(EMPLOYEE_NAME)) AS CLEAN_NAME
FROM Employees ;

---EXAMPLE 2 ---Extract First Name-
SELECT
    LEFT(
        employee_name,
        CHARINDEX(' ', employee_name) - 1
    ) AS First_Name
FROM Employees;


--EXAMPLE 3---
--Example 3 — Extract Last Name---


SELECT
RIGHT(
EMPLOYEE_NAME,
CHARINDEX(' ',EMPLOYEE_NAME) -1
) AS LAST_NAME
FROM Employees;



---Create Employee Username---

rahul.sharma
priya.patel
amit.shah



SELECT
LOWER(REPLACE(EMPLOYEE_NAME, ' ','.')) AS USERNAME
FROM Employees;


---Extract Email Username---
WE Want
rahul sharma

select left(
email,
CHARINDEX('@',email)-1
) as email_username
from Employees;




