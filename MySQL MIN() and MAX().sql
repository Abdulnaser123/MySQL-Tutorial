-- The MIN() function returns the smallest value of the selected column.
-- The MAX() function returns the largest value of the selected column.

-- MIN Syntax
-- MIN(column_name)
-- MIN(expression)

-- MAX Syntax
-- MAX(column_name)
-- MAX(expression)

-- Calculate the minimum and maximum values of the 'price' column
SELECT MIN(price) AS min_price, MAX(price) AS max_price
FROM products

-- Calculate the minimum and maximum values of the 'price' column, but only for products with a quantity greater than 10

SELECT MIN(price) AS min_price, MAX(price) AS max_price
FROM products
WHERE quantity > 10;

-- Calculate the minimum and maximum values of the 'price' column, but only for products with a quantity greater than 10 and a price greater than $100

SELECT MIN(price) AS min_price, MAX(price) AS max_price
FROM products
WHERE quantity > 10
    AND price > 100;


-- Calculate the minimum and maximum values of the 'price' column, but only for products with a quantity greater than 10 and a price greater than $100, and also include

-- products that have been discontinued (the 'discontinued' column is set to 1)

SELECT MIN(price) AS min_price, MAX(price) AS max_price
FROM products
WHERE quantity > 10
    AND price > 100
    AND discontinued = 0;

-- Calculate the average price of products with a quantity greater than 10 and a price greater than $100, and also include  

-- products that have been discontinued (the 'discontinued' column is set to 1)

SELECT AVG(price) AS average_price
FROM products
WHERE quantity > 10
    AND price > 100
    AND discontinued = 0;

-- Calculate the median price of products with a quantity greater than 10 and a price greater than $100, and also include

-- products that have been discontinued (the 'discontinued' column is set to 1)

SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price) AS median_price
FROM products
WHERE quantity > 10
    AND price > 100
    AND discontinued = 0;

-- Calculate the mode price of products with a quantity greater than 10 and a price greater than $100, and also include

-- products that have been discontinued (the 'discontinued' column is set to 1)

SELECT mode() WITHIN GROUP (ORDER BY price) AS mode_price
FROM products
WHERE quantity > 10
    AND price > 100
    AND discontinued = 0;

-- Calculate the standard deviation of the 'price' column of products with a quantity greater than 10 and a price greater than $100, and also include

-- products that have been discontinued (the 'discontinued' column is set to 1)

SELECT STDDEV(price) AS std_deviation
FROM products
WHERE quantity > 10
    AND price > 100
    AND discontinued = 0;
    
