-- MySQL INSERT INTO Statement


-- The INSERT INTO statement is used to insert new records in a table.

-- Syntax:
-- INSERT INTO table_name (column1, column2,...)
-- VALUES (value1, value2,...)

-- Example:
INSERT INTO employees
    (first_name, last_name, email, phone_number, hire_date)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '555-555-5555', '
    -- Use the CURRENT_DATE function to automatically set the hire_date to the current date
    CURRENT_DATE()'
    )

-- Insert Data Only in Specified Columns

INSERT INTO employees
    (first_name, last_name, email, phone_number)
VALUES
    ('Jane', 'Smith', 'jane.smith@example.com', '555-555-6666')

-- Insert Multiple Rows

INSERT INTO employees
    (first_name, last_name, email, phone_number, hire_date)
VALUES
    ('Alice', 'Johnson', 'alice.johnson@example.com', '555-555-7777', '
    CURRENT_DATE()'
    ),
    ('Bob', 'Williams', 'bob.williams@example.com', '555-555-8888', '
    CURRENT_DATE()'),
    ('Charlie', 'Brown', 'charlie.brown@example.com', '555-555-9999', '
    CURRENT_DATE()')


-- Insert Data Using a Subquery

INSERT INTO employees
    (first_name, last_name, email, phone_number, hire_date)
SELECT
    first_name, last_name, CONCAT(first_name, '.', last_name, '@example.com'), phone_number, hire_date
FROM
    employees
WHERE
    hire_date < '2021-01-01'

-- Insert Data Using a Common Table Expression

WITH
    employees_with_bonus
    AS
    (
        SELECT
            *,
            salary * 1.1 AS bonus_salary
        FROM
            employees
        WHERE
    hire_date < '2021-01-01'
    )

INSERT INTO employees
    (first_name, last_name, email, phone_number, hire_date, salary, bonus_salary)
SELECT
    first_name, last_name, CONCAT(first_name, '.', last_name, '@example.com'), phone_number, hire_date, salary, bonus_salary
FROM
    employees_with_bonus
WHERE
    hire_date < '2021-01-01'
-- Limit the number of rows inserted
LIMIT 10 AND salary <= 50000
