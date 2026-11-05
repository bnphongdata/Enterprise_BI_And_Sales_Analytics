-- Bài 1.1: Xem thử toàn bộ thông tin trong bảng khách hàng
SELECT *
FROM Customers;

-- Bài 1.2: Chỉ lấy ra họ và tên của tất cả khách hàng (FirstName, LastName)
SELECT FirstName, LastName
FROM Customers;

-- Bài 1.3: Lấy tên sản phẩm kèm giá bán từ bảng Products
SELECT ProductName, Price
FROM Products;
