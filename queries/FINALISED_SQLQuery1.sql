create database cafe_Management_system;
use cafe_Management_system;

-- Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY Identity (1,1),
    Username NVARCHAR(100) NOT NULL,
    Password NVARCHAR(100) NOT NULL,
    IsManager BIT NOT NULL DEFAULT 0,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    Address NVARCHAR(255),
    JoinDate DATE,
    ShiftStartTime DATETIME,
    ShiftEndTime DATETIME,
    Salary DECIMAL(10, 2),
    HourlyRate DECIMAL(8, 2),
);

-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY Identity (1,1),
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(50) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    Address NVARCHAR(255),
    JoinDate DATE,
);

-- Suppliers table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY IDENTITY (1,1),
    Name NVARCHAR(200) NOT NULL,
    ContactPerson NVARCHAR(100),
    Phone NVARCHAR(20),
    Email NVARCHAR(100),
    Address NVARCHAR(255)
);

-- ProductCtegories Table
CREATE TABLE ProductCategories (
    CategoryId INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(50) NOT NULL,
    Description NVARCHAR(255)
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    Price DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    CategoryId INT NOT NULL FOREIGN KEY REFERENCES ProductCategories(CategoryId),
    SupplierId INT FOREIGN KEY REFERENCES Suppliers (SupplierID)
);

-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY (1,1),
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE EmployeeSchedule (
    EmployeeScheduleId INT PRIMARY KEY IDENTITY(1,1),
	EmployeeID INT,
	ShiftStart INT,
	ShiftEnd INT,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)

);

-- OrderDetails table
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Subtotal DECIMAL(10, 2),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- EmployeeSchedule table
CREATE TABLE EmployeeCheckInOuts (
    CheckInOutId INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT,
    CheckInTime DATETIME,
    CheckOutTime DATETIME,
    DateCheckInOut DATETIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Feedback Table
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY IDENTITY (1,1),
    CustomerID INT,
    FeedbackText NVARCHAR(MAX),
    Rating INT,
    FeedbackDate DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Promotions Table
CREATE TABLE Promotions (
    PromotionID INT PRIMARY KEY IDENTITY (1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    StartDate DATE,
    EndDate DATE,
    Discount DECIMAL(5, 2),
    ProductCategory INT FOREIGN KEY REFERENCES ProductCategories (CategoryId)
);

-- Inserting data into Employees table
INSERT INTO Employees (Username, Password, IsManager, FirstName, LastName, Email, PhoneNumber, Address, JoinDate, ShiftStartTime, ShiftEndTime, Salary, HourlyRate)
VALUES ('emp1', 'pass1', 1, 'Abdul', 'Faheem', 'faheem@gmail.com', '1234567890', 'Karachi', '2023-01-01', '09:00', '17:00', 50000.00, 25.00),
     ('emp2', 'pass2', 0, 'Sheryar', 'Ali', 'sheryar@gmail.com', '9876543210', 'Rawalpindi', '2023-01-02', '10:00', '18:00', 40000.00, 20.00);

--Inserting data into Customers table
INSERT INTO Customers (Username, Password, FirstName, LastName, Email, PhoneNumber, Address, JoinDate)
VALUES ('customer1', 'passcust1', 'Sher', 'Afzal', 'afzal@gmail.com', '1112223334', 'lakki marwat', '2023-01-05'),
       ('customer2', 'passcust2', 'Ali', 'Nawaz', 'ali@gmail.com', '5556667778', 'Lahore', '2023-01-08');


-- Insertin data into ProductCategories table
INSERT INTO ProductCategories (CategoryName, Description)
VALUES ('Drinks', 'Coffee/Soft Drink/Tea/Water'),
('Food', 'Pasta/Steak/Fries/Sandwiches/Pizza'),
       ('Desserts', 'Cakes/Cupcakes/Cookies');

-- Inserting in Suppliers Table
  INSERT INTO [cafe_Management_system].[dbo].[Suppliers] ([Name],[ContactPerson],[Phone],[Email],[Address])
	VALUES ('Dunkin Donuts','Rabbia', '03214543732', 'rabbiakhan@gmail.com','429, A Block'),
	('Nestle','Faizan', '03219676066', 'faizankhan@gmail.com','449, TIP Block'),
	('Layers','Ahsan', '03219666066', 'ahsankhan@gmail.com','446, TIP Block')

 --Inserting data into Products table
INSERT INTO Products (Name, Description, Price, Quantity, CategoryId, SupplierId)
VALUES ('Coffee', 'Freshly brewed coffee', 2.50, 100, 1, 2),
('Sandwich', 'Grilled sandwich', 5.00, 50, 2, 3);

--Inserting data into Orders table
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate)
VALUES (1, 1, '2023-02-15 10:30:00'),
      (2, 2, '2023-02-18 12:00:00');

--Inserting data into OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Subtotal)
VALUES (1, 1, 2, 5.00),
      (1, 2, 1, 5.00),
      (2, 2, 3, 15.00);

