-- 1. Đổi tên cột hiển thị cho thân thiện bằng bí danh AS
SELECT
  FirstName AS First_Name,
  LastName AS Last_Name,
  Email AS Customer_Email
FROM Customers;

-- 2. Xem danh sách các quốc gia có khách hàng (loại bỏ quốc gia trùng lặp)
SELECT DISTINCT Country AS Unique_Countries
FROM Customers;

-- 3. Liệt kê các tên khách hàng duy nhất trong hệ thống
SELECT DISTINCT FirstName
FROM Customers;
