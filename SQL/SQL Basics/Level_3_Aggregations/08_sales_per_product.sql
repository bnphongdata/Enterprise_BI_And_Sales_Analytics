-- Bài 8: Tính tổng doanh thu đem lại từ mỗi sản phẩm (Số lượng x Đơn giá)
SELECT 
  p.ProductName,
  SUM(o.Quantity * o.UnitPrice) AS total_sales
FROM ecommerce_db.OrderDetails o
JOIN ecommerce_db.Products p
  ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY total_sales DESC;
