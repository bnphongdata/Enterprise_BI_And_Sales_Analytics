-- 1. Làm tròn giá sản phẩm lấy 1 chữ số thập phân (ROUND)
SELECT
  Price,
  ROUND(Price, 1) AS Rounded_Price
FROM ecommerce_db.Products;

-- 2. Tính khoảng cách chênh lệch tuyệt đối so với mức trung bình 250 đô (ABS)
SELECT
  TotalAmount,
  ABS(TotalAmount - 250) AS Absolute_Difference
FROM ecommerce_db.Orders;

-- 3. Làm tròn lên (CEIL) và làm tròn xuống (FLOOR) số tiền thanh toán
SELECT
  TotalAmount,
  CEIL(TotalAmount) AS Ceiling_Amount,
  FLOOR(TotalAmount) AS Floor_Amount
FROM ecommerce_db.Orders;

-- 4. Tạo số ngẫu nhiên từ 0 đến 1 (RAND) để phục vụ lấy mẫu ngẫu nhiên (A/B testing split)
SELECT
  CustomerID,
  RAND() AS Random_Bucket
FROM ecommerce_db.Customers
LIMIT 10;
