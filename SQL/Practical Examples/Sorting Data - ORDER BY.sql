-- Bài 3.1: Liệt kê danh sách sản phẩm, sắp xếp giá giảm dần (từ đắt tới rẻ)
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC;

-- Bài 3.2: Lấy thông tin khách hàng và sắp xếp theo tên quốc gia từ A đến Z
SELECT FirstName, LastName, Country
FROM Customers
ORDER BY Country ASC;
