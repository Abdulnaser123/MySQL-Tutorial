-- The DELETE statement is used to delete existing records in a table.

-- DELETE syntax

DELETE FROM table_name
WHERE condition

-- Example

-- Delete all records where the age is greater than 30

DELETE FROM customers
    WHERE age > 30;

-- Delete all records where the age is greater than 30 and the customer's first name starts with the letter 'A'

DELETE FROM customers
    WHERE age > 30 AND first_name LIKE 'A%';

-- Delete all records where the customer's first name starts with the letter 'A' and the last name starts with the letter 'S'

DELETE FROM customers
    WHERE first_name LIKE 'A%' AND last_name LIKE 'S%';

-- Delete all records where the customer's age is between 25 and 35

DELETE FROM customers
    WHERE age BETWEEN 25 AND 35;

-- Delete all records where the customer's email address ends with the domain '.com'

DELETE FROM customers
    WHERE email LIKE '%.com';

-- Delete all records where the customer's first name is 'John' and the last name is 'Doe'

DELETE FROM customers
    WHERE first_name = 'John' AND last_name = 'Doe';

-- Delete all records where the customer's age is greater than 30 and the customer's email address ends with the domain '.com'

DELETE FROM customers
    WHERE age > 30 AND email LIKE '%.com';

-- Delete all records where the customer's first name is 'John' and the last name is 'Doe' or the customer's age is greater than 30

DELETE FROM customers
    WHERE (first_name = 'John' AND last_name = 'Doe') OR age > 30;


-- Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!

-- It's a good practice to backup your database before executing DELETE statements to prevent data loss.

-- After executing the DELETE statements, you can verify the changes by selecting the records from the table using SELECT statements.

