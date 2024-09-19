-- The EXISTS operator is used to test for the existence of any record in a subquery.
-- The EXISTS operator returns TRUE if the subquery returns one or more records.

-- EXISTS Syntax

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE EXISTS (subquery);

-- Example

-- Find customers who have made at least 5 purchases in the past month.

SELECT customer_id, customer_name
FROM customers
WHERE EXISTS (
    SELECT 1
FROM purchases
WHERE purchases.customer_id = customers.customer_id
    AND purchases.purchase_date >= DATE_SUB(NOW(), INTERVAL
1 MONTH)
)

-- Find customers who have made at least 5 purchases in the past month, and also have an account balance greater than $1000.

SELECT customer_id, customer_name
FROM customers
WHERE EXISTS (
    SELECT 1
FROM purchases
WHERE purchases.customer_id = customers.customer_id
    AND purchases.purchase_date >= DATE_SUB(NOW(), INTERVAL
1 MONTH)
)
    AND EXISTS
(
        SELECT 1
FROM accounts
WHERE accounts.customer_id = customers.customer_id
    AND accounts.balance > 1000
    );

-- The following SQL statement returns TRUE and lists the suppliers with a product price equal to 22:

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName
FROM Products
WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);

