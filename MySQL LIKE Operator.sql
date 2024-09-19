-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- There are two wildcards often used in conjunction with the LIKE operator:
-- percent sign
-- (%) represents zero, one, or multiple characters
-- The underscore sign
-- (_) represents one, single character

-- The following SQL statement retrieves all records from the "employees" table where the first name starts with the letter "J":

SELECT *
FROM employees

WHERE first_name LIKE 'J%'

-- The '%' sign at the beginning of the pattern ensures that the search starts with 'J', and the '%' sign at the end of the pattern ensures that the search ends with any characters.

-- The following SQL statement retrieves all records from the "employees" table where the last name ends with the letter "n":

SELECT *
FROM employees

WHERE last_name LIKE '%n'

-- The '%' sign at the end of the pattern ensures that the search ends with 'n', and the '%' sign at the beginning of the pattern ensures that the search starts with any characters.

-- The following SQL statement retrieves all records from the "employees" table where the last name contains the letter "a":

SELECT *
FROM employees

WHERE last_name LIKE '%a%'

-- The following SQL statement selects all customers with a CustomerName that have "r" in the second position:
SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';

-- The following SQL statement selects all customers with a CustomerName that have "r" in the second position and are from France:
SELECT *
FROM Customers

WHERE CustomerName LIKE '_r%' AND Country = 'France';

-- The following SQL statement selects all customers with a CustomerName that have "r" in the second position and are from France, and have a postal code starting with "1":

SELECT *
FROM Customers

WHERE CustomerName LIKE '_r%' AND Country = 'France' AND PostalCode LIKE '1%';

-- The following SQL statement selects all customers with a CustomerName that have "r" in the second position and are from France, and have a postal code starting with "1" or "2
SELECT *
FROM Customers

WHERE CustomerName LIKE '_r%' AND Country = 'France' AND (PostalCode LIKE '1%' OR PostalCode LIKE '2%');

-- The following SQL statement selects all customers with a CustomerName that have "r" in the second position and are from France, and have a postal code starting with "1" or "2
-- The '%' sign is used as a wildcard to match any characters
SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%' AND Country = 'France' AND PostalCode LIKE '1%' OR PostalCode LIKE '2%';
-- The '^' symbol is used to negate the pattern
SELECT *
FROM Customers
WHERE CustomerName NOT LIKE '_r%' AND Country = 'France' AND PostalCode LIKE '1%' OR PostalCode LIKE '2%';


-- The following SQL statement selects all customers with a CustomerName that starts with "a" and are at least 3 characters in length:

SELECT *
FROM Customers
WHERE CustomerName LIKE 'a__%';


-- The following SQL statement selects all customers with a CustomerName that starts with "a" and ends with "n", and are at least 3 characters in length:

SELECT *
FROM Customers
WHERE CustomerName LIKE 'a_%n';

-- The following SQL statement selects all customers with a CustomerName that starts with "a" and contains the letter "n", and are at least 3 characters in length:

SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%n%';

