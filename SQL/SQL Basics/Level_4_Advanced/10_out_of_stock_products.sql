-- Bài 10: Kiểm tra kho xem sản phẩm nào đang bị hết hàng (Quantity = 0) để kịp báo nhập thêm
SELECT 
  i.ProductID,
  p.ProductName,
  i.Quantity
FROM ecommerce_db.Inventory i
JOIN ecommerce_db.Products p USING (ProductID)
WHERE i.Quantity = 0;
