-- Bài 5: Ghép bảng đơn hàng với thông tin khách để biết ai là người đặt đơn
SELECT 
  o.OrderID,
  o.OrderDate,
  c.FirstName,
  c.LastName,
  c.Email
FROM ecommerce_db.Orders o
JOIN ecommerce_db.Customers c
  ON o.CustomerID = c.CustomerID;
