Báo cáo Hiệu suất Bán hàng Chuỗi Đồ điện tử (Power BI)

Dự án xây dựng một bảng điều khiển tập trung giúp ban giám đốc chuỗi bán lẻ thiết bị điện tử theo dõi sát sao tình hình doanh số và tìm ra động lực tăng trưởng cốt lõi.

Các yêu cầu phân tích chính:
- Bức tranh tổng quan về doanh thu và sản lượng bán ra trên toàn hệ thống
- So sánh hiệu quả bán hàng giữa 4 khu vực địa lý: Đông, Bắc, Nam, Tây
- Theo dõi các chỉ số KPI trượt 30 ngày (Rolling 30-day KPIs): doanh số 30 ngày gần nhất, giá trị đơn hàng trung bình
- Tác động của chính sách bảo hành: Khách hàng mua gói bảo hành dài hạn hay ngắn hạn chi tiêu nhiều hơn?
- Theo dõi mức độ trung thành và đóng góp doanh số của nhóm khách hàng VIP

Mô hình dữ liệu (Data Model):
Báo cáo sử dụng mô hình dữ liệu chuẩn hình sao (Star Schema):
- Bảng Fact: Fact_Sales (chứa các giao dịch bán hàng, doanh thu, mã khách, loại bảo hành, ngày đặt)
- Các bảng Dim: Dim_Date, Dim_Customer, Dim_Region, Dim_Product, Dim_Warranty
- Chiều lọc 1 chiều (Single-direction filter flow) từ Dimension sang Fact giúp tối ưu tốc độ tính toán DAX và load báo cáo cực nhanh.
