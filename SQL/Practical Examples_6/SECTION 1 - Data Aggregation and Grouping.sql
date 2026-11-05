-- ====================================================================
-- GOM NHÓM & TÍNH TOÁN TỔNG HỢP (AGGREGATION & GROUP BY)
-- ====================================================================

-- 1. Tính toán tổng hợp cơ bản: Đếm tổng số đơn hàng và giá trị đơn trung bình
SELECT
  COUNT(*) AS total_orders,
  AVG(order_value) AS avg_order_value
FROM ecommerce_db.Orders;

-- 2. Đếm số lượng sản phẩm duy nhất (COUNT DISTINCT) được xuất kho tới từng kho hàng
SELECT
  warehouse_id,
  COUNT(DISTINCT product_id) AS unique_products
FROM ecommerce_db.Orders
GROUP BY warehouse_id
ORDER BY warehouse_id;

-- 3. Gom nhóm theo một cột: Tính tổng số tiền mua hàng của từng khách
SELECT
  customer_id,
  SUM(order_value) AS total_order_value
FROM ecommerce_db.Orders
GROUP BY customer_id
ORDER BY total_order_value DESC;

-- 4. Gom nhóm đa chiều: Đếm số đơn hàng theo từng thành phố giao hàng và phương thức thanh toán
SELECT
  shipping_city,
  payment_method,
  COUNT(*) AS number_of_orders
FROM ecommerce_db.Orders
GROUP BY shipping_city, payment_method
ORDER BY number_of_orders DESC;

-- 5. Lọc kết quả sau gom nhóm bằng HAVING: Chỉ lấy các khách hàng đã chi tiêu trên 500 đô
SELECT
  customer_id,
  SUM(order_value) AS total_spent
FROM ecommerce_db.Orders
GROUP BY customer_id
HAVING total_spent > 500
ORDER BY total_spent DESC;

-- 6. Kết hợp JOIN và GROUP BY: Tính giá trị đơn hàng trung bình xuất từ mỗi kho
SELECT
  w.warehouse_name,
  AVG(o.order_value) AS avg_order_value
FROM ecommerce_db.Orders o
JOIN ecommerce_db.Warehouses w
  ON o.warehouse_id = w.warehouse_id
GROUP BY w.warehouse_name
ORDER BY avg_order_value DESC;

-- 7. Tính tổng giá trị đơn hàng có áp dụng mã giảm giá, gom nhóm theo loại chiết khấu
SELECT
  d.discount_type,
  SUM(o.order_value) AS total_discounted_value
FROM ecommerce_db.Orders o
JOIN ecommerce_db.Discounts d
  ON o.discount_id = d.discount_id
GROUP BY d.discount_type
ORDER BY total_discounted_value DESC;

-- ====================================================================
-- BÀI HỌC KINH NGHIỆM RÚT RA:
-- - Thành thạo các hàm tổng hợp cơ bản: COUNT, SUM, AVG, MIN, MAX
-- - Hiểu rõ sự khác biệt giữa WHERE (lọc từng dòng trước khi gom) và HAVING (lọc nhóm sau khi gom)
-- - Kết hợp linh hoạt JOIN nhiều bảng trước khi tính toán tổng hợp số liệu
-- ====================================================================
