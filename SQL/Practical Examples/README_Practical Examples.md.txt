# Các Bài toán SQL Thực tế — Trích xuất & Xử lý Dữ liệu

Thư mục này chứa các bài tập truy vấn SQL thực hành dựa trên môi trường Google BigQuery / SQL Chuẩn.
Mục đích của những bài này là luyện thành thạo các thao tác SQL mà một Data Analyst dùng hàng ngày: trích xuất đúng cột cần xem, lọc các điều kiện nghiệp vụ thực tế, sắp xếp kết quả và kết hợp nhiều tiêu chí để tìm ra câu trả lời cho doanh nghiệp.

Đây là nền tảng quan trọng giúp làm sạch dữ liệu thô, phân tích khám phá (EDA) và chuẩn bị các bảng dữ liệu tinh gọn trước khi đưa lên Power BI hoặc Tableau để làm báo cáo.

## Mục lục các phần thực hành:
1. Truy vấn cơ bản: Lệnh SELECT
2. Lọc dữ liệu theo điều kiện: Mệnh đề WHERE
3. Sắp xếp thứ tự hiển thị: Mệnh đề ORDER BY
4. Kết hợp Lọc và Sắp xếp trong bài toán thực tế

---

### Ví dụ nhanh:

1. Lệnh SELECT cơ bản:
   Lấy danh sách tất cả khách hàng:
   `sql
   SELECT *
   FROM Customers;
   `
   Chỉ lấy họ và tên khách hàng:
   `sql
   SELECT FirstName, LastName
   FROM Customers;
   `

2. Lọc dữ liệu với WHERE:
   Tìm các đơn hàng phát sinh sau ngày 01/06/2023:
   `sql
   SELECT OrderID, OrderDate
   FROM Orders
   WHERE OrderDate > '2023-06-01';
   `
