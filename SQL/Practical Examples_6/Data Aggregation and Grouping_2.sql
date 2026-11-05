-- ====================================================================
-- PHÂN TÍCH TỔNG HỢP NÂNG CAO VÀ CHUỖI THỜI GIAN
-- ====================================================================

-- 1. Tính tổng giá trị đơn hàng theo từng tháng (dùng DATE_TRUNC để làm tròn ngày về đầu tháng)
SELECT
  DATE_TRUNC(order_date, MONTH) AS order_month,
  SUM(order_value) AS total_order_value
FROM ecommerce_db.Orders
GROUP BY order_month
ORDER BY order_month;

-- 2. Tìm mức tồn kho lớn nhất của từng sản phẩm trong toàn hệ thống kho
SELECT
  p.product_name,
  MAX(i.quantity) AS max_inventory_level
FROM ecommerce_db.Products p
JOIN ecommerce_db.Inventory i
  ON p.product_id = i.product_id
GROUP BY p.product_name
ORDER BY max_inventory_level DESC;

-- 3. Đếm số lượng giao dịch thành công theo từng phương thức thanh toán trong quý gần nhất
SELECT
  payment_method,
  COUNT(*) AS successful_transactions,
  SUM(amount) AS total_amount_processed
FROM ecommerce_db.Payments
WHERE status = 'Completed'
GROUP BY payment_method
ORDER BY total_amount_processed DESC;
