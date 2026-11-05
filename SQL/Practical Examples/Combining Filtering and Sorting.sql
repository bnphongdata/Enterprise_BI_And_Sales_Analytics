-- Bài 4.1: Lọc ra các sản phẩm giá trên 150 đô, rồi xếp giá từ đắt nhất xuống rẻ nhất
SELECT ProductName, Category, Price
FROM Products
WHERE Price > 150
ORDER BY Price DESC;

-- Bài 4.2: Lấy thông tin khách hàng ở Mỹ hoặc Canada, xếp tên theo thứ tự bảng chữ cái A-Z
SELECT FirstName, LastName, Country
FROM Customers
WHERE Country IN ('USA', 'Canada')
ORDER BY LastName ASC;
