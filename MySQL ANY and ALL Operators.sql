-- The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.

-- The ANY Operator

-- The ANY operator returns true if any of the subquery's values meet the condition.

-- Syntax:

-- SELECT column_name
-- FROM table_name
-- WHERE column_name ANY (subquery);    

-- Example:

SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
FROM OrderDetails
WHERE Quantity = 10);

-- The ALL Operator

-- The ALL operator returns true if all of the subquery's values meet the condition.

-- Syntax:

-- SELECT column_name
--FROM table_name
--WHERE column_name ALL (subquery);    

-- Example:

SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
FROM OrderDetails
WHERE Quantity > 10);
