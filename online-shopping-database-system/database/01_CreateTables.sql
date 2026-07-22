CREATE DATABASE OnlineShoppingSystem;
GO
USE OnlineShoppingSystem;
GO

-- Customers
CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(60),
    LastName VARCHAR(60),
    Email VARCHAR(150),
    Phone VARCHAR(20),
    Address VARCHAR(200),
    City VARCHAR(20),
    PostalCode VARCHAR(15),
    Country VARCHAR(20)
);

-- Admin
CREATE TABLE Admin (
    AdminID INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(70),
    Password VARCHAR(50),
    Role VARCHAR(10),
    Email VARCHAR(200)
);

-- Category
CREATE TABLE Category (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(100),
    Description VARCHAR(200),
    AdminID INT,
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);

-- Product
CREATE TABLE Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(50),
    Description VARCHAR(200),
    Brand VARCHAR(20),
    Price DECIMAL(10,2),
    Stock INT,
    Size VARCHAR(10),
    Color VARCHAR(10),
    CategoryID INT,
    AdminID INT,
    ProductDetails XML,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);

-- Orders
CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(13,2),
    OrderStatus VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- OrderItem
CREATE TABLE OrderItem (
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(13,2),
    SubTotal DECIMAL(15,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Payment
CREATE TABLE Payment (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,
    PaymentDate DATE,
    PaymentMethod VARCHAR(20),
    PaymentAmount DECIMAL(15,2),
    PaymentStatus VARCHAR(30),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Delivery
CREATE TABLE Delivery (
    DeliveryID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,
    DeliveryAddress VARCHAR(200),
    DeliveryDate DATE,
    DeliveryStatus VARCHAR(10),
    TrackingNumber VARCHAR(10),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Review
CREATE TABLE Review (
    ReviewID INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    Rating INT,
    Comment VARCHAR(200),
    ReviewDate DATE,
    Title VARCHAR(100),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
