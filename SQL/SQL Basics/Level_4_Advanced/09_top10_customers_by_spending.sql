-- Bài 9: Tìm top 10 khách hàng VIP chịu chi nhất hệ thống dựa trên tổng tiền thanh toán
SELECT 
  c.CustomerID,
  c.FirstName,
  c.LastName,
  SUM(p.Amount) AS total_spent
FROM ecommerce_db.Payments p
JOIN ecommerce_db.Customers c USING (CustomerID)
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY total_spent DESC
LIMIT 10;
