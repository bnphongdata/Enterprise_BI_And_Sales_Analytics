-- 1. Định dạng lại ngày đặt hàng sang dạng chuẩn Ngày-Tháng-Năm (DD-MM-YYYY)
SELECT
  OrderID,
  FORMAT_DATE('%d-%m-%Y', OrderDate) AS Formatted_OrderDate
FROM ecommerce_db.Orders;

-- 2. Chuyển số tiền thành chuỗi ký tự bằng CAST để chuẩn bị ghép vào văn bản thông báo
SELECT
  TotalAmount,
  CAST(TotalAmount AS STRING) AS TotalAmount_Text
FROM ecommerce_db.Orders;

-- 3. Ép kiểu an toàn bằng SAFE_CAST (nếu gặp dữ liệu lỗi thì trả về NULL chứ không làm sập query)
SELECT
  SAFE_CAST('123.45' AS FLOAT64) AS Valid_Number,
  SAFE_CAST('abc' AS INT64) AS Safe_Null_Result;
