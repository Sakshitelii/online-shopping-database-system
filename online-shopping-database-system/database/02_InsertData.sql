USE OnlineShoppingSystem;

-- Customers Table 

INSERT INTO Customers(FirstName, LastName, Email, Phone, Address, City, PostalCode, Country)
VALUES
('Hardik', 'Rathod', 'hardikrathd@gmail. com', '123456789', 'Abc chowk', 'Mumbai', '221141', 'India'),
('Sanika', 'Mohite', 'sanika123@gmail.com', '9998854231', 'Nagar area', 'Pune', '113020', 'India')
('Shreya', 'Shinde', 'shreya12shine@gmail.com', '9812345124', 'Sagart', 'Dublin', 'D08EH12X', 'Ireland'),
('Dia', 'Jadhav', 'jadhavdia@gmail.com', '1020321345', ' Brickfield12', 'Dublin', 'D012EhXT', 'Ireland'),
('Siddhi', 'Gaikwad', 'gaikwadsiddhi@gmail.com', '7755055587', 'Narayan chowk', 'Pune', '113265', 'India');
SELECT * FROM Customers;

--Admin Table

INSERT INTO Admin (Username, Password, Role, Email)
VALUES
('sakshi', 'sakshi123', 'manager', 'sakshi@gmail.com'),
('rakesh','rakesh234', 'staff', 'rakesh01@gmail.com'),
('sushant', '@sushant', 'superAdmin','sushat234@gmail.com'),
('sanket', '123sank', 'viewer', 'sanket2004@gmail.com'),
('akshay','ak12shay@','staff','akshay1818@gmail.com');
SELECT * FROM Admin;

--Category Table
INSERT INTO Category( CategoryName, Description, AdminID)
VALUES
('Clothing', 'All types of clothing items', 1),
('Electronics', 'Mobile phones, laptops, and accessories', 2),
('Cosmetics', 'Makeup and skincare products', 2),
('Kids Wear', 'Clothing and shoes for children', 1),
('Groceries', 'Daily food and household supplies', 2);
SELECT * FROM Category;

--Product Table

INSERT INTO Product(ProductName, Description, Brand, Price, Stock, Size, Color, CategoryID, AdminID, ProductDetails)
VALUES
('Running Shoes', 'Comfortable sports shoes', 'Nike', 120.50, 50, '9', 'Black', 1, 1,
'<Product><Material>Mesh</Material><Warranty>1 Year</Warranty><Weight>0.8kg</Weight></Product>'),
('T-Shirt', 'Cotton casual t-shirt', 'Puma', 25.00, 100, 'M', 'Blue', 1, 2,
'<Product><Material>Cotton</Material><Warranty>6 Months</Warranty><ColorCode>#0000FF</ColorCode></Product>'),
('Laptop', 'Gaming laptop with RTX 4060', 'Dell', 1500.00, 20, NULL, 'Silver', 3, 2,
'<Product><Processor>Intel i7</Processor><RAM>16GB</RAM><Storage>1TB SSD</Storage></Product>'),
('Smartphone', 'Latest Android smartphone', 'Samsung', 800.00, 40, NULL, 'White', 3, 1,
'<Product><Processor>Snapdragon 8 Gen 2</Processor><RAM>8GB</RAM><Storage>128GB</Storage></Product>'),
('Handbag', 'Leather handbag for women', 'Gucci', 350.00, 15, NULL, 'Brown', 4, 1,
'<Product><Material>Leather</Material><Warranty>1 Year</Warranty><Dimensions>30x20x10cm</Dimensions></Product>');
SELECT ProductName, ProductDetails FROM Product;

--Orders Table

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount, OrderStatus)
VALUES
(1 '2024-12-20',250.50 'Pending'),
(2, '2026-02-21', 450.00 'Shipped'),
(3 '2025-12-06', 120.75, 'Delivered'),
(4, '2025-12-10', 320.00 'Pending'),
(5, '2026-01-25', 540.25, 'Cancelled');
SELECT * FROM Orders;

--OderItem Table

INSERT INTO OrderItem (OrderID, ProductID, Quantity, UnitPrice, SubTotal)
VALUES
(1, 1, 2, 120.50, 2 * 120.50),-- 2 Running Shoes
(1, 2, 3, 25.00, 3 * 25.00),-- 3 T-Shirts
(2, 3, 1, 1500.00, 1 * 1500.00), -- 1 Laptop
(3, 4, 2, 800.00, 2 * 800.00),-- 2 Smartphones
(4, 5, 1, 350.00, 1 * 350.00);-- 1 Handbag
SELECT * FROM OrderItem;

--Payment Table

INSERT INTO Payment (OrderID, PaymentDate, PaymentMethod, PaymentAmount, PaymentStatus
VALUES
(1, '2025-02-03', 'Credit Card', 316.00, 'Paid'),
(2, '2026-02-04', 'Debit Card', 1500.00, 'Paid'),
(3, '2025-12-05', 'UPI', 1600.00, 'Pending'),
(4, '2025-12-13','Net Banking', 350.00, 'Paid'),
(5, '2025-01-30', 'Net Banking', 00.00, 'Pending');
SELECT * FROM Payment;

--Delivery Table

INSERT INTO Delivery (OrderID, DeliveryAddress, DeliveryDate, DeliveryStatus, TrackingNumber)
VALUES
(1, 'Abc Chowk, Mumbai', '2025-02-03', 'Delivered', 'TN12345'),
(2, 'Nagar Area, Pune', '2026-02-01', 'Pending', 'TN2378'),
(3, 'Sagart', '2025-12-05', 'Out for Delivery', 'TN11109'),
(4, 'Brickfield12', '2025-12-12', 'Shipped', 'TN98767'),
(5, 'Narayan Chowk', '2026-01-24', 'Processing', 'TN456732');
SELECT * FROM Delivery;


--Review Table 

INSERT INTO Review (ProductID, CustomerID, Rating, Comment, ReviewDate, Title)
VALUES
(1, 1, 5, 'Very comfortable and stylish shoes. I love them!', '2025-03-03', 'Best Running Shoes')
(2, 2, 4, 'Good quality t-shirt but size is a bit small. ', '2025-02-04', 'Nice T-shirt'),
(3, 3, 5, 'Amazing laptop! Fast performance and great display.', '2025-12-05', 'Worth the Price')
(4, 1, 3, 'Phone is good but battery drains fast. ', '2025-02-13', 'Decent Smartphone'),
(5, 4, 4, 'Nice leather bag, looks premium and stylish. ', '2025-01-30', 'Stylish Handbag');
SELECT * FROM Review





