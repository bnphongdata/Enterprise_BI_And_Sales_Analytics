-- 1. Nối họ và tên của khách hàng lại thành một cột 'Full_Name' (Họ và tên đầy đủ)
SELECT 
  CONCAT(FirstName, ' ', LastName) AS Full_Name,
  *
FROM Customers;

-- 2. Thêm tiền tố 'Sản phẩm: ' vào đằng trước tên mỗi món hàng
SELECT 
  CONCAT('Sản phẩm: ', ProductName) AS ProductName
FROM Products;

-- 3. Cắt lấy 3 ký tự đầu tiên trong mã bưu chính (PostalCode)
SELECT 
  PostalCode,
  SUBSTRING(PostalCode, 1, 3) AS Postal_Prefix
FROM Customers;

-- 4. Tạo mã định danh SKU thu gọn: lấy 4 ký tự đầu của SKU ghép với ID sản phẩm
SELECT 
  ProductID,
  SKU,
  CONCAT(SUBSTRING(SKU, 1, 4), '-', CAST(ProductID AS STRING)) AS Short_SKU
FROM Products;
