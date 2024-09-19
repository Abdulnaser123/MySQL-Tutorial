-- The UNION operator is used to combine the result-set of two or more SELECT statements.

-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types
-- The columns in every SELECT statement must also be in the same order

    SELECT column_name
    FROM table_name1
UNION
    SELECT column_name
    FROM table_name2;

-- Example usage:

-- Select the employee ID, first name, and last name from the Employees table
    SELECT employee_id, first_name, last_name
    FROM Employees

    -- Union the result-set with the employee ID, first name, last name, and job title from the Jobs table
UNION

    SELECT employee_id, first_name, last_name, job_title
    FROM Jobs;

-- The UNION operator will combine the result-sets and remove any duplicate rows

-- Output:
-- employee_id | first_name | last_name | job_title
-- ----------- | ---------- | --------- | ----------

-- 1           | John       | Doe       | Manager
-- 2           | Jane       | Smith     | Engineer

-- Note: The order of the rows may vary depending on the database engine used.

-- UNION ALL operator:

-- The UNION ALL operator combines the result-set of two or more SELECT statements without removing any duplicate rows

    SELECT column_name

    FROM table_name1

UNION ALL

    SELECT column_name

    FROM table_name2;

-- Example usage:

-- Select the employee ID, first name, and last name from the Employees table
    SELECT employee_id, first_name, last_name

    FROM Employees

    -- Union ALL the result-set with the employee ID, first name, last name, and job title from the Jobs table

UNION ALL

    SELECT employee_id, first_name, last_name, job_title

    FROM Jobs;

-- The UNION ALL operator will combine the result-sets, including duplicate rows

-- Output:
-- employee_id | first_name | last_name
-- ----------- | ---------- | ---------

-- 1           | John       | Doe

-- 2           | Jane       | Smith

-- 1           | John       | Doe

-- 2           | Jane       | Smith

-- Note: The order of the rows may vary depending on the database engine used.

-- The UNION operator is generally preferred over the UNION ALL operator because it removes duplicate rows, while the UNION ALL operator does not.

