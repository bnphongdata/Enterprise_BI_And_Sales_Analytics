# Dashboard Phân tích Trễ chuyến Bay — Báo cáo Power BI

Bảng điều khiển Power BI đa trang (Multi-page Dashboard) được thiết kế chỉn chu để mổ xẻ nguyên nhân chậm trễ của các chuyến bay, gián đoạn vận hành và hiệu suất khai thác của các sân bay trên toàn nước Mỹ.

## Tổng quan dự án
Báo cáo giúp các nhà quản lý vận hành hàng không và các nhà phân tích giao thông nhìn thấy bức tranh toàn cảnh:
- Tỷ lệ chuyến bay đúng giờ so với các chuyến bị hoãn hoặc hủy.
- So sánh thời gian trễ trung bình giữa các hãng hàng không lớn (Delta, American, United, Southwest...).
- Phân loại rõ nguyên nhân gây trễ: do lỗi kỹ thuật/hãng bay, do thời tiết cực đoan, lỗi hệ thống không lưu (NAS), hay do tàu bay chuyến trước hạ cánh muộn kéo theo dây chuyền.
- Bản đồ trực quan các sân bay điểm nóng thường xuyên bị quá tải và chậm trễ kéo dài.

## Kỹ thuật triển khai
- Thiết kế giao diện có trang bìa (Landing Page) với nút bấm điều hướng (Page navigation) mượt mà.
- Viết các thước đo DAX động để tính số phút trễ trung bình, tỷ lệ hủy chuyến và biến động theo từng quý.
- Tạo tính năng Drill-down cho phép soi từ góc nhìn toàn quốc xuống chi tiết từng sân bay hoặc từng hãng hàng không.
