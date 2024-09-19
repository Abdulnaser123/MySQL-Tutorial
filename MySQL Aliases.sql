-- Aliases are used to give a table, or a column in a table, a temporary name.
-- Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.


-- Alis syntax

SELECT column1 AS alias1, column2 AS alias2, ...
FROM table_name;

-- Selecting the customer_id, first_name, last_name, and email columns from the customers table.

SELECT customer_id, first_name, last_name, email
FROM customers;

-- Adding an alias 'c' to the customers table for easier reference.

SELECT c.customer_id, c.first_name, c.last_name, c.email
FROM customers AS c;


-- The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):


SELECT Address, PostalCode, City, Country AS Address_Info
FROM customers;

-- OR

SELECT CustomerName, CONCAT_WS(', ', Address, PostalCode, City, Country) AS Address
FROM Customers;
