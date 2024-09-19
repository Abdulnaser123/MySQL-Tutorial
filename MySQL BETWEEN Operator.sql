-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.


-- The following SQL query selects all records from the "employees" table where the employee's salary is between $50,000 and $100,000.

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 100000;

-- The following SQL query selects all records from the "employees" table where the employee's salary is between $50,000 and $100,000, and

-- the employee's hire date is within the last 5 years.

SELECT *
FROM employees

WHERE salary BETWEEN 50000 AND 100000

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR);

-- The following SQL query selects all records from the "employees" table where the employee's salary is between $50,000 and $100,000,

-- the employee's hire date is within the last 5 years, and

-- the employee's department is either "Sales" or "Marketing".

SELECT *

FROM employees

WHERE salary BETWEEN 50000 AND 100000

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR)

AND department IN
('Sales', 'Marketing');

-- The following SQL query selects all records from the "employees" table where the employee's salary is between $50,000 and $100,000,

-- the employee's hire date is within the last 5 years, and

-- the employee's department is either "Sales" or "Marketing", and

-- the employee's job title is either "Manager" or "Senior Manager".

SELECT *

FROM employees

WHERE salary BETWEEN 50000 AND 100000

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR)

AND department IN
('Sales', 'Marketing')

AND job_title IN
('Manager', 'Senior Manager');


-- The BETWEEN operator is inclusive: begin and end values are included.

-- If you want to include the end value, you should use <= instead of <.

-- If you want to exclude the end value, you should use >= instead of >.

-- For example:

SELECT *
FROM employees
WHERE salary >= 50000 AND salary <= 100000;

SELECT *
FROM employees
WHERE salary > 50000 AND salary < 100000;


-- The following SQL statement selects all products with a price between 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3:

SELECT *
FROM products
WHERE Price BETWEEN 10 AND 20
    AND CategoryID NOT IN (1, 2, 3);

-- The following SQL statement selects all products with a price between 10 and 20, and whose CategoryID is not 1, 2, or 3:

SELECT *
FROM products
WHERE Price BETWEEN 10 AND 20
    AND CategoryID NOT IN (1, 2, 3);

-- The BETWEEN operator is used to select values within a given range. It is inclusive, meaning that the start and end values are included in the result set.

-- For example:

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 100000;

SELECT *
FROM employees
WHERE salary >= 50000 AND salary <= 100000;

SELECT *
FROM employees

WHERE salary BETWEEN 50000 AND 100000

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR);

SELECT *

FROM employees

WHERE salary BETWEEN 50000 AND 100000

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR)

AND department IN
('Sales', 'Marketing');

SELECT *

FROM employees

WHERE salary BETWEEN 50000 AND 100000

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR)
    
AND department IN

('Sales', 'Marketing')

AND job_title IN
('Manager', 'Senior Manager');


-- BETWEEN Text Values Example

SELECT *
FROM employees
WHERE department BETWEEN 'Sales' AND 'Marketing';

SELECT *
FROM employees

WHERE department BETWEEN 'Sales' AND 'Marketing'

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR);

SELECT *

FROM employees

WHERE department BETWEEN 'Sales' AND 'Marketing'

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR)

AND job_title IN
('Manager', 'Senior Manager');


-- BETWEEN with NULL Values Example

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 100000
    AND department IS NOT NULL;

SELECT *
FROM employees

WHERE salary BETWEEN 50000 AND 100000

    AND department IS NOT NULL

    AND hire_date >= DATE_SUB(CURDATE(), INTERVAL
5 YEAR);


-- BETWEEN Dates Example

SELECT *
FROM orders
WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31';

SELECT *
FROM orders

WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31'

    AND customer_id IN (1, 2, 3);


-- BETWEEN with NULL Values Example

SELECT *
FROM orders

WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31'

    AND customer_id IS NOT NULL;

SELECT *
FROM orders

WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31'

    AND customer_id IS NOT NULL

    AND product_id IN (1, 2, 3);
