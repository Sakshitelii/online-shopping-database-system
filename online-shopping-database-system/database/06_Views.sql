USE OnlineShoppingSystem;

--View 1 — Customer Orders View

CREATE VIEW ViewCustomerOrders AS
SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName,
       Orders.OrderID, Orders.OrderDate, Orders.TotalAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT * FROM ViewCustomerOrders;

--View 2 — Order Product Details View

CREATE VIEW ViewOrderProducts AS
SELECT Orders.OrderID, Product.ProductName, OrderItem.Quantity
FROM Orders
JOIN OrderItem ON Orders.OrderID = OrderItem.OrderID
JOIN Product ON OrderItem.ProductID = Product.ProductID;

SELECT * FROM ViewOrderProducts;