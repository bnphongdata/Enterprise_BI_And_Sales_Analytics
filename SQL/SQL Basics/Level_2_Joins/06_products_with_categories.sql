-- Bài 6: Lấy danh sách sản phẩm kèm theo tên danh mục tương ứng (dùng LEFT JOIN đề phòng sản phẩm chưa phân loại)
SELECT 
  p.ProductID,
  p.ProductName,
  c.CategoryName
FROM ecommerce_db.Products p
LEFT JOIN ecommerce_db.Categories c
  ON p.CategoryID = c.CategoryID;