--Inserting data into EmployeeCheckInOuts table
INSERT INTO EmployeeCheckInOuts (EmployeeID, CheckInTime, CheckOutTime, DateCheckInOut)
VALUES (1, '2023-02-15 09:00:00', '2023-02-15 17:00:00', '2023-02-15'),
       (2, '2023-02-18 10:00:00', '2023-02-18 18:00:00', '2023-02-18');

 --Inserting data into Feedback table
INSERT INTO Feedback (CustomerID, FeedbackText, Rating, FeedbackDate)
VALUES (1, 'Great service!', 5, '2023-02-20'),
       (2, 'Nice food!', 4, '2023-02-21');

 --Inserting data into Promotions table
INSERT INTO Promotions (Name, Description, StartDate, EndDate, Discount, ProductCategory)
VALUES ('Happy Hour', '50% off on all drinks from 4 PM to 6 PM', '2023-03-01', '2023-03-31', 50.00, 1);

-- Create View OrderProductDetails
GO
CREATE VIEW OrderProductDetails
AS
SELECT o.OrderID, p.Name AS ProductName, od.Quantity, od.Subtotal
FROM OrderDetails od
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID;
GO

-- Display essential employee information
GO
CREATE VIEW EmployeeInformation
AS
SELECT EmployeeID, FirstName, LastName, Email, PhoneNumber, Address, JoinDate, Salary, IsManager
FROM Employees;
GO

-- Extend the order details view to include customer and product details
GO
CREATE VIEW OrderDetailsExtended
AS
SELECT o.OrderID, c.FirstName, c.LastName AS CustomerName, p.Name AS ProductName, od.Quantity, od.Subtotal
FROM OrderDetails od
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON od.ProductID = p.ProductID;
GO

 --Example view to display order details along with product information
-- Create View OrderProductDetails
GO
CREATE VIEW OrderProductDetails
AS
SELECT 
    o.OrderID, 
    p.Name AS ProductName, 
    od.Quantity, 
    od.Subtotal
FROM OrderDetails od
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
GO

-- Display essential employee information
GO
CREATE VIEW EmployeeInformation
AS
SELECT 
    EmployeeID, 
    FirstName, 
    LastName, 
    Email, 
    PhoneNumber, 
    Address, 
    JoinDate, 
    Salary, 
    IsManager
FROM Employees
GO

-- Extend the order details view to include customer and product details
GO
CREATE VIEW OrderDetailsExtended
AS
SELECT
    o.OrderID,
    c.FirstName,
    c.LastName AS CustomerName,
    p.Name AS ProductName,
    od.Quantity,
    od.Subtotal
FROM OrderDetails od
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Products p ON od.ProductID = p.ProductID
GO





GO
-- stored procedure to retrieve all orders for a specific customer
CREATE PROCEDURE GetOrdersForCustomer
    @CustomerID INT
AS
BEGIN
    SELECT * FROM Orders WHERE CustomerID = @CustomerID;
END;
GO

GO
-- Add a new employee to the database.
CREATE PROCEDURE AddNewEmployee2
    @Username NVARCHAR(50),
    @Password NVARCHAR(50),
    @FirstName NVARCHAR(100),
    @LastName NVARCHAR(100),
    @Email NVARCHAR(100),
    @PhoneNumber NVARCHAR(20),
    @Address NVARCHAR(255),
    @JoinDate DATE,
    @Salary DECIMAL(10, 2),
    @HourlyRate DECIMAL(8, 2)
