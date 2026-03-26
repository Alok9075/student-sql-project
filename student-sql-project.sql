-- Student Management SQL Project
-- Author: Alok Thokale
-- Description: Basic SQL operations including CRUD, filtering, aggregation, and grading system

-- create database
create database student_info;
use student_info;

-- create table
create table student_table(
student_id int primary key,
student_name char (100),
marks int,
mobile_no int );

select* from student_table;

-- insert value in student table
insert into student_table( student_id, student_name, marks, mobile_no)
value(1, "alok", 35, 1111111111), (2, "pragati", 95, 1212121212), (3, "akshansh", 65, 1313131313);

-- add column 
alter table student_table
add column Gender varchar(50);

alter table student_table
add column DOB date;

-- rename column
alter table student_table
Rename column student_id to std_id;

-- describe student table
describe student_table;

-- update table info
UPDATE student_table
SET Gender = 'Male', DOB = '2000-05-10'
WHERE std_id = 1;

UPDATE student_table
SET Gender = 'Female', DOB = '2002-08-15'
WHERE std_id = 2;

UPDATE student_table
SET Gender = 'Male', DOB = '2001-12-20'
WHERE std_id = 3;

UPDATE student_table
SET DOB = '2020-05-20'
WHERE std_id = 3;

-- counts student
select count(*)
from  student_table;

-- table rename 
rename table student_table to Batch_26;

-- where clause with logical operators
select*
from Batch_26
where  std_id = 3 or marks >2000;

-- fetching recording having first letter of student_name 'a'
select*
from batch_26
where student_name like 'A%';

-- Names ending with 'a'
SELECT * FROM Batch_26
WHERE student_name LIKE '%a';

-- Names containing 'k'
SELECT * FROM Batch_26
WHERE student_name LIKE '%k%';

-- modify becouse Not correct for real-world use
ALTER TABLE Batch_26
MODIFY mobile_no VARCHAR(15);

-- modify becouse char wastes space
ALTER TABLE Batch_26
MODIFY student_name VARCHAR(100);

-- Aggregate Functions
-- Average marks
SELECT AVG(marks) FROM Batch_26;

-- Highest marks
SELECT MAX(marks) FROM Batch_26;

-- Grade System (Very Important)
SELECT student_name, marks,
CASE
    WHEN marks >= 90 THEN 'A'
    WHEN marks >= 60 THEN 'B'
    WHEN marks >= 30 THEN 'C'
    ELSE 'Fail'
END AS Grade
FROM Batch_26;

-- Lowest marks
SELECT MIN(marks) FROM Batch_26;

-- Sorting
-- Highest scorer first
SELECT * FROM Batch_26
ORDER BY marks DESC;

