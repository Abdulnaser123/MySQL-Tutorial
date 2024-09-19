-- The UPDATE statement is used to modify the existing records in a table.

-- UPDATE Syntax

UPDATE table_name
SET column1 = value1,
    column2 = value2,
    ...
WHERE condition;

-- Example

UPDATE customers    
    SET first_name = 'John',
        last_name = 'Doe',
        email = 'johndoe@example.com'
        WHERE customer_id = 123;

-- Update multiple columns with a subquery

UPDATE customers    
    SET (first_name, last_name, email) =
(
    SELECT first_name, last_name, email
FROM temporary_table
WHERE customer_id = 123
    )


-- Update a column based on a condition

UPDATE customers    
    SET email = CONCAT(first_name, '.', last_name, '@example.com')
    WHERE first_name LIKE 'J%' AND last_name LIKE 'Doe%';

-- Update a column based on a calculated value

UPDATE customers    
    SET age = TIMESTAMPDIFF(YEAR, birth_date, CURDATE())
    WHERE birth_date IS NOT NULL;

-- Update a column based on a value from another table

UPDATE customers    
    SET country = countries.country_name
    FROM countries
    WHERE customers.country_id = countries.id;

-- Update a column based on a value from a calculated column

UPDATE customers    
    SET customer_status = CASE
        WHEN age >= 18 THEN 'Adult'
        ELSE 'Minor'
    END;

-- Update multiple columns based on a condition

UPDATE customers    
    SET first_name = 'John',
        last_name = 'Doe',  
        email = 'johndoe@example.com'
        WHERE customer_id IN (123, 456, 789);

-- Update multiple columns with a subquery

UPDATE customers    
    SET (first_name, last_name, email) =
(
    SELECT first_name, last_name, email
FROM temporary_table
WHERE customer_id IN (123, 456, 789)
    )
    