-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Supported Types of Joins in MySQL

-- 1. INNER JOIN: Returns rows where there is a match in both tables.
-- 2. LEFT JOIN: Returns all rows from the left table, and matched rows from the right table.
-- 3. RIGHT JOIN: Returns all rows from the right table, and matched rows from the left table.
-- 4. FULL JOIN: Returns all rows from both tables, where a match is found in either table.

-- Example of INNER JOIN

-- Suppose we have two tables 'employees' and 'departments':

-- employees table:
-- id | name | department_id

-- departments table:
-- id | name

-- We want to find the name of employees and their corresponding department names.

SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
    INNER JOIN departments d ON e.department_id = d.id;

-- Output:

-- employee_name | department_name

-- John Doe | Marketing
-- Jane Smith | Sales

-- Example of LEFT JOIN

-- Suppose we want to find the name of employees and their corresponding department names, even if there are no matching department records in the 'departments' table.

SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
    LEFT JOIN departments d ON e.department_id = d.id;

-- Output:

-- employee_name | department_name

-- John Doe | Marketing
-- Jane Smith | Sales
-- NULL | HR
-- NULL | Finance

-- Example of RIGHT JOIN

-- Suppose we want to find the name of employees and their corresponding department names, even if there are no matching employee records in the 'employees' table.

SELECT e.name AS employee_name, d.name AS department_name
FROM departments d
    RIGHT JOIN employees e ON e.department_id = d.id;

-- Output:

-- employee_name | department_name

-- John Doe | Marketing
-- Jane Smith | Sales
-- HR | NULL
-- Finance | NULL

-- Example of FULL JOIN

-- Suppose we want to find the name of employees and their corresponding department names, including rows where there are no matching records in either table.

SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
    FULL JOIN departments d ON e.department_id = d.id;
    
-- Output:

-- employee_name | department_name

-- John Doe | Marketing
-- Jane Smith | Sales
-- NULL | HR
-- NULL | Finance


