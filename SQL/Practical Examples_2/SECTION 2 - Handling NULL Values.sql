-- 1. Tìm các kho hàng chưa được điền thông tin vị trí (Location bị NULL)
SELECT WarehouseID, WarehouseName
FROM Warehouses
WHERE Location IS NULL;

-- 2. Tìm các đơn hàng chưa có ngày giao hàng (chưa xuất kho)
SELECT OrderID, CustomerID, ShippedDate
FROM Orders
WHERE ShippedDate IS NULL;
