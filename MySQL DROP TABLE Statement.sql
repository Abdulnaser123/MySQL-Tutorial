-- The DROP TABLE statement is used to drop an existing table in a database.
-- Syntax

DROP TABLE table_name;

-- Example
-- Suppose we have a table named "employees" in the "company" database.

DROP TABLE employees;

-- This statement will remove the "employees" table from the "company" database.

-- Note: Make sure to backup your data before executing this command.

-- To verify the deletion, you can use the SHOW TABLES statement to list all tables in the database:

SHOW TABLES;

-- The output will not include the "employees" table.

-- If you want to delete all data in the "employees" table, you can use the TRUNCATE TABLE statement instead:

TRUNCATE TABLE employees;

-- This statement will remove all rows from the "employees" table.

-- Note: Make sure to backup your data before executing this command.

-- To verify the deletion, you can use the SELECT COUNT(*) FROM employees statement to check the number of rows in the table:

SELECT COUNT(*)
FROM employees;

-- The output will be 0, indicating that all data has been successfully deleted.