AS
BEGIN
    INSERT INTO Employees (Username, Password, FirstName, LastName, Email, PhoneNumber, Address, JoinDate, Salary, HourlyRate)
    VALUES (@Username, @Password, @FirstName, @LastName, @Email, @PhoneNumber, @Address, @JoinDate, @Salary, @HourlyRate);
END;
GO



--Add new Supplier
GO
-- Add a new employee to the database.
CREATE PROCEDURE AddNewSupplier3
    @Name NVARCHAR(50),
    @ContactPerson NVARCHAR(100),
    @Phone NVARCHAR(20),
    @Email NVARCHAR(100),
    @Address NVARCHAR(255)
AS
BEGIN
    INSERT INTO Suppliers ( Name, ContactPerson, Phone, Email, Address)
    VALUES ( @Name, @ContactPerson, @Phone, @Email, @Address);
END;
GO



GO
-- Retrieve the total sales of a specific product.
CREATE PROCEDURE GetTotalSalesByProduct
    @ProductID INT
AS
BEGIN
    SELECT p.Name AS ProductName, s.Name, SUM(od.Quantity) AS TotalSales
    FROM OrderDetails od
    INNER JOIN Products p ON od.ProductID = p.ProductID
    INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
    WHERE od.ProductID = @ProductID
    GROUP BY p.Name, s.Name;
END;
GO

GO
--calculates payroll for employees
CREATE PROCEDURE CalculateEmployeePayroll
AS
BEGIN
    -- Variables to hold calculated values
    DECLARE @TotalPayroll DECIMAL(12, 2);

    -- Calculate payroll for non-managers based on hourly rates and working hours
    SET @TotalPayroll = (
        SELECT SUM((e.HourlyRate * DATEDIFF(HOUR, es.ShiftStart, es.ShiftEnd)) + e.Salary) AS TotalPay
        FROM Employees e
        LEFT JOIN EmployeeSchedule es ON e.EmployeeID = es.EmployeeID
    );

    -- Display the total payroll
    SELECT @TotalPayroll AS TotalPayroll;
END;
GO

GO
-- generates a bill receipt for a specific order
CREATE PROCEDURE GenerateBillReceipt
    @OrderID INT
AS
BEGIN
    -- Variables to hold bill receipt information
    DECLARE @CustomerName NVARCHAR(100);
    DECLARE @CustomerEmail NVARCHAR(100);
    DECLARE @OrderDate DATETIME;
    DECLARE @ProductName NVARCHAR(100);
    DECLARE @Quantity INT;
    DECLARE @Subtotal DECIMAL(10, 2);
    DECLARE @TotalAmount DECIMAL(10, 2);

    -- Fetching order and customer details
   SELECT @CustomerName = c.FirstName + ' ' + c.LastName,
       @CustomerEmail = c.Email,
       @OrderDate = o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderID = @OrderID;


    -- Creating a temporary table to store product details for the order
    CREATE TABLE #TempBillReceipt (
        ProductName NVARCHAR(100),
        Quantity INT,
        Subtotal DECIMAL(10, 2)
    );

    -- Fetching product details for the order and calculating subtotal for each product
    INSERT INTO #TempBillReceipt (ProductName, Quantity, Subtotal)
    
    SELECT p.Name, od.Quantity, od.Subtotal
    FROM OrderDetails od
    INNER JOIN Products p ON od.ProductID = p.ProductID
    WHERE od.OrderID = @OrderID;

    -- Fetching total amount for the order
    SELECT @TotalAmount = SUM(Subtotal) FROM #TempBillReceipt;

    -- Displaying the bill receipt
    SELECT 
        'Customer Name: ' + @CustomerName AS 'Customer Name',
        'Customer Email: ' + @CustomerEmail AS 'Customer Email',
        'Order Date: ' + CONVERT(NVARCHAR(30), @OrderDate, 120) AS 'Order Date';

    SELECT '--- Product Details ---' AS 'Product Details';
    SELECT * FROM #TempBillReceipt;

    SELECT '--- Total Amount ---' AS 'Total Amount';
    SELECT @TotalAmount AS 'Total Amount';

    -- Drop temporary table
    DROP TABLE #TempBillReceipt;
