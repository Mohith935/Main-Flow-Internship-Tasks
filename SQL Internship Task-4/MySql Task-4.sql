use newdb;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,  -- PRIMARY KEY ensures each department has a unique ID
    department_name VARCHAR(100) UNIQUE NOT NULL  -- UNIQUE ensures no two departments have the same name
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,  -- PRIMARY KEY ensures each employee has a unique ID
    first_name VARCHAR(50) NOT NULL,  -- NOT NULL ensures first name cannot be null
    last_name VARCHAR(50) NOT NULL,  -- NOT NULL ensures last name cannot be null
    email VARCHAR(100) UNIQUE,  -- UNIQUE ensures email addresses are unique
    emp_status VARCHAR(10) DEFAULT 'Active',  -- DEFAULT sets today's date as the default hire date
    salary DECIMAL(10, 2) CHECK (salary > 0),  -- CHECK ensures salary is positive
    department_id INT,  -- Foreign key referencing department
    FOREIGN KEY (department_id) REFERENCES departments(department_id)  -- FOREIGN KEY ensures referential integrity
);

-- Insert into departments table

INSERT INTO departments (department_id, department_name)
VALUES 
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

select * from departments;

-- Insert into employees table
INSERT INTO employees (employee_id, first_name, last_name, email, emp_status, salary, department_id)
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', 'Active', 50000.00, 1),
(2, 'Jane', 'Smith', 'jane.smith@example.com', DEFAULT, 60000.00, 2),
(3, 'Michael', 'Brown', 'michael.brown@example.com', 'Inactive', 70000.00, 3),
(4, 'Ronaldo', 'Christiano', 'christiano.ron@fifa.com', DEFAULT, 80000.00, 2); 

select * from employees;

INSERT INTO employees (employee_id, first_name, last_name, email, emp_status, salary, department_id)
VALUES 
(5, 'Ronaldo', 'Christiano', 'christiano.ron1@fifa.com', DEFAULT, 0, 2);  -- checking constraint put on salary using similar entry




