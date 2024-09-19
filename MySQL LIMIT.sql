-- The LIMIT clause is used to specify the number of records to return.
-- The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.


SELECT column1, column2, column3
FROM table_name
LIMIT
10;
-- Return the first 10 records

SELECT column1, column2, column3
FROM table_name
WHERE condition
LIMIT 10;
-- Return the first 10 records that meet the specified condition

SELECT column1, column2, column3
FROM table_name
ORDER BY column_name DESC
LIMIT 10; -- Return the first 10 records, ordered in descending order by the specified column

 
 SELECT column1
, column2, column3
 FROM table_name
 WHERE column_name = 'value'
 ORDER BY column_name DESC
 LIMIT 10;
-- Return the first 10 records where the specified column has the specified value, ordered in descending order by the specified column

SELECT column1, column2, column3
FROM table_name
WHERE column_name BETWEEN 'start_value' AND 'end_value'
ORDER BY column_name DESC
 LIMIT 10;
 -- Return the first 10 records where the specified column falls within the specified range, ordered in descending order by the specified column
 
 SELECT column1
, column2, column3
 FROM table_name
 WHERE column_name LIKE 'pattern%'
 ORDER BY column_name DESC
 LIMIT 10;
-- Return the first 10 records where the specified column starts with the specified pattern, ordered in descending order by the specified column

SELECT column1, column2, column3
FROM table_name
WHERE column_name
REGEXP 'pattern'
 ORDER BY column_name DESC
 LIMIT 10;
-- Return the first 10 records where the specified column matches the specified regular expression pattern, ordered in descending order by the specified column

SELECT column1, column2, column3
FROM table_name
WHERE column_name IN ('value1', 'value2', 'value3')
ORDER BY column_name DESC
 LIMIT 10;
 -- Return the first 10 records where the specified column has one of the specified values, ordered in descending order by the specified column
 
 SELECT column1
, column2, column3
 FROM table_name
 WHERE column_name NOT IN
('value1', 'value2', 'value3')
 ORDER BY column_name DESC
 LIMIT 10;
-- Return the first 10 records where the specified column does not have one of the specified values, ordered in descending order by the specified column

SELECT column1, column2, column3
FROM table_name
WHERE column_name IS NULL
ORDER BY column_name DESC
 LIMIT 10;
 -- Return the first 10 records where the specified column is NULL, ordered in descending order by the specified column
 
 SELECT column1
, column2, column3
 FROM table_name
 WHERE column_name IS NOT NULL
 ORDER BY column_name DESC
 LIMIT 10;
-- Return the first 10 records where the specified column is not NULL, ordered in descending order by the specified column

SELECT column1, column2, column3
FROM table_name
WHERE column_name BETWEEN 'start_value' AND 'end_value'
    AND column_name2 > 'value'
ORDER BY column_name DESC
 LIMIT 10;
 -- Return the first 10 records where the specified column falls within the specified range and the second column is greater than the specified value, ordered in descending order by the specified column
 
 SELECT column1
, column2, column3
 FROM table_name
 WHERE column_name BETWEEN 'start_value' AND 'end_value'
 AND column_name2 LIKE 'pattern%'
 ORDER BY column_name DESC
 LIMIT 10;
-- Return the first 10 records where the specified column falls within the specified range and the second column starts with the specified pattern, ordered in descending order by the specified column

SELECT column1, column2, column3
FROM table_name
WHERE column_name
REGEXP 'pattern'
 AND column_name2 > 'value'
 ORDER BY column_name DESC
 LIMIT 10;
 
