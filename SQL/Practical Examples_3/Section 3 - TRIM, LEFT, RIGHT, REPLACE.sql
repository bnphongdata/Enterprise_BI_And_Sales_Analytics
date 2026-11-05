-- 1. Cắt bỏ khoảng trắng thừa ở hai đầu chuỗi (TRIM) - bước làm sạch dữ liệu cực kỳ cơ bản
SELECT 
  TRIM(CustomerName) AS Clean_CustomerName
FROM Customers;

-- 2. Lấy 3 chữ cái đầu tiên bên trái (LEFT) của mã bưu chính
SELECT 
  PostalCode,
  LEFT(PostalCode, 3) AS Area_Code
FROM Customers;

-- 3. Lấy 4 chữ số cuối cùng bên phải (RIGHT) của số điện thoại
SELECT 
  PhoneNumber,
  RIGHT(PhoneNumber, 4) AS Last_4_Digits
FROM Customers;

-- 4. Thay thế từ 'Street' thành viết tắt 'St.' trong địa chỉ khách hàng (REPLACE)
SELECT 
  Address,
  REPLACE(Address, 'Street', 'St.') AS Short_Address
FROM Customers;
