create database sqlnumericpractice ;


use sqlnumericpractice ;

create table employeesalary
(
employeeid int,
employeename varchar(50),
salary decimal (10,2),
bonus decimal(10,2),
experience int);

insert into employeesalary
(employeeid,employeename,salary,bonus,experience)
values
(1, 'Neha', 35000.50, 5000, 3),
(2, 'Riya', 42000.75, NULL, 4),
(3, 'Pooja', 28500.25, 2500, 2),
(4, 'Kajal', NULL, 3000, 1),
(5, 'Meena', 55000.90, NULL, 6),
(6, 'Priya', 32000.40, 1500, NULL);

select * 
from employeesalary

---task-1 abs()
select
employeename,
salary,
ABS(salary-40000) as salarydifference
from employeesalary;

---task-2 ceiling()
select
employeename,
salary,
CEILING(salary) as ceilingsalary
from employeesalary ;

--task-3 floor()
select
employeename,
salary,
FLOOR(salary) as floorsalary
from employeesalary ;

--task-4 round()
select
employeename,
salary,
ROUND(salary,1) as roundedsalary
from employeesalary ;

---task-5 power()
select
employeename,
experience,
POWER(experience,2) as experiencesquare
from employeesalary ;

--task-6 sqrt()
select
employeename,
experience,
SQRT(experience) as experienceroot
from employeesalary ;


--null functions prectic--- 
--task-1 isnull()--
select
employeename,
salary,
bonus,
isnull(bonus ,0) as updatebonus
from employeesalary;

--task-8 isnull with salry--
select
employeename,
ISNULL(salary,0) as updatesalary
from employeesalary;

--task-9 coalesce()
select
employeename,
salary,
bonus,
COALESCE(SALARY,BONUS,0) AS FINALAMOUNT
FROM employeesalary ;

--TASK-10 NULLIF()

select
employeename,
salary,
bonus,
NULLIF(SALARY,BONUS) AS NULLIFRESULT
FROM employeesalary;


--TASK-11 TOTAL SALARY+ BONUS--
SELECT
EMPLOYEENAME,
SALARY,
BONUS,
ISNULL(SALARY,0)+ ISNULL(BONUS,0) AS TOTALINCOME
FROM employeesalary;

--TASK-12 AVERAGE SALARY --
SELECT
AVG(SALARY) AS AVERAGESALARY
FROM employeesalary;

--TASK-13 TOTAL SALARY--
SELECT
SUM(SALARY) AS TOTALSALARY
FROM employeesalary;

--TASK-14 HIGHEST SALARY--
SELECT
MAX(SALARY) AS HIGHESTSALARY
FROM employeesalary;
--TASK-15 LOWEST SALARY--
SELECT
MIN(SALARY) AS LOWESTSALARY
FROM employeesalary;

--TASK-16 COUNT SALARY--
SELECT
COUNT(SALARY) AS SALARYCOUNT
FROM employeesalary;

--TASK-17 COUNT ALL EMPLOYEE--
SELECT
COUNT(*) AS TOTALEMPLOYEES
FROM employeesalary;

--TASK-18 SALARY+BONUS+ROUND--

SELECT
EMPLOYEENAME,
ROUND(ISNULL(SALARY,0)+ISNULL(BONUS,0), 0)
AS ROUNDEDTOTALINCOME
FROM employeesalary;