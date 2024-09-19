-- MySQL NULL Values

-- A field with a NULL value is a field with no value.

-- Note: A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value is one that has been left blank during record creation!

-- Example 1: Checking for NULL values in a table
SELECT *
FROM your_table_name
WHERE your_column_name IS NULL;

--  SQL lists all customers with a NULL value in the "Address" field:

SELECT *
FROM customers
WHERE Address IS NULL;

-- Example 2: Updating NULL values
UPDATE your_table_name
 SET your_column_name = 'new_value'
WHERE your_column_name IS NULL;

--  SQL updates the "Address" field of all customers with a NULL value with "No Address":

UPDATE customers
SET Address = 'No Address'
 WHERE Address IS NULL;

-- Example 3: Deleting NULL values
DELETE FROM your_table_name
WHERE your_column_name IS NULL;

--  SQL deletes all customers with a NULL value in the "Address" field:

DELETE FROM customers
WHERE Address IS NULL;

-- MySQL NOT NULL Constraints

-- A NOT NULL constraint enforces that a column cannot contain a NULL value.

-- Note: NOT NULL constraints are used to ensure data integrity and prevent errors.

-- Example 1: Creating a table with a NOT NULL constraint
CREATE TABLE your_table_name
(
    column_name1 datatype NOT NULL,
    column_name2 datatype,
    ...
    column_nameN datatype NOT NULL
    -- ... other table structure details ...
    PRIMARY KEY
    (primary_key_column)
    -- ... other primary key constraints ...
    FOREIGN KEY
    (foreign_key_column) REFERENCES other_table_name
    (other_table_column)
    -- ... other foreign key constraints ...
    UNIQUE
    (unique_column)
)

    -- Example 2: Inserting data into a table with a NOT NULL constraint
    INSERT INTO your_table_name
        (column_name1, column_name2, ...)
    VALUES
        ('value1', 'value2', ...);
    -- ... insert values for column_name1, column_name2, ...
    
