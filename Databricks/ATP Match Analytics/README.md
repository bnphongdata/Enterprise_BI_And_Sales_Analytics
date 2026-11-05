# ATP Match Analytics — Xây dựng Pipeline trên Databricks

Đây là một data pipeline gọn gàng mình dựng trên nền tảng Databricks để thực hành kiến trúc huy chương Medallion (Bronze / Silver / Gold). Chủ đề là phân tích các trận tennis ATP, nhưng điểm mấu chốt của dự án nằm ở tầng làm sạch (cleaning layer) — biến một file dữ liệu thô cực kỳ lộn xộn thành dữ liệu chuẩn chỉ, đáng tin cậy.

## Về tập dữ liệu

Tập dữ liệu này do mình tự tạo ra. Đây không phải kết quả thi đấu thực tế của ATP — mình tự làm và cố tình gài nhiều lỗi oái oăm thường gặp ngoài đời:
- Cùng một loại mặt sân nhưng viết tới 9 kiểu khác nhau
- Ngày tháng lẫn lộn giữa 3 định dạng
- Tiền thưởng ghi dạng text với nhiều ký hiệu tiền tệ khác nhau (,500,000, €450 000)
- Bản ghi trùng lặp một phần (bản này có thời lượng trận đấu, bản kia lại thiếu)
- Vài trận đấu có tay vợt bỏ cuộc giữa chừng (retired)

Nói chung là đúng kiểu dữ liệu 'củ chuối' mà anh em làm data hay phải còng lưng dọn dẹp ở các hệ thống thực tế!

## Các tầng xử lý trong Pipeline

* **Bronze**: Tầng chứa dữ liệu thô, giữ nguyên bản, chỉ đổi lại tên cột nào có chứa dấu cách (vì Databricks không thích tên cột có khoảng trắng).
* **Silver**: Mỗi trận đấu là 1 dòng sạch sẽ — ngày tháng được chuẩn hóa về cùng định dạng, tên mặt sân đồng nhất, khử trùng lặp dữ liệu, bóc tách tiền tệ chuẩn chỉnh (chỗ nào không rõ thì gắn nhãn UNKNOWN chứ không đoán mò).
* **Gold**: 4 view phân tích phục vụ cho các câu hỏi kinh doanh cụ thể — tỷ lệ thắng của từng tay vợt, tỷ lệ thắng theo từng mặt sân, thống kê giải đấu, và thành tích đối đầu trực tiếp (Head-to-head).

Toàn bộ pipeline được viết bằng SQL thuần, không cần dùng Python.

## Những kinh nghiệm hay rút ra khi làm dự án này

1. **Xử lý ngày tháng có 3 định dạng khác nhau về 1 cột:** Dùng hàm TRY_TO_DATE bọc bên trong COALESCE, thử lần lượt từng định dạng. Nếu dùng TO_DATE thông thường thì chỉ cần lệch định dạng một dòng là cả câu truy vấn lỗi ngay.
2. **Bóc tách tiền tệ:** $3,500,000 hay €450 000 đều được làm sạch ký tự lạ, nhưng có vài dòng chỉ có mỗi con số mà không có ký hiệu tiền tệ. Thay vì ngồi đoán mò, mình gắn thẳng nhãn UNKNOWN và đếm số lượng để giữ tính minh bạch cho số liệu.
3. **Khử trùng lặp thông minh:** Có những dòng trông như trùng lặp nhưng thực ra một bản ghi có ghi nhận thời lượng trận đấu, còn bản kia lại để trống. Dùng DISTINCT đơn thuần sẽ không giải quyết triệt để. Mình dùng ROW_NUMBER() sắp xếp theo độ đầy đủ của dữ liệu để giữ lại bản ghi chi tiết nhất.
4. **So sánh 2 cách triển khai:** Mình dựng pipeline này 2 lần — một lần bằng SQL Notebook truyền thống, và một lần bằng Lakeflow Declarative Pipeline. Bản Declarative tự động vẽ biểu đồ quan hệ phụ thuộc (dependency graph) cực kỳ trực quan và tiện lợi.

## Cấu trúc thư mục

`	ext
sql/           Các script xử lý 3 tầng Bronze/Silver/Gold (bản notebook SQL)
pipeline/      Cùng logic trên nhưng viết theo kiểu Lakeflow Declarative Pipeline
data/          File CSV dữ liệu nguồn
docs/          Ảnh chụp màn hình Dashboard kết quả
`
