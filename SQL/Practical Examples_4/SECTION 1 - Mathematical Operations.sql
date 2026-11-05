-- 1. Cộng phí vận chuyển cố định 15 đô vào tổng tiền đơn hàng
SELECT
  OrderID,
  TotalAmount,
  TotalAmount + 15 AS Price_with_Shipping
FROM ecommerce_db.Orders;

-- 2. Tính đơn giá trung bình cho mỗi món trong đơn (Tổng tiền / Số lượng)
-- Dùng SAFE_DIVIDE để tránh lỗi chia cho 0 nếu có đơn hàng bị lỗi số lượng
SELECT
  OrderID,
  TotalAmount,
  Quantity,
  SAFE_DIVIDE(TotalAmount, Quantity) AS Unit_Price
FROM ecommerce_db.Orders;

-- 3. Tính thuế VAT 10% cho từng đơn hàng
SELECT
  OrderID,
  TotalAmount,
  ROUND(TotalAmount * 0.1, 2) AS VAT_Amount,
  ROUND(TotalAmount * 1.1, 2) AS Total_with_VAT
FROM ecommerce_db.Orders;
