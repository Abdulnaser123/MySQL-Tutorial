-- The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

-- The INSERT INTO SELECT statement requires that the data types in source and target tables matches.

-- INSERT INTO SELECT Syntax

INSERT INTO target_table
    (column1, column2, ...)
SELECT column1, column2, ...
FROM source_table
WHERE condition;

-- Example: Copy data from a source table to a target table, but exclude rows where a specific column has a null value

INSERT INTO target_table

-- MySQL INSERT INTO SELECT Examples

-- Copy all columns from the source table to the target table
INSERT INTO target_table
SELECT *
FROM source_table;

-- Copy specific columns from the source table to the target table
INSERT INTO target_table
    (column1, column2, column3)
SELECT column1, column2, column3
FROM source_table;

-- Copy rows from the source table to the target table where a specific column has a null value
INSERT INTO target_table
    (column1, column2, column3)
SELECT column1, column2, column3
FROM source_table
WHERE column4 IS NOT NULL;

-- MySQL INSERT INTO SELECT Examples

-- Copy all columns from the source table to the target table, excluding certain columns
INSERT INTO target_table
(
SELECT *
EXCEPT (column1, column2))

SELECT *
FROM source_table;

-- Copy specific columns from the source table to the target table, excluding certain columns
INSERT INTO target_table
(
SELECT column1, column2, column3
EXCEPT (column4, column5))

SELECT column1, column2, column3
FROM source_table;

-- Copy rows from the source table to the target table, excluding certain columns, and where a specific column has a null value
INSERT INTO target_table
(
SELECT column1, column2, column3
EXCEPT (column4, column5))
SELECT column1, column2, column3
FROM source_table
WHERE column6 IS NOT NULL;


INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM Suppliers;

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM Suppliers
WHERE Country = 'USA';

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM Suppliers
WHERE Country IN ('USA', 'Canada');

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM Suppliers
WHERE Country NOT IN ('USA', 'Canada');