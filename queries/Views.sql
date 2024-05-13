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


