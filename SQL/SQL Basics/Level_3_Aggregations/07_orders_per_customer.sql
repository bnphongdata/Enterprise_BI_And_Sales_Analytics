-- Bài 7: Đếm số lượng đơn hàng của từng khách hàng, sắp xếp từ người mua nhiều nhất xuống ít nhất
SELECT 
  CustomerID,
  COUNT(*) AS order_count
FROM ecommerce_db.Orders
GROUP BY CustomerID
ORDER BY order_count DESC;
