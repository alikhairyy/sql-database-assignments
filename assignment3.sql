use northwind;

DELIMITER //
CREATE PROCEDURE GetCustomersByCountry_YourName(IN countryName VARCHAR(50))
BEGIN
    SELECT * FROM Customers WHERE Country = countryName;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE InsertCustomerAndListAll_YourName(
    IN CustomerID VARCHAR(10),
    IN CompanyName VARCHAR(50),
    IN ContactName VARCHAR(50),
    IN Country VARCHAR(50)
)
BEGIN
    INSERT INTO Customers (CustomerID, CompanyName, ContactName, Country)
    VALUES (CustomerID, CompanyName, ContactName, Country);

    SELECT * FROM Customers;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE ListOrdersByEmployee_YourName(IN employeeID INT)
BEGIN
    SELECT * FROM Orders WHERE EmployeeID = employeeID;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE UpdateProductPriceAndListAboveThreshold_YourName(IN productID INT, IN newPrice DECIMAL(10,2), IN priceThreshold DECIMAL(10,2))
BEGIN
    UPDATE Products SET UnitPrice = newPrice WHERE ProductID = productID;

    SELECT * FROM Products WHERE UnitPrice > priceThreshold;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE GetEmployeesByCity_YourName(IN cityName VARCHAR(50))
BEGIN
    SELECT * FROM Employees WHERE City = cityName;
END //
DELIMITER ;

-
DELIMITER //
CREATE PROCEDURE InsertOrderAndShowByDate_YourName(
    IN customerID VARCHAR(10),
    IN employeeID INT,
    IN orderDate DATE,
    IN requiredDate DATE,
    IN shippedDate DATE,
    IN shipVia INT,
    IN freight DECIMAL(10,2),
    IN shipName VARCHAR(50),
    IN shipCity VARCHAR(50),
    IN shipCountry VARCHAR(50)
)
BEGIN
    INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipCity, ShipCountry)
    VALUES (customerID, employeeID, orderDate, requiredDate, shippedDate, shipVia, freight, shipName, shipCity, shipCountry);

    SELECT * FROM Orders WHERE OrderDate = orderDate;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE CountProductsInCategory_YourName(IN categoryID INT)
BEGIN
    SELECT COUNT(*) AS ProductCount
    FROM Products
    WHERE CategoryID = categoryID;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE GetSupplierDetailsByCountry_YourName(IN countryName VARCHAR(50))
BEGIN
    SELECT * FROM Suppliers WHERE Country = countryName;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE InsertProductAndShowSameCategory_YourName(
    IN ProductName VARCHAR(50),
    IN SupplierID INT,
    IN CategoryID INT,
    IN QuantityPerUnit VARCHAR(50),
    IN UnitPrice DECIMAL(10,2),
    IN UnitsInStock SMALLINT,
    IN UnitsOnOrder int,
    IN ReorderLevel INT,
    IN Discontinued BIT
)
BEGIN
    INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
    VALUES (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued);

    SELECT * FROM Products WHERE CategoryID = CategoryID;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE GetOrdersBetweenDatesForCustomer_YourName(
    IN customerID VARCHAR(10),
    IN startDate DATE,
    IN endDate DATE
)
BEGIN
    SELECT * FROM Orders
    WHERE CustomerID = customerID
    AND OrderDate BETWEEN startDate AND endDate;
END //
DELIMITER ;