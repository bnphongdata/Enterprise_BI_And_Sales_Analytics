-- ====================================================================
-- THỰC HÀNH GỘP BẢNG BẰNG MỆNH ĐỀ UNION VÀ UNION ALL
-- ====================================================================

-- 1. Gom danh sách các trạng thái phát sinh từ cả bảng Payments và Orders (loại bỏ trạng thái trùng lặp bằng UNION DISTINCT).
SELECT Status
FROM ecommerce_db.Orders
UNION DISTINCT
SELECT Status
FROM ecommerce_db.Payments;

-- 2. Gom danh sách đơn hàng theo mốc thời gian:
-- Nếu đơn đặt trước ngày 01/07/2023 thì lấy ngày từ bảng Orders
-- Nếu giao dịch sau ngày 01/07/2023 thì lấy ngày từ bảng Payments
SELECT
  OrderID,
  Status,
  OrderDate AS ReferenceDate
FROM ecommerce_db.Orders
WHERE OrderDate < DATE '2023-07-01'
UNION ALL
SELECT
  OrderID,
  Status,
  PaymentDate AS ReferenceDate
FROM ecommerce_db.Payments
WHERE PaymentDate >= DATE '2023-07-01';

-- 3. Tạo danh sách tất cả các mã bưu điện (Postal Code) từng được giao hàng tới từ cả bảng Orders và bảng Customers.
SELECT ShippingPostalCode AS PostalCode
FROM ecommerce_db.Orders
WHERE ShippingPostalCode IS NOT NULL
UNION DISTINCT
SELECT PostalCode
FROM ecommerce_db.Customers
WHERE PostalCode IS NOT NULL;
