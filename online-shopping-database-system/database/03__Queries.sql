USE OnlineShoppingSystem;

-- JOIN between 3 tables + Sorting Query

SELECT Customers.FirstName, Customers.LastName, Orders.OrderDate
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Orders.OrderDate ASC;

-- GROUP BY + HAVING Query

SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) >= 1;

-- UPDATE Query

UPDATE Product
SET Price = 49.99
WHERE ProductID = 1;

-- DELETE Query

DELETE FROM Review
WHERE ReviewID = 3;

--User Defined SQL Function Query

CREATE FUNCTION CountCustomers()
RETURNS INT
AS
BEGIN
    RETURN (SELECT COUNT(*) FROM Customers);
END;
GO

SELECT dbo.CountCustomers() AS TotalCustomers;

