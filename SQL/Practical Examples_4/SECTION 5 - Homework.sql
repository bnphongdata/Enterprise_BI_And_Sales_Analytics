-- Bài tập tổng hợp các thao tác xử lý dữ liệu thanh toán & chiết khấu thực tế

-- 1. Chuyển đổi trạng thái thanh toán sang in hoa (UPPER)
SELECT
  Status,
  UPPER(Status) AS Status_Uppercase
FROM ecommerce_db.Payments;

-- 2. Nối trạng thái thanh toán với phương thức thanh toán bằng dấu gạch ngang
SELECT
  Status,
  PaymentMethod,
  CONCAT(Status, ' - ', PaymentMethod) AS Status_PaymentMethod
FROM ecommerce_db.Payments;

-- 3. Chuẩn hóa tên loại chiết khấu trong bảng Discounts: thay 'Percent' thành '%'
SELECT
  DiscountType,
  REPLACE(DiscountType, 'Percent', '%') AS Short_DiscountType
FROM ecommerce_db.Discounts;

-- 4. Tính giá trị chiết khấu thực tế và làm tròn 2 chữ số thập phân
SELECT
  OriginalPrice,
  DiscountPercent,
  ROUND(OriginalPrice * (DiscountPercent / 100), 2) AS Discount_Amount,
  ROUND(OriginalPrice * (1 - DiscountPercent / 100), 2) AS Final_Price
FROM ecommerce_db.Discounts;
