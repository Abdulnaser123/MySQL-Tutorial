-- MySQL ORDER BY Keyword
-- The
-- ORDER BY keyword is used to sort the result-set
-- in ascending or descending order.

-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
SELECT *
FROM customers
ORDER BY last_name ASC, first_name ASC;
-- Sorts by last name in ascending order, then by first name in ascending order

SELECT *
FROM customers
ORDER BY last_name DESC, first_name DESC;
-- Sorts by last name in descending order, then by first name in descending order

-- The ORDER BY keyword can also sort by multiple columns.
SELECT *
FROM customers
-- Sorts by customer_id in ascending order, then by last_name in ascending order, then by first_name in ascending order
ORDER BY customer_id ASC, last_name ASC, first_name ASC;

SELECT *
FROM customers
-- Sorts by customer_id in descending order, then by last_name in descending order, then by first_name in descending order
ORDER BY customer_id DESC, last_name DESC, first_name DESC;

-- The ORDER BY keyword can also sort by expressions and functions.
-- Sorts by the length of the last names in ascending order
SELECT *
FROM customers
ORDER BY LENGTH(last_name) ASC;

-- Sorts by the number of characters in the first names in descending order
SELECT *
FROM customers
ORDER BY CHAR_LENGTH(first_name) DESC;

-- Sorts by the number of characters in the first names in ascending order, then by the number of characters in the last names in descending order
SELECT *
FROM customers

-- Sorts by the number of characters in the first names in ascending order
ORDER BY CHAR_LENGTH(first_name) ASC,
    -- Sorts by the number of characters in the last names in descending order
    CHAR_LENGTH(last_name) DESC;
