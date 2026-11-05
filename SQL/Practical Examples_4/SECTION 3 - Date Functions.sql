-- 1. Tính số ngày trôi qua từ lúc đặt đơn đến thời điểm hiện tại (Độ trễ đơn hàng)
SELECT
  OrderID,
  OrderDate,
  DATE_DIFF(CURRENT_DATE(), OrderDate, DAY) AS Order_Age_Days
FROM ecommerce_db.Orders;

-- 2. Cộng thêm 30 ngày bảo hành/đổi trả kể từ ngày mua (DATE_ADD)
SELECT
  OrderID,
  OrderDate,
  DATE_ADD(OrderDate, INTERVAL 30 DAY) AS Return_Deadline
FROM ecommerce_db.Orders;

-- 3. Tách năm và tháng từ ngày đặt hàng để phục vụ báo cáo doanh thu theo tháng (EXTRACT)
SELECT
  OrderID,
  OrderDate,
  EXTRACT(YEAR FROM OrderDate) AS Order_Year,
  EXTRACT(MONTH FROM OrderDate) AS Order_Month
FROM ecommerce_db.Orders;

-- 4. Cắt ngày về đầu tháng (DATE_TRUNC) để gom nhóm doanh thu theo từng tháng
SELECT
  DATE_TRUNC(OrderDate, MONTH) AS Month_Start,
  SUM(TotalAmount) AS Monthly_Revenue
FROM ecommerce_db.Orders
GROUP BY Month_Start
ORDER BY Month_Start;
