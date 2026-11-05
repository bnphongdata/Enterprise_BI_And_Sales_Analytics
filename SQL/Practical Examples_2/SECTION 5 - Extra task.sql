-- 1. Tìm các kho hàng nằm ở Pierceton hoặc San Francisco, HOẶC tên kho bắt đầu bằng chữ 'M'
SELECT WarehouseName, Location
FROM Warehouses
WHERE Location IN ('Pierceton', 'San Francisco')
   OR WarehouseName LIKE 'M%';

-- 2. Tìm sản phẩm thuộc nhóm Điện tử giá trên 400 đô HOẶC thuộc nhóm Đồ chơi giá từ 50 đến 100 đô
SELECT ProductName, Category, Price
FROM Products
WHERE (Category = 'Electronics' AND Price > 400)
   OR (Category = 'Toys' AND Price BETWEEN 50 AND 100);
