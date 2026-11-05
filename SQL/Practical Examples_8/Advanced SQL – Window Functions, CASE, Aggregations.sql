-- ====================================================================
-- SQL NÂNG CAO: WINDOW FUNCTIONS, BIỂU THỨC CASE & TỔNG HỢP NÂNG CAO
-- ====================================================================

-- 1. Lấy giá trị đơn hàng liền trước của cùng một khách hàng (dùng LAG)
SELECT
    CustomerID,
    OrderID,
    OrderDate,
    TotalAmount,
    LAG(TotalAmount) OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate
    ) AS PreviousOrderAmount
FROM ecommerce_db.Orders
ORDER BY CustomerID, OrderDate;

-- 2. Xếp hạng giá trị đơn hàng bằng DENSE_RANK (nếu trùng điểm sẽ cùng hạng, hạng kế tiếp không bị nhảy cóc)
SELECT
    OrderID,
    CustomerID,
    TotalAmount,
    DENSE_RANK() OVER (
        ORDER BY TotalAmount DESC
    ) AS OrderRank
FROM ecommerce_db.Orders;

-- 3. Đánh dấu đơn hàng đầu tiên của khách (First Order) để phân tích hành vi kích hoạt
SELECT
    CustomerID,
    OrderID,
    OrderDate,
    ROW_NUMBER() OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate
    ) AS OrderNumber,
    CASE
        WHEN ROW_NUMBER() OVER (
            PARTITION BY CustomerID
            ORDER BY OrderDate
        ) = 1 THEN 'Đơn đầu tiên'
        ELSE 'Đơn mua lại'
    END AS OrderType
FROM ecommerce_db.Orders;

-- 4. Tìm ngày đặt đơn tiếp theo của khách (dùng LEAD)
SELECT
    CustomerID,
    OrderID,
    OrderDate,
    LEAD(OrderDate) OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate
    ) AS NextOrderDate
FROM ecommerce_db.Orders;

-- 5. Điền ngày hôm nay cho các đơn hàng chưa có ngày giao hàng (ShippedDate bị NULL)
SELECT
    OrderID,
    CustomerID,
    COALESCE(ShippedDate, CURRENT_DATE()) AS ShippedDate_Clean
FROM ecommerce_db.Orders;

-- 6. Đánh giá xem đơn hàng có giá trị cao hơn mức chi tiêu bình quân của khách hay không
SELECT
    OrderID,
    CustomerID,
    TotalAmount,
    AVG(TotalAmount) OVER (PARTITION BY CustomerID) AS CustomerAvgAmount,
    CASE
        WHEN TotalAmount > AVG(TotalAmount) OVER (PARTITION BY CustomerID) THEN 'CAO HƠN TRUNG BÌNH'
        ELSE 'THẤP HƠN HOẶC BẰNG'
    END AS Above_Average
FROM ecommerce_db.Orders;

-- 7. Tính khoảng cách chênh lệch chi tiêu giữa 2 đơn hàng liên tiếp của cùng một khách
SELECT
    CustomerID,
    OrderID,
    OrderDate,
    TotalAmount,
    ABS(TotalAmount - LAG(TotalAmount) OVER (PARTITION BY CustomerID ORDER BY OrderDate)) AS OrderDifference
FROM ecommerce_db.Orders;

-- 8. Phân hạng khách hàng theo tổng mức chi tiêu:
-- Tổng chi tiêu > 2000: 'VIP'
-- Từ 1000 đến 2000: 'Thân thiết'
-- Dưới 1000: 'Tiềm năng'
SELECT
    CustomerID,
    SUM(TotalAmount) AS TotalSpent,
    CASE
        WHEN SUM(TotalAmount) > 2000 THEN 'VIP'
        WHEN SUM(TotalAmount) BETWEEN 1000 AND 2000 THEN 'Thân thiết'
        ELSE 'Tiềm năng'
    END AS CustomerTier
FROM ecommerce_db.Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC;

-- 9. Phân loại quy mô đơn hàng (Order Size):
-- Đơn trên 300 đô: 'Đơn lớn'
-- Đơn từ 100 đến 300 đô: 'Đơn vừa'
-- Đơn dưới 100 đô: 'Đơn nhỏ'
SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount > 300 THEN 'Đơn lớn'
        WHEN TotalAmount BETWEEN 100 AND 300 THEN 'Đơn vừa'
        ELSE 'Đơn nhỏ'
    END AS OrderSize
FROM ecommerce_db.Orders;

-- 10. Phân nhóm khu vực địa lý cho khách hàng
SELECT
    CustomerID,
    Country,
    CASE
        WHEN Country IN ('USA', 'Canada', 'Mexico') THEN 'Bắc Mỹ'
        WHEN Country IN ('UK', 'Germany', 'France', 'Poland') THEN 'Châu Âu'
        ELSE 'Khu vực khác'
    END AS RegionGroup
FROM ecommerce_db.Customers;
