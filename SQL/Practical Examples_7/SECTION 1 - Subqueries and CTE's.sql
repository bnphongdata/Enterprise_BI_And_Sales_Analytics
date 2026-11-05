-- ====================================================================
-- TRUY VẤN LỒNG (SUBQUERIES) VÀ BẢNG TẠM COMMON TABLE EXPRESSIONS (CTEs)
-- ====================================================================

-- 1. Subquery trong mệnh đề SELECT:
-- Hiển thị mã đơn hàng, giá trị đơn, và đặt thêm cột giá trị đơn trung bình của toàn hệ thống bên cạnh để dễ so sánh.
SELECT
  order_id,
  order_value AS total_amount,
  (SELECT AVG(order_value) FROM ecommerce_db.Orders) AS avg_order_value
FROM ecommerce_db.Orders;

-- 2. Subquery trong mệnh đề WHERE:
-- Lọc ra tất cả các đơn hàng có giá trị nhỏ hơn hoặc bằng mức trung bình toàn hệ thống.
SELECT
  order_id,
  order_value
FROM ecommerce_db.Orders
WHERE order_value <= (
  SELECT AVG(order_value)
  FROM ecommerce_db.Orders
);

-- 3. Subquery trong mệnh đề FROM:
-- Tính giá trị đơn hàng trung bình sau khi đã chiết khấu 10% cho từng khách hàng và quốc gia.
SELECT
  customer_id,
  country,
  AVG(discounted_value) AS avg_order_value_with_discount
FROM (
  SELECT
    o.customer_id,
    c.country,
    o.order_value * 0.9 AS discounted_value
  FROM ecommerce_db.Orders o
  JOIN ecommerce_db.Customers c
    ON o.customer_id = c.customer_id
)
GROUP BY customer_id, country;

-- 4. Subquery tương quan (Correlated Subquery):
-- Tìm các đơn hàng có giá trị thấp hơn hoặc bằng mức chi tiêu trung bình của chính khách hàng đó.
SELECT
  o.order_id,
  o.customer_id,
  o.order_value
FROM ecommerce_db.Orders o
WHERE o.order_value <= (
  SELECT AVG(o2.order_value)
  FROM ecommerce_db.Orders o2
  WHERE o2.customer_id = o.customer_id
);

-- 5. Subquery tìm sản phẩm bán chạy nhất:
-- Lấy danh sách các đơn hàng có chứa sản phẩm mang lại tổng doanh thu cao nhất.
SELECT
  order_id,
  order_value
FROM ecommerce_db.Orders
WHERE product_id = (
  SELECT product_id
  FROM ecommerce_db.Orders
  GROUP BY product_id
  ORDER BY SUM(order_value) DESC
  LIMIT 1
);

-- 6. Dùng CTE (mệnh đề WITH) tính tổng chi tiêu của khách:
-- Lọc ra những khách hàng chi tiêu trên 1000 đô và từng có ít nhất một đơn hàng giá trị từ 200 đô trở lên.
WITH customer_spend AS (
  SELECT
    customer_id,
    SUM(order_value) AS total_spent,
    MAX(order_value) AS max_order_value
  FROM ecommerce_db.Orders
  GROUP BY customer_id
)
SELECT *
FROM customer_spend
WHERE total_spent > 1000
  AND max_order_value >= 200;

-- 7. Dùng CTE phân tích lượng hàng tồn trung bình:
-- Tính lượng tồn kho trung bình của từng kho và ghép với tên kho, vị trí địa lý.
WITH inventory_avg AS (
  SELECT
    warehouse_id,
    AVG(quantity) AS avg_inventory
  FROM ecommerce_db.Inventory
  GROUP BY warehouse_id
)
SELECT
  w.warehouse_name,
  w.location,
  i.avg_inventory
FROM inventory_avg i
JOIN ecommerce_db.Warehouses w
  ON i.warehouse_id = w.warehouse_id;

-- 8. Dùng CTE phân tích ngành hàng:
-- Ghép bảng đơn hàng, sản phẩm và danh mục để tính tổng doanh thu theo từng ngành hàng.
WITH order_products AS (
  SELECT
    o.order_value,
    c.category_name
  FROM ecommerce_db.Orders o
  JOIN ecommerce_db.Products p
    ON o.product_id = p.product_id
  JOIN ecommerce_db.Categories c
    ON p.category_id = c.category_id
)
SELECT
  category_name,
  SUM(order_value) AS total_order_value
FROM order_products
GROUP BY category_name
ORDER BY total_order_value DESC;

-- 9. Subquery tìm nhóm khách hàng chi tiêu vượt trội:
-- Tìm các khách hàng có tổng tiền mua hàng vượt mức chi tiêu bình quân của toàn bộ khách hàng.
SELECT
  customer_id,
  SUM(order_value) AS total_spent
FROM ecommerce_db.Orders
GROUP BY customer_id
HAVING total_spent > (
  SELECT AVG(customer_total)
  FROM (
    SELECT SUM(order_value) AS customer_total
    FROM ecommerce_db.Orders
    GROUP BY customer_id
  )
);
