use newdb;

show tables;

create table employees(
 EmployeeID int primary key,
 Name varchar(50),
 Department varchar(50),
 Salary decimal(10,2),
 DOB Date,
 Gender char(1)
 );
 
Insert into employees(EmployeeID,Name,Department,Salary,DOB,Gender) values
(1, 'John', 'HR', 5000.00, '1979-08-14', 'M' ),
(2, 'Jane', 'IT', 6000.00, '1955-08-14', 'F'),
(3, 'Michael', 'IT', 7000.00, '1988-08-14', 'M'),
(4, 'Ronaldo', 'HR', 8000.00, '1999-08-14', 'M'),
(5, 'Joe buttler', 'Finance', 11000, '1969-08-14', 'M');

SELECT * FROM employees;


-- SQL Query to find the second highest salary of Employee.
SELECT MAX(Salary) AS Second_Highest_Salary
FROM employees
WHERE Salary < (SELECT MAX(Salary) FROM employees);

-- SQL Query to find Max Salary from each department.
SELECT Department, MAX(Salary) AS Max_Salary
FROM employees;

-- Write SQL Query to display the current date
SELECT CURRENT_DATE AS CurrentDate;

-- Write an SQL Query to check whether the date passed to Query is the date of the given format or not?
SELECT 
    CASE 
        WHEN STR_TO_DATE('2024-08-29', '%Y-%m-%d') IS NOT NULL THEN 'Valid Date'
        ELSE 'Invalid Date'
    END AS Date_Validation;


-- Write an SQL Query to print the name of the distinct employee whose DOB is between 01/01/1960 to 31/12/1975.
SELECT DISTINCT Name
FROM employees
WHERE DOB BETWEEN '1960-01-01' AND '1975-12-31';

-- Write an SQL Query to find the number of employees according to gender whose DOB is between 01/01/1960 to 31/12/1975.
SELECT Gender, COUNT(*) AS Num_of_employees
FROM employees
WHERE DOB BETWEEN '1960-01-01' AND '1975-12-31'
GROUP BY Gender;

-- Write an SQL Query to find an employee whose salary is equal to or greater than 10000.
SELECT *
FROM employees
WHERE Salary >= 10000;

-- Write an SQL Query to find the name of an employee whose name Start with ‘M’
SELECT Name
FROM employees
WHERE Name LIKE 'M%';

-- find all Employee records containing the word "Joe", regardless of whether it was stored as JOE, Joe, or joe.
SELECT *
FROM employees
WHERE LOWER(Name) LIKE '%joe%';

-- Write an SQL Query to find the year from date.
SELECT YEAR(DOB) AS Birth_Year
FROM employees;
