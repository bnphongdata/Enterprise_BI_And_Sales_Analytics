-- 1. Lọc khách hàng sống ở Mỹ và đã có cập nhật địa chỉ email
SELECT FirstName, LastName, Country, Email
FROM Customers
WHERE Country = 'USA'
  AND Email IS NOT NULL;

-- 2. Tìm các sản phẩm KHÔNG thuộc ngành hàng 'Electronics' (Điện tử) hoặc 'Furniture' (Nội thất)
SELECT ProductName, Category
FROM Products
WHERE Category NOT IN ('Electronics', 'Furniture');

-- 3. Tìm các đơn hàng đặt sau ngày 01/01/2023 mà tổng tiền đơn hàng dưới 100 đô
SELECT OrderID, OrderDate, TotalAmount
FROM Orders
WHERE OrderDate > '2023-01-01'
  AND TotalAmount < 100;
