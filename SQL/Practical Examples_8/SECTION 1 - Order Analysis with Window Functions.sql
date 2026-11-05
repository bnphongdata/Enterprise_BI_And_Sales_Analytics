-- ====================================================================
-- PHÂN TÍCH ĐƠN HÀNG VỚI WINDOW FUNCTIONS & BIỂU THỨC CASE
-- ====================================================================

-- 1. Đánh số thứ tự các đơn hàng của từng khách hàng theo trình tự thời gian đặt đơn (ROW_NUMBER)
SELECT
    CustomerID,
    OrderID,
    OrderDate,
    ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS OrderNumber
FROM ecommerce_db.Orders
ORDER BY CustomerID, OrderDate;

-- 2. Xếp hạng giá trị đơn hàng trên toàn hệ thống bằng hàm RANK (đơn giá trị cao nhất xếp số 1)
SELECT
    OrderID,
    CustomerID,
    TotalAmount,
    RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
FROM ecommerce_db.Orders
ORDER BY TotalAmount DESC;

-- 3. So sánh với đơn liền trước và đơn liền sau của từng khách bằng LAG và LEAD
SELECT
    CustomerID,
    OrderID,
    OrderDate,
    LAG(TotalAmount) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS PreviousOrderAmount,
    LEAD(TotalAmount) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS NextOrderAmount
FROM ecommerce_db.Orders
ORDER BY CustomerID, OrderDate;

-- 4. Tính tổng doanh thu toàn sàn và tính tổng tích lũy (Running Total) theo thời gian của từng khách
SELECT
    CustomerID,
    OrderDate,
    TotalAmount,
    SUM(TotalAmount) OVER () AS TotalAmountAll,
    SUM(TotalAmount) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS RunningTotal
FROM ecommerce_db.Orders
ORDER BY CustomerID, OrderDate;

-- 5. Phân nhóm trạng thái tồn kho bằng biểu thức CASE:
-- 'Hết hàng' nếu số lượng là NULL hoặc = 0
-- 'Sắp hết' nếu lượng tồn từ 1 đến 20
-- 'Còn nhiều' nếu lượng tồn lớn hơn 20
SELECT
    ProductID,
    StockLevel,
    CASE
        WHEN StockLevel IS NULL OR StockLevel = 0 THEN 'Hết hàng'
        WHEN StockLevel BETWEEN 1 AND 20 THEN 'Sắp hết'
        ELSE 'Còn nhiều'
    END AS InventoryCategory
FROM ecommerce_db.Inventory;

-- 6. Điền giá trị mặc định cho đơn chưa cập nhật trạng thái: Thay các ô NULL thành 'Đang chờ xử lý'
SELECT
    OrderID,
    CustomerID,
    OrderDate,
    CASE
        WHEN OrderStatus IS NULL THEN 'Đang chờ xử lý'
        ELSE OrderStatus
    END AS OrderStatus
FROM ecommerce_db.Orders;
