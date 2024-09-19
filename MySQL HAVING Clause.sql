-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.


-- The HAVING clause is used to filter records based on a condition after the GROUP BY clause has been applied.

-- Syntax:

-- SELECT column1, column2,...
-- FROM table_name
-- WHERE condtion
-- GROUP BY column1, column2,...
-- HAVING condition
-- ORDER BY column1, column2,...

-- The HAVING clause filters groups before calculating aggregate functions.

-- Let's say we want to find the average salary of employees in each department, but only for departments with more than 5 employees.

SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5

-- The above query will return the department_id and the average salary of employees in each department that have more than 5 employees.

-- Note:

-- The HAVING clause can be used with aggregate functions (COUNT, SUM, AVG, MAX, MIN) to filter groups before calculating the aggregate values.

-- The WHERE clause cannot be used with aggregate functions in this case. Instead, we use the HAVING clause.


-- MySQL HAVING Examples

-- Example 1: Find the average salary of employees in each department, but only for departments with more than 5 employees.

SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5

-- Example 2: Find the maximum salary of employees in each department, but only for departments with more than 5 employees.

SELECT department_id, MAX(salary) AS maximum_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5

-- Example 3: Find the minimum salary of employees in each department, but only for departments with more than 5 employees.

SELECT department_id, MIN(salary) AS minimum_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5

-- Example 4: Find the total number of employees in each department, but only for departments with more than 5 employees.

SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5

-- Example 5: Find the average salary of employees in each department, but only for departments with more than 5 employees and a salary greater than $50,000.

SELECT department_id, AVG(salary) AS average_salary
FROM employees
WHERE salary > 50000
GROUP BY department_id
HAVING COUNT(*) > 5

-- With JOINS

-- Example 6: Find the average salary of employees in each department, but only for departments with more than 5 employees and a salary greater than $50,000.

SELECT d.department_id, AVG(e.salary) AS average_salary
FROM departments d
    JOIN employees e ON d.department_id = e.department_id
WHERE e.salary > 50000
GROUP BY d.department_id
HAVING COUNT(*) > 5

-- Example 7: Find the maximum salary of employees in each department, but only for departments with more than 5 employees and a salary greater than $50,000.

SELECT d.department_id, MAX(e.salary) AS maximum_salary
FROM departments d
    JOIN employees e ON d.department_id = e.department_id
WHERE e.salary > 50000
GROUP BY d.department_id
HAVING COUNT(*) > 5

-- Example 8: Find the minimum salary of employees in each department, but only for departments with more than 5 employees and a salary greater than $50,000.

SELECT d.department_id, MIN(e.salary) AS minimum_salary
FROM departments d
    JOIN employees e ON d.department_id = e.department_id
WHERE e.salary > 50000
GROUP BY d.department_id
HAVING COUNT(*) > 5
-- Example 9: Find the total number of employees in each department, but only for departments with more than 5 employees and a salary greater than $50,000.

SELECT d.department_id, COUNT(*) AS total_employees
FROM departments d
    JOIN employees e ON d.department_id = e.department_id
WHERE e.salary > 50000
GROUP BY d.department_id
HAVING COUNT(*) > 5


