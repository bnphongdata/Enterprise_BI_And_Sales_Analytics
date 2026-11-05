-- Bài 2.1: Lấy các đơn hàng phát sinh sau ngày 01/06/2023
SELECT OrderID, OrderDate
FROM Orders
WHERE OrderDate > '2023-06-01';

-- Bài 2.2: Lọc các mặt hàng có giá bán trên 100 đô
SELECT ProductName, Price
FROM Products
WHERE Price > 100;

-- Bài 2.3: Tìm khách hàng đang sinh sống tại Mỹ (USA)
SELECT FirstName, LastName, Country
FROM Customers
WHERE Country = 'USA';
