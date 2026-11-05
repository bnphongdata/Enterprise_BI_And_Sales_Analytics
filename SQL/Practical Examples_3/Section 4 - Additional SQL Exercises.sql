-- Tổng hợp các bài toán thực hành xử lý chuỗi và lọc điều kiện thực tế
-- Bao gồm nối chuỗi, chuẩn hóa khoảng trắng, thay thế ký tự và lọc nhiều tầng

-- Bài 1: Lọc các danh mục con có ID nhỏ hơn 20, thay chữ 'Electronics' thành 'Electronics & Technology'
SELECT 
  SubcategoryID,
  REPLACE(CategoryName, 'Electronics', 'Electronics & Technology') AS CategoryName
FROM ecommerce_db.Subcategories
WHERE SubcategoryID < 20;

-- Bài 2: Ghép mã bưu điện và quốc gia thành cột 'International_Code', chỉ lấy khách hàng có họ ngắn hơn 5 chữ cái
SELECT 
  CONCAT(PostalCode, ' - ', Country) AS International_Code,
  FirstName,
  LastName
FROM ecommerce_db.Customers
WHERE LENGTH(LastName) < 5;

-- Bài 3: Trong bảng sản phẩm:
-- Lấy 3 ký tự đầu của tên sản phẩm ghép với 3 số đầu của mã SKU thành mã 'Identifier'
-- Thêm tiền tố 'Cost: ' vào trước giá sản xuất và chỉ lọc sản phẩm có chi phí sản xuất trên 300 đô
SELECT 
  CONCAT(
    SUBSTRING(ProductName, 1, 3),
    SUBSTRING(SKU, 1, 3)
  ) AS Identifier,
  CONCAT('Cost: ', ProductionCost) AS Production_Cost
FROM ecommerce_db.Products
WHERE ProductionCost > 300;

-- Bài 4: Chuyển tên sản phẩm sang chữ in hoa, thay từ 'Pro' thành 'Professional', lọc sản phẩm giá từ 100 đến 500
SELECT 
  UPPER(REPLACE(ProductName, 'Pro', 'Professional')) AS Clean_ProductName,
  Price
FROM ecommerce_db.Products
WHERE Price BETWEEN 100 AND 500;

-- Bài 5: Chuẩn hóa tên kho hàng bằng cách cắt khoảng trắng thừa (TRIM), chuyển sang in hoa và lọc kho ở bang California (CA)
SELECT 
  WarehouseID,
  UPPER(TRIM(WarehouseName)) AS Standard_WarehouseName,
  Location
FROM ecommerce_db.Warehouses
WHERE Location LIKE '%CA%';

-- Bài 6: Xem trạng thái thanh toán, chuyển về chữ thường và đếm số lượng giao dịch theo từng trạng thái
SELECT 
  LOWER(Status) AS Clean_Status,
  COUNT(*) AS Transaction_Count
FROM ecommerce_db.Payments
GROUP BY Clean_Status;