END;
GO

GO
-- calculate total amount of a order
CREATE PROCEDURE CalculateOrderTotal
    @OrderID INT
AS
BEGIN
    DECLARE @TotalAmount DECIMAL(10, 2);

    SELECT @TotalAmount = SUM(Subtotal)
    FROM OrderDetails
    WHERE OrderID = @OrderID;

    -- Displaying the calculated total amount for the order
    SELECT @TotalAmount AS TotalAmount;
END;
GO

-- update product quantity after an order is placed
CREATE TRIGGER UpdateProductQuantity
ON OrderDetails
AFTER INSERT
AS
BEGIN
    DECLARE @ProductID INT, @Quantity INT;

    SELECT @ProductID = ProductID, @Quantity = Quantity FROM inserted;

    UPDATE Products
    SET Quantity = Quantity - @Quantity
    WHERE ProductID = @ProductID;
END;

GO
--Trigger to Check Product Quantity before Order
CREATE TRIGGER PreventZeroQuantityOnOrderInsert
ON Orders
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        INNER JOIN OrderDetails od ON i.OrderID = od.OrderID
        INNER JOIN Products p ON od.ProductID = p.ProductID
        WHERE p.Quantity = 0
    )
    BEGIN
        RAISERROR ('Cannot add order with items having zero quantity!', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

--Group by and Aggregate
-- 1. Find the total number of employees and their average salary for each manager
SELECT
    m.IsManager,
    COUNT(e.EmployeeID) AS TotalEmployees,
    AVG(e.Salary) AS AvgSalary
FROM Employees e
LEFT JOIN Employees m ON e.EmployeeID = m.EmployeeID AND m.IsManager = 1
GROUP BY m.IsManager
HAVING m.IsManager = 1;

GO

-- 2. Get the total revenue and the average order value for each customer
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    SUM(od.Subtotal) AS TotalRevenue,
    AVG(od.Subtotal) AS AvgOrderValue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING SUM(od.Subtotal) > 0;

GO

-- 3. Get the total quantity of products ordered and the total revenue for each supplier
SELECT
    s.Name AS SupplierName,
    SUM(od.Quantity) AS TotalQuantityOrdered,
    SUM(od.Subtotal) AS TotalRevenue
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierId
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY s.Name;

GO

-- 4. Get the count of orders and the average rating for each employee who has received at least one feedback
SELECT
    e.FirstName,
    e.LastName,
    COUNT(o.OrderID) AS OrderCount,
    AVG(CAST(f.Rating AS FLOAT)) AS AvgRating
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN Feedback f ON o.CustomerID = f.CustomerID
GROUP BY e.FirstName, e.LastName
HAVING COUNT(f.FeedbackID) > 0;

--NESTED SUBQUERIES

--1 Get the names of products that have been ordered by customers who have provided feedback with a rating of 5
SELECT p.Name
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IN (
    SELECT CustomerID
    FROM Feedback
    WHERE Rating = 5
);

-- 2. Find the names of employees who have placed the most orders
SELECT e.FirstName, e.LastName
FROM Employees e
WHERE e.EmployeeID = (
    SELECT TOP 1 EmployeeID
    FROM Orders
    GROUP BY EmployeeID
    ORDER BY COUNT(OrderID) DESC
);

GO

-- 3. Retrieve the names of customers who have provided the highest rating for feedback
SELECT c.FirstName, c.LastName
FROM Customers c
WHERE c.CustomerID = (
    SELECT TOP 1 CustomerID
    FROM Feedback
    WHERE Rating = (
        SELECT MAX(Rating)
        FROM Feedback
    )
);

GO

-- 4. Get the names of suppliers who supply the most expensive product
SELECT s.Name
FROM Suppliers s
WHERE s.SupplierID = (
    SELECT TOP 1 SupplierId
    FROM Products
    WHERE Price = (
        SELECT MAX(Price)
        FROM Products
    )
);
