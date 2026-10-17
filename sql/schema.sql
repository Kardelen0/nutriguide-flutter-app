-- 1. Müşteri Tablosu
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL CONSTRAINT UQ_Customer_Email UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- 2. Ürün Katalog Tablosu
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Calories INT NOT NULL
);

-- 3. Sipariş Detay Tablosu
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);
