-- THE WHERE CLAUSE IS USED TO FILTER RECORDS
-- SELECT COLUMN1, COLUMN2 ... FROM TABLE_NAME WHERE CONDITION

-- Example: Select all records from the "employees" table where the "salary" is greater than $50,000

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 50000;

-- Example: Select all records from the "employees" table where the "salary" is greater than $50,000 and the "department_id" is 10

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 50000 AND department_id = 10;

-- Example: Select all records from the "employees" table where the "salary" is greater than $50,000 and the "department_id" is 10,
-- but exclude any employees whose last name starts with the letter "S"

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary  > 5000 AND
    department_id = 10 AND
    last_name NOT LIKE 'S%';

-- Example: Select all records from the "employees" table where the "salary" is greater than $50,000 and the "department_id" is 10,
-- but exclude any employees whose last name starts with the letter "S", and also exclude any employees whose hire date is before January 1, 2010

SELECT employee_id, first_name, last_name, salary,
    hire_date
FROM employees
WHERE salary > 50000 AND department_id = 10 AND last_name NOT LIKE 'S%' AND hire_date >= 'january 1, 2010'

-- Example: Select all records from the "employees" table where the "salary" is greater than $50,000 and the "department_id" is 10,
-- but exclude any employees whose last name starts with the letter "S", and also exclude any employees whose hire date is before January 1, 2010,
-- and also exclude any employees whose job title is "Manager"

SELECT employee_id, first_name, last_name, salary,
    hire_date, job_title
FROM employees
WHERE salary > 50000 AND
    department_id = 10 AND
    last_name NOT LIKE 'S%' AND
    hire_date >= 'january 1, 2010' AND
    job_title != 'Manager';

-- Example: Select all records from the "employees" table where the "salary" is 
-- greater than $50,000 and the "department_id" is 10,
-- but exclude any employees whose last name starts with the letter "S", 
-- and also exclude any employees whose hire date is before January 1, 2010,

SELECT *
FROM employees
where salary > 50000 AND department_id = 10 AND last_name NOT LIKE 'S%' AND hire_date >= 'january 1, 2010'


-- Example: Select all records from the "employees" table where the "salary"
-- is greater than $50,000 and the "department_id" is 10,
-- but exclude any employees whose last name starts with the letter "S",
-- and also exclude any employees whose hire date is before January 1, 2010,
-- and also exclude any employees whose job title is "Manager",
-- and also exclude any employees whose age is less than 30

SELECT *
FROM employees
WHERE salary > 50000 AND department_id = 10 AND hire_date >= 'january 1, 2010' AND job_title != 'Manager' AND age >= 30

-- Example: Select all records from the "employees" table where the "salary"
-- is greater than $50,000 and the "department_id" is 10,
-- but exclude any employees whose last name starts with the letter "S",
-- and also exclude any employees whose hire date is before January 1, 2010,
-- and also exclude any employees whose job title is "Manager",
-- and also exclude any employees whose age is less than 30,
-- and also exclude any employees whose salary is less than $40,000
SELECT *
FROM employees
WHERE salary > 50000 AND department_id = 10 AND hire_date >= 'january 1, 2010' AND job_title != 'Manager' AND age >= 30 AND salary >= 40000;







