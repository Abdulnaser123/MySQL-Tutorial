-- The CASE statement goes through conditions and returns a value when the first condition is met 
-- (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. 
-- If no conditions are true, it returns the value in the ELSE clause.
-- If there is no ELSE part and no conditions are true, it returns NULL.

-- CASE Syntax

-- CASE expression
-- WHEN condition THEN result
-- [WHEN condition THEN result ...]
-- [ELSE result]
-- END

-- Example

SELECT name,
    CASE WHEN age > 50 THEN 'Old'
            WHEN age > 30 THEN 'Adult'
            ELSE 'Child'
            END AS age_group

FROM your_table;

-- Output

-- name | age_group
-- ----------------------------------
-- John Doe | Adult
-- Jane Smith | Child
-- Alice Johnson | Old

-- In this example, the CASE statement checks the age of each person in the table.

-- If the person's age is greater than 50, it returns 'Old'.

-- If the person's age is between 31 and 50 (inclusive), it returns 'Adult'.

-- If the person's age is less than 31, it returns 'Child'.

-- If no conditions are met, it returns NULL.

-- Note: The CASE statement can be used in SELECT, UPDATE, DELETE, and INSERT statements.


SELECT OrderID, Quantity,
    CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;

-- Output

-- OrderID | Quantity | QuantityText
-- -----------------------------
-- 101 | 35 | The quantity is greater than 30
-- 102 | 25 | The quantity is under 30
-- 103 | 30 | The quantity is 30
-- 104 | 40 | The quantity is greater than 30
-- 105 | 32 | The quantity is under 30


SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);

