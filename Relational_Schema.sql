-- creating a relational schema that captures the relationships between orders, suppliers, products, and delivery



-- creating a table called "Order"
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    SupplierID INT,
    TotalAmount DECIMAL(10, 2),
    
);

-- creating a table called "Suppliers"
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    Phone VARCHAR(50),
    Address VARCHAR(255)
);

-- creating a table called "Products"
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    DeliveryID INT,
    Price DECIMAL(10, 2),
    StockQuantity INT,
    
);

-- creating a table called "OrderDetails"
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    
);


-- creating a table called "Delivery"
CREATE TABLE Delivery(
    DeliveryID INT PRIMARY KEY,
    DeliveryDate DATE
);



