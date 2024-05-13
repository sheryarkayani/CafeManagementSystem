
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
