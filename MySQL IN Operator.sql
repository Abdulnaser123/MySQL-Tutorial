-- The IN operator allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions.

-- IN Operator Syntax

SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (value1, value2, ..., valueN);

-- Example

SELECT employee_id, employee_name, department
FROM employees
WHERE department IN ('Sales', 'Marketing', 'Finance');

-- Multiple OR Conditions with IN Operator

SELECT employee_id, employee_name, department
FROM employees
WHERE department IN ('Sales', 'Marketing')
    OR employee_name LIKE 'John%';

-- Using NOT IN Operator

SELECT employee_id, employee_name, department
FROM employees
WHERE department NOT IN ('Sales', 'Marketing');

-- Using NOT IN Operator with LIKE Operator

SELECT employee_id, employee_name, department
FROM employees
WHERE department NOT IN ('Sales', 'Marketing')
    AND employee_name NOT LIKE 'John%';

-- Using NOT IN Operator with IN Operator

SELECT employee_id, employee_name, department
FROM employees
WHERE department NOT IN (
        SELECT department
    FROM employees
    WHERE department IN ('Sales', 'Marketing')
    )
    AND employee_name NOT LIKE 'John%';

-- Using NOT IN Operator with EXISTS Operator

SELECT employee_id, employee_name, department
FROM employees
WHERE department NOT IN (
    SELECT department
    FROM employees
    WHERE department IN ('Sales', 'Marketing')
)
    AND EXISTS (
        SELECT 1
    FROM employees
    WHERE department = 'Finance'
        AND employee_name NOT LIKE 'John%'
    );

-- Using NOT IN Operator with JOIN

SELECT e1.employee_id, e1.employee_name, e1.department
FROM employees e1
    JOIN employees e2 ON e1.department = e2.department
WHERE e1.department NOT IN ('Sales', 'Marketing')
    AND e2.employee_name NOT LIKE 'John%';
AND e2.department = 'Finance';
    AND e1.employee_id != e2.employee_id;




