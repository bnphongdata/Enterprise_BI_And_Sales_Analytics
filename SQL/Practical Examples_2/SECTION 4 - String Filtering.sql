-- 1. Tìm khách hàng có tên bắt đầu bằng chữ 'J'
SELECT FirstName, LastName
FROM Customers
WHERE FirstName LIKE 'J%';

-- 2. Tìm sản phẩm mà trong tên có chứa từ 'Tool' (Dụng cụ)
SELECT ProductName
FROM Products
WHERE ProductName LIKE '%Tool%';

-- 3. Lọc danh sách khách hàng sử dụng hòm thư Gmail
SELECT FirstName, LastName, Email
FROM Customers
WHERE Email LIKE '%@gmail.com';
