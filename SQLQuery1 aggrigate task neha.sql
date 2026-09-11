CREATE DATABASE COMPANYSR ;

USE COMPANYSR ;


CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(20),
  marks INT
);

INSERT INTO students VALUES
(1, 'Aman', 'BCA', 75),
(2, 'Neha', 'MCA', 90),
(3, 'Karan', 'BCA', 65),
(4, 'Riya', 'BBA', 80),
(5, 'Meena', 'MCA', 88);

SELECT *
FROM students;


---EXAMPLE -1--- 
--AVERAGE MARKS PER COURSE--

SELECT ,name, AVG(MARKS) AS AVG_MARKS
FROM students
GROUP BY course ;


--EXAMPLE -2 -- Courses where average marks > 70--
SELECT COURSE, AVG(MARKS) AS AVG_MARKS
FROM students
GROUP BY course
HAVING AVG(MARKS) >70 ;

--Example 3 – LIMIT ---- Top 3 students by marks--
SELECT TOP 3 NAME, MARKS
FROM students
ORDER BY marks DESC ;

--EXAMPLE 4 ---- Students in BCA or MCA with marks between 70 and 90

SELECT * FROM students
WHERE course IN ('BCA', 'MCA')
AND marks BETWEEN 70 AND 90 ;


--Example 5 – Aggregate Functions---
SELECT
COUNT(*) AS TOTAL_STUDENT,
SUM(MARKS) AS TOTAL_MARKS,
AVG(MARKS) AS AVG_MARKS,
MAX(MARKS) AS HIGHEST_MARKS,
MIN(MARKS) AS LOWEST_MARKS
FROM students ;



--PRECTIC TASK ---
--1--Count the total number of students in the table.
SELECT
COUNT(*) AS TOTAL_STUDENT
FROM students ;

--2 --Display the highest and lowest marks.
SELECT 
MAX(MARKS) AS HIGHEST_MARKS,
MIN(MARKS) AS LOWEST_MARKS
FROM students ;
---3--Show total marks obtained by students in each course.
SELECT SUM(MARKS) AS TOTAL_MARKS
FROM students 
GROUP BY course,name ;

--4--Display the average marks per course using GROUP BY.---
select course, avg(marks) as avgrage_mark
from students
group by course ;

--5--Show only those courses whose average marks exceed 80 using HAVING.
select course, avg(marks) as avgrage_mark
from students
group by course
having avg(marks) >80 ;

--6--- Display the top 2 scoring students using ORDER BY and LIMIT.
select top 2 name,marks
from students
order by marks desc ;


--7-- Show all students whose marks are between 60 and 90.--
select *
from students
where marks between 60 and 80 ;



--8-- Display all students enrolled in BCA or MCA using IN.--
select *
from students
where course in ('bca' ,'mca');

--9--Find the total number of unique courses (COUNT(DISTINCT course)).
select
count( distinct course) as total_course
from students ;

--10--Display names of students whose names start with ‘N’ using LIKE.--
select name
from students
where name like 'n%';





