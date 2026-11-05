-- 1. Chuyển toàn bộ tên quốc gia sang chữ in hoa (UPPER) cho đồng bộ dữ liệu
SELECT 
  Country,
  UPPER(Country) AS Country_Upper
FROM Customers;

-- 2. Chuyển địa chỉ email khách hàng về chữ thường (LOWER) để tránh lỗi phân biệt hoa thường khi tìm kiếm
SELECT 
  Email,
  LOWER(Email) AS Email_Clean
FROM Customers;

-- 3. Đếm độ dài ký tự của họ khách hàng (LENGTH) để kiểm tra các trường hợp tên quá ngắn hoặc bất thường
SELECT 
  LastName,
  LENGTH(LastName) AS Name_Length
FROM Customers
ORDER BY Name_Length DESC;

-- 4. Tìm các khách hàng có địa chỉ email dài hơn 25 ký tự
SELECT 
  FirstName,
  LastName,
  Email,
  LENGTH(Email) AS Email_Length
FROM Customers
WHERE LENGTH(Email) > 25;
