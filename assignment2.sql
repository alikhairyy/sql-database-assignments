use northwind;

SELECT * 
FROM Customers 
WHERE Country = 'Germany';

SELECT ProductName, Price
FROM Products
WHERE Price > 50;

SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


SELECT ProductName, Price
FROM Products
ORDER BY Price DESC
LIMIT 5;

SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID;

SELECT EmployeeID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY EmployeeID;

SELECT * 
FROM Suppliers
WHERE Country = 'USA';


SELECT * 
FROM Employees
WHERE BirthDate > '1960-01-01';

SELECT CategoryID, AVG(Price) AS AveragePrice
FROM Products
GROUP BY CategoryID;