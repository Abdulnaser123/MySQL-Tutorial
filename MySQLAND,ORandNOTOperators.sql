-- -- The MySQL
-- AND, OR and NOT Operators
-- The WHERE clause can be combined
-- with AND, OR, and NOT operators.

-- Select all records from the customers table
SELECT *
FROM customers
WHERE
    -- The customer's city is either New York or Los Angeles
    city = 'New York' OR city = 'Los Angeles'
    -- AND the customer has made at least 5 purchases
    AND purchase_count >= 5
    -- AND the customer's age is between 25 and 35
    AND age BETWEEN 25 AND 35
    -- AND the customer's total purchase amount is greater than $1000
    AND total_purchase_amount > 1000
    -- AND the customer's last purchase date is within the last 30 days
    AND last_purchase_date >= DATE_SUB(NOW(), INTERVAL
30 DAY);

-- Select all records from the customers table
SELECT *
FROM customers
WHERE
    -- The customer's city is either New York or Los Angeles
    city IN ('New York', 'Los Angeles')
    -- AND the customer has made at least 5 purchases
    AND purchase_count >= 5
    -- AND the customer's age is between 25 and 35
    AND age BETWEEN 25 AND 35
    -- AND the customer's total purchase amount is greater than $1000
    AND total_purchase_amount > 1000
    -- AND the customer's last purchase date is within the last 30 days
    AND last_purchase_date >= DATE_SUB(NOW(), INTERVAL
30 DAY);
    
    