-- ====================================================================
-- THỰC HÀNH CÁC PHÉP GHÉP BẢNG (JOIN) TRONG PHÂN TÍCH DỮ LIỆU
-- ====================================================================

-- 1. Ghép bảng Orders (Đơn hàng) và Customers (Khách hàng) để hiển thị chi tiết: Mã đơn, Họ tên khách, Tổng giá trị đơn.
SELECT
  o.order_id,
  CONCAT(c.first_name, ' ', c.last_name) AS customer_full_name,
  o.total_amount
FROM ecommerce_db.Orders o
JOIN ecommerce_db.Customers c
  ON o.customer_id = c.customer_id;

-- 2. Ghép bảng Orders với Payments để xem phương thức thanh toán và trạng thái. 
-- Dùng LEFT JOIN để hiển thị cả những đơn hàng chưa phát sinh thanh toán (sẽ trả về NULL).
SELECT
  o.order_id,
  p.payment_method,
  p.status AS payment_status
FROM ecommerce_db.Orders o
LEFT JOIN ecommerce_db.Payments p
  ON o.order_id = p.order_id;

-- 3. Xem danh sách tất cả các kho hàng và lượng hàng tồn tương ứng.
-- Kể cả kho nào hiện đang trống chưa có hàng cũng vẫn hiển thị đầy đủ (LEFT JOIN).
SELECT
  w.warehouse_id,
  w.warehouse_name,
  i.product_id,
  i.quantity
FROM ecommerce_db.Warehouses w
LEFT JOIN ecommerce_db.Inventory i
  ON w.warehouse_id = i.warehouse_id;

-- 4. Ghép bảng Products với Discounts để lấy danh mục sản phẩm, loại giảm giá và mức giảm thực tế.
SELECT
  p.Category AS ProductCategory,
  d.DiscountType,
  d.DiscountValue
FROM ecommerce_db.Products p
JOIN ecommerce_db.Discounts d
  ON p.ProductID = d.ProductID;

-- 5. Kết hợp 3 bảng: Orders, Customers và Warehouses để xem đơn hàng được gửi từ kho nào tới khách hàng nào.
SELECT
  o.order_id,
  c.first_name,
  c.last_name,
  w.warehouse_name,
  o.order_date
FROM ecommerce_db.Orders o
JOIN ecommerce_db.Customers c ON o.customer_id = c.customer_id
JOIN ecommerce_db.Warehouses w ON o.warehouse_id = w.warehouse_id;
