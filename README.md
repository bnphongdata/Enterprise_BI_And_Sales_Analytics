# 📊 Danh mục Dự án Business Intelligence & Phân tích Kinh doanh | Bùi Nhất Phong

Chào bạn! Đây là tổng hợp các dự án phân tích dữ liệu và Business Intelligence (BI) thực chiến mà mình đã xây dựng, tập trung vào việc **mô hình hóa dữ liệu, thiết kế dashboard tương tác trực quan và giải quyết các bài toán kinh doanh thực tế**.

**Người thực hiện:** Bùi Nhất Phong (Data Analyst / BI Specialist)  
**Kỹ năng cốt lõi:** Power BI • Tableau • SQL • DAX • Data Modeling (Star Schema) • Python • Excel nâng cao

Toàn bộ các dự án trong repo này được xây dựng bằng **Power BI, Tableau, Excel, SQL, Azure và Snowflake**, mô phỏng các tình huống thực tế trong doanh nghiệp như: phân tích doanh thu bán hàng, hiệu quả chiến dịch marketing, đối soát tài chính và báo cáo vận hành.

---

## 🛠️ Bộ công cụ & Kỹ thuật sử dụng (Tech Stack)

**Business Intelligence & Trực quan hóa**
- Power BI (Power Query, DAX, Data Modeling)
- Tableau (LOD Expressions, Table Calculations)
- Excel nâng cao (Power Pivot, XLOOKUP, Pivot Tables)
- SAP ERP

**Xử lý dữ liệu & Truy vấn (Data Processing & SQL)**
- SQL (PostgreSQL, MySQL, Google BigQuery)
- Databricks & Lakehouse Pipeline
- Quy trình ETL & Làm sạch dữ liệu (Data Cleaning)

**Phân tích & Mô hình hóa (Analytics & Modeling)**
- Viết DAX từ cơ bản đến nâng cao (Time Intelligence, Dynamic Measures)
- Thiết kế mô hình dữ liệu chuẩn hình sao (Star Schema) & Snowflake Schema
- Xây dựng hệ thống chỉ số KPI đo lường hiệu suất doanh nghiệp

---

## 📈 Dự án Power BI (Nguồn dữ liệu Excel) — Tổng quan

### 1️. **MarketMindz – Dashboard Nghiên cứu Thị trường & Hành vi Khách hàng**  
Dự án này là một bảng điều khiển Power BI tương tác giúp doanh nghiệp nắm bắt hành vi mua sắm của khách, hiệu quả của từng dòng sản phẩm và xu hướng chung của thị trường. Nhờ đó, team Marketing và Product có thể đưa ra quyết định dựa trên số liệu thực tế thay vì cảm tính.

**Những insight đắt giá rút ra được:**
- Xu hướng và thói quen chi tiêu của từng nhóm khách hàng
- So sánh hiệu quả kinh doanh giữa các dòng sản phẩm
- Dự báo nhu cầu thị trường theo từng mùa vụ
- Phân tích chi tiết từng danh mục sản phẩm (Category-level insights)

*Tập dữ liệu:* Dữ liệu khảo sát thị trường  
*Thư mục dự án:* `PowerBI/MarketMindz_Market Research`

---

### 2️. **Retail Sales Analysis – Phân tích Doanh số & Lợi nhuận Bán lẻ**  
Dashboard phân tích hiệu suất bán hàng dựa trên bộ dữ liệu nổi tiếng Superstore. Mục tiêu là tìm ra xu hướng doanh thu, biên lợi nhuận và sự phân bổ doanh số theo từng vùng miền, từ đó biết rõ nhóm sản phẩm nào hay tệp khách nào đang mang lại nhiều lợi nhuận nhất cho công ty.

**Những insight đắt giá rút ra được:**
- Xu hướng doanh thu và lợi nhuận qua các năm
- So sánh hiệu quả bán hàng giữa các khu vực địa lý
- Phân tích nhóm hàng nào bán chạy nhưng lãi thấp (để điều chỉnh giá)
- Đóng góp doanh thu từ từng phân khúc khách hàng (Cá nhân, Doanh nghiệp vừa, Tập đoàn)

*Tập dữ liệu:* superstore.xlsx  
*Thư mục dự án:* `PowerBI/Retail_Sales-Analysis_PowerBI`

---

### 3. **Kraken Koffee – Báo cáo Doanh số Bán niên 2023**  
Dự án phân tích tình hình kinh doanh cho chuỗi cà phê Kraken Koffee tại khu vực Florida. Dashboard giúp ban quản trị nhìn thấy rõ doanh số thay đổi ra sao theo từng khung giờ trong ngày, sản phẩm nào bán chạy nhất vào buổi sáng hay chiều, qua đó tối ưu lịch làm việc của nhân viên và nhập nguyên vật liệu.

**Những insight đắt giá rút ra được:**
- Biến động doanh thu theo thời gian và ngày trong tuần
- Khung giờ cao điểm bán hàng trong ngày (Hourly sales pattern)
- Top đồ uống và món ăn kèm được khách gọi nhiều nhất
- Bức tranh tài chính tổng kết 6 tháng đầu năm

*Tập dữ liệu:* Dữ liệu bán hàng nội bộ chuỗi cà phê  
*Thư mục dự án:* `PowerBI/KrakenKofee_Infographic`

---

### 4. **Pharma Asset & Spend Analysis – Quản lý Tài sản & Chi tiêu Dược phẩm Đa quốc gia**  
Dashboard Power BI này giải quyết bài toán quản trị tài sản và chi phí vận hành cho một tập đoàn dược phẩm đa quốc gia. Báo cáo so sánh trực tiếp cơ cấu chi tiêu giữa 3 thị trường: Bỉ (BE), Vương quốc Anh (UK) và Mỹ (US), giúp ban giám đốc tìm ra nhà cung ứng nào chi phí quá cao hoặc tài sản nào đang bị đắp chiếu để cắt giảm lãng phí.

**Những insight đắt giá rút ra được:**
- Theo dõi trạng thái hoạt động của tài sản và trang thiết bị y tế
- Phân tích nhà cung cấp (Vendor spend) và chi phí gia công
- So sánh chi phí vận hành giữa các quốc gia
- Phát hiện các điểm rò rỉ ngân sách để tối ưu chi phí

*Tập dữ liệu:* Dữ liệu chi tiêu và danh mục tài sản dược phẩm  
*Thư mục dự án:* `PowerBI/Pharma Asset & Spend Analysis – Multi-Country Dashboard (BE, UK, US)`

---

### 5. **Electronics Shop – Báo cáo Kinh doanh Cửa hàng Đồ điện tử**  
Dự án phân tích doanh số của chuỗi bán lẻ thiết bị điện tử trong vòng 2 năm, bóc tách theo từng khu vực, phân khúc khách hàng và các gói bảo hành kèm theo. Giúp đội ngũ bán hàng biết chính sách bảo hành dài hạn tác động thế nào đến tâm lý mua hàng và giá trị đơn hàng trung bình.

**Những insight đắt giá rút ra được:**
- Xu hướng doanh thu hàng tháng và tổng sản lượng bán ra (góc nhìn 2 năm)
- Các chỉ số KPI trượt 30 ngày (Rolling 30-day KPIs: giá trị đơn trung bình, số lượng đơn)
- So sánh hiệu quả giữa 4 miền: Đông, Bắc, Nam, Tây
- Tác động của thời gian bảo hành đến giá trị mua hàng
- Theo dõi mức độ chi tiêu và đóng góp của nhóm khách hàng VIP

*Thư mục dự án:* `PowerBI/Electronics_Shop_Sales_Analysis`

---

### 6. **Airline Delay Dashboard – Phân tích Nguyên nhân Trễ chuyến Bay**  
Dashboard tương tác phân tích dữ liệu chuyến bay tại Mỹ, mổ xẻ nguyên nhân chậm trễ của các hãng hàng không và sân bay lớn. Báo cáo được thiết kế nhiều trang (Multi-page report) với tính năng lọc động, drill-down chi tiết và trang bìa điều hướng chuẩn như một ứng dụng BI chuyên nghiệp trong doanh nghiệp.

**Những insight đắt giá rút ra được:**
- Tổng quan tỷ lệ trễ chuyến và xu hướng theo mùa
- So sánh hiệu suất khai thác giữa các sân bay trung chuyển
- Bóc tách nguyên nhân gây chậm: do hãng bay, thời tiết xấu, lỗi điều hành không lưu (NAS), hay tàu bay đến muộn
- Nhận diện các điểm nghẽn cổ chai trong mạng lưới hàng không

*Thư mục dự án:* `PowerBI/Airline Delay_PowerBI_Dashboard`

---

## ☁️ Dự án Power BI (Kết nối Azure SQL) — Tổng quan

### 1. **Insigh BI – Dashboard Phân tích Thương hiệu Thời trang**  
Dự án này thể hiện luồng làm việc thực tế: Dữ liệu bán lẻ ngành thời trang được làm sạch và chuẩn hóa trước trong cơ sở dữ liệu **Azure SQL**, sau đó mới kết nối trực tiếp vào Power BI để dựng báo cáo. Dashboard phân tích hiệu quả thương hiệu, chiến lược giá, mức độ giảm giá và độ đa dạng mặt hàng để xem thương hiệu nào định vị tốt và có biên lợi nhuận cao nhất.

**Những insight đắt giá rút ra được:**
- So sánh chiến lược giảm giá (discount strategy) giữa các brand
- Sự khác biệt về biên lợi nhuận giữa hàng cao cấp và hàng bình dân
- Độ phong phú của danh mục sản phẩm theo thương hiệu
- Giá bán trung bình (ASP) và độ nhạy cảm về giá của khách

*Tập dữ liệu:* Dữ liệu sản phẩm thời trang xử lý trên Azure SQL  
*Thư mục dự án:* `PowerBI/Azure_SQL_PowerBI_Dashboard`

---

## 📊 Dự án Tableau (Nguồn dữ liệu Excel/CSV) — Tổng quan

### 1. **Social Media Analytics – Phân tích Mục tiêu Năm Mới trên Mạng xã hội**  
Dashboard Tableau này khai thác dữ liệu các bài đăng trên mạng xã hội liên quan đến chủ đề "Mục tiêu năm mới" (New Year's Resolutions). Giúp theo dõi lượng thảo luận biến động ra sao, khung giờ nào người dùng tương tác sôi nổi nhất và chủ đề nào (sức khỏe, tiền tài, sự nghiệp) được mọi người quan tâm nhất.

**Những insight đắt giá rút ra được:**
- Biểu đồ biến động lượng tweet/thảo luận theo thời gian
- Thói quen đăng bài theo từng khung giờ trong ngày
- Phân bổ các nhóm mục tiêu năm mới phổ biến nhất
- Bản đồ nhiệt địa lý thể hiện các khu vực thảo luận sôi nổi nhất

*Tập dữ liệu:* Dữ liệu bài đăng mạng xã hội, thời gian và nhãn danh mục  
*Thư mục dự án:* `Tableau/Social_Media_New_Years_Resolutions`

---

### 2. **Credit Card Complaints Dashboard – Giám sát Khiếu nại Thẻ tín dụng**  
Bảng điều khiển giúp ngân hàng theo dõi các khiếu nại của khách hàng liên quan đến thẻ tín dụng, từ đó đánh giá tốc độ xử lý của bộ phận chăm sóc khách hàng và khoanh vùng những lỗi dịch vụ thường gặp nhất.

**Những insight đắt giá rút ra được:**
- Xu hướng số lượng khiếu nại tăng/giảm qua các tháng
- Phân loại các vấn đề bị phàn nàn nhiều nhất (phí ẩn, lỗi quẹt thẻ, gian lận)
- Đo lường thời gian phản hồi và tỷ lệ giải quyết khiếu nại đúng hạn
- Mật độ khiếu nại theo từng bang/khu vực địa lý

*Tập dữ liệu:* Dữ liệu khiếu nại tài chính và thời gian xử lý  
*Thư mục dự án:* `Tableau/Credit_Card_Complaints_Dashboard`

---

### 3. **Road Accidents Dashboard – Phân tích An toàn Giao thông Đường bộ**  
Dashboard Tableau phân tích dữ liệu tai nạn giao thông tại Vương quốc Anh để tìm ra quy luật liên quan đến mức độ nghiêm trọng, điều kiện mặt đường, thời tiết và loại phương tiện tham gia.

**Những insight đắt giá rút ra được:**
- Tỷ lệ các mức độ tai nạn (nghiêm trọng, thương tích nhẹ, tử vong)
- Mối liên hệ giữa điều kiện thời tiết (mưa tuyết, sương mù, đường trơn) với rủi ro tai nạn
- Loại phương tiện hay gặp sự cố nhất (xe máy, ô tô con, xe tải)
- Phân bố điểm nóng tai nạn trên bản đồ địa lý

*Tập dữ liệu:* Dữ liệu tai nạn giao thông đường bộ Anh Quốc  
*Thư mục dự án:* `Tableau/UK_Road_Accidents_Dashboard`

---

### 4. **Tennis Analytics – Bảng Theo dõi Phong độ Quần vợt Chuyên nghiệp**  
Dashboard phân tích phong độ của các tay vợt hàng đầu thế giới qua các giải đấu lớn, mặt sân thi đấu (đất nện, cỏ, cứng) và các mốc thành tích trong sự nghiệp.

**Những insight đắt giá rút ra được:**
- Tỷ lệ chiến thắng của từng tay vợt theo từng loại mặt sân
- Thành tích thi đấu tại các giải Grand Slam danh giá
- Mối tương quan giữa số lượng danh hiệu và tiền thưởng kiếm được
- Khả năng bản lĩnh trong các trận chung kết (tỷ lệ thắng/thua chung kết)
- Xuất thân địa lý của các tay vợt xuất sắc nhất

*Tập dữ liệu:* Thống kê giải đấu và kết quả thi đấu ATP  
*Thư mục dự án:* `Tableau/Tennis_Tournaments_Dashboard`

---

## ❄️ Dự án Tableau (Kết nối Snowflake Data Warehouse) — Tổng quan

### 1. **HR Analytics Dashboard – Phân tích Nhân sự Doanh nghiệp**  
Dự án này thể hiện quy trình phân tích đầu cuối: Dữ liệu nhân sự được lưu trữ tập trung trên kho dữ liệu đám mây **Snowflake** và kết nối trực tiếp với Tableau để xây dựng báo cáo nhân sự cho ban giám đốc.

**Những insight đắt giá rút ra được:**
- Đánh giá năng suất làm việc và mức độ gắn kết của nhân viên
- So sánh hiệu quả và chi phí nhân sự giữa các phòng ban
- Biến động nhân sự qua các quý (tuyển dụng, thuyên chuyển, nghỉ việc)
- Các chỉ số KPI nhân sự quan trọng: thâm niên trung bình, tỷ lệ hoàn thành mục tiêu

*Tập dữ liệu:* Hồ sơ nhân sự, chức danh và đánh giá hiệu suất lưu trên Snowflake  
*Thư mục dự án:* `Tableau/HR_Analytics_Snowflake_Dashboard`

---

## 🐬 Dự án Tableau (Truy vấn MySQL) — Tổng quan

### 1. **Shopnest Sales Analytics Dashboard – Báo cáo Sàn TMĐT Shopnest**  
Dự án phân tích dữ liệu bán hàng trực tuyến lưu trong cơ sở dữ liệu quan hệ **MySQL**, trực quan hóa trực tiếp trên Tableau. Dashboard giúp nhận diện ngay những sản phẩm bán chạy nhất và tệp khách hàng mang lại biên lợi nhuận cao nhất cho sàn.

**Những insight đắt giá rút ra được:**
- Xu hướng doanh thu và lợi nhuận ròng qua các tháng
- Bóc tách giá trị vòng đời và độ sinh lời của từng khách hàng
- Đánh giá hiệu quả từng nhóm mặt hàng (Category performance)
- Theo dõi các chỉ số KPI bán hàng quan trọng trên sàn

*Tập dữ liệu:* Dữ liệu đơn hàng, khách hàng, giao dịch TMĐT lưu trong MySQL  
*Thư mục dự án:* `Tableau/E-Commerce_Analytics_Dashboard`

---

## 📑 Dự án Phân tích trên Microsoft Excel — Tổng quan

### 1️. **Retail Sales Analysis (Excel Model)**  
Mô hình phân tích kinh doanh bán lẻ hoàn toàn trên Excel, sử dụng hàm nâng cao, Power Query và bảng Pivot Table để theo dõi hiệu suất bán lẻ và các chỉ số KPI mà không cần phần mềm BI phức tạp.

*Thư mục dự án:* `Excel/Retail_Sales-Analysis`

---

### 2. **Bike Sales Dashboard (Phân tích Khách mua Xe đạp)**  
Dashboard tương tác trên Excel khai thác thông tin nhân khẩu học và thói quen của người mua xe đạp. Thể hiện đầy đủ các bước từ dọn dẹp dữ liệu thô, dùng Pivot Table để tổng hợp và dựng trang Dashboard trực quan với các thanh lọc Slicer.

**Những insight đắt giá rút ra được:**
- Đặc điểm độ tuổi, giới tính và nghề nghiệp của người mua xe
- Mức thu nhập và khoảng cách đi làm ảnh hưởng ra sao đến quyết định mua xe
- Thói quen sở hữu xe hơi và nhà ở liên quan đến việc chọn mua xe đạp

*Thư mục dự án:* `Excel/Bike Sales_Dashboard`

---

### 3. **Biopharma Financial Reconciliation — Đối soát Tài chính Dược sinh học Q1–Q4**  
Mô hình đối soát tài chính 4 quý trong năm cho công ty dược phẩm sinh học. Tập trung vào việc so sánh giữa bên Nợ (Debit) và bên Có (Credit), phí dịch vụ quản lý và quy trình đối soát dòng tiền.

**Những insight đắt giá rút ra được:**
- So sánh biến động giữa các khoản ghi nợ và có theo từng quý
- Kiểm tra tính cân đối và phát hiện chênh lệch sổ sách tài chính
- Báo cáo tổng kết dòng tiền tài chính cả năm

*Thư mục dự án:* `Excel/BIOPHARMA_Financial Reconciliation`

---

## 📐 Dự án Thống kê Ứng dụng (Statistics) — Tổng quan

### 1. **Phân tích Thị trường Bất động sản – Thống kê Mô tả & Phân tán**  
Phân tích dữ liệu bất động sản chuyên sâu bằng các phương pháp thống kê: đo lường độ tập trung (Mean, Median, Mode), độ phân tán (Độ lệch chuẩn, Khoảng biến thiên Range, IQR), phát hiện giá trị ngoại lai (outliers) và so sánh đơn giá theo m² giữa các quận và loại hình căn hộ.

*Thư mục dự án:* `Statistics/Measures of central tendency and dispersion`

---

### 2. **Phân tích Dữ liệu Nhân sự – Tương quan & Mô hình Hồi quy Tuyến tính**  
Phân tích thống kê về mức lương, số năm kinh nghiệm và điểm hài lòng trong công việc của nhân viên. Sử dụng hệ số tương quan (Correlation Matrix) và xây dựng mô hình hồi quy tuyến tính (Linear Regression) để đánh giá xem số năm kinh nghiệm có thực sự quyết định mức độ hài lòng với công việc hay không, kèm biểu đồ phân tán (Scatter Plot) và biểu đồ phân phối (Histogram).

*Thư mục dự án:* `Statistics/Correlation analysis and regression models`

---

## ⚡ Dự án Databricks (Lakehouse & SQL Pipeline) — Tổng quan

### 1️. **ATP Match Analytics — Xây dựng Pipeline Lakehouse trên Databricks**  
Dự án này xây dựng một luồng xử lý dữ liệu hoàn chỉnh (End-to-End Pipeline) trên nền tảng **Databricks** theo kiến trúc huy chương **Medallion (Bronze $\rightarrow$ Silver $\rightarrow$ Gold)**. Dữ liệu đầu vào cố tình được tạo với nhiều lỗi thực tế (sai lệch định dạng ngày, tiền tệ lộn xộn, bản ghi trùng lặp một phần). 

Mình đã triển khai pipeline theo 2 cách để so sánh hiệu quả: một bằng **Notebook SQL chuẩn** và một bằng **Lakeflow Declarative Pipeline**.

**Các kỹ thuật chính đã xử lý:**
- Dùng SQL chuẩn hóa ngày tháng, tỷ giá tiền tệ và các trường phân loại
- Khử trùng lặp (Deduplication) bằng Window Functions dựa trên mức độ đầy đủ của dữ liệu
- Thiết kế pipeline tự động hóa phụ thuộc giữa các tầng dữ liệu
- Báo cáo kiểm định chất lượng dữ liệu song song với kết quả phân tích

*Tập dữ liệu:* Dữ liệu các trận đấu quần vợt ATP  
*Thư mục dự án:* `Databricks/ATP Match Analytics`

---

## 🗄️ Thư viện Bài tập & Case Study SQL Thực chiến — Tổng quan

Toàn bộ các truy vấn SQL trong thư mục này được viết chuẩn theo cú pháp **BigQuery / Standard SQL**, mô phỏng chính xác các bài toán truy xuất và xử lý dữ liệu thực tế tại doanh nghiệp:

### 1. Thao tác Cơ bản, Lọc dữ liệu & Xử lý Chuỗi (`SQL/Practical Examples` & `Examples_2-3`)
- Lọc dữ liệu nhiều điều kiện với `WHERE`, xử lý giá trị `NULL`
- Sắp xếp với `ORDER BY`, đặt bí danh `AS`, lọc duy nhất `DISTINCT`
- Bộ hàm xử lý chuỗi thực tế: `CONCAT, SUBSTRING, LENGTH, TRIM, UPPER, LOWER, LEFT, RIGHT, REPLACE`

### 2. Các hàm Tính toán Số học & Ngày tháng (`SQL/Practical Examples_4`)
- Tính toán số học: `ABS, POWER, SQRT, CEIL, FLOOR, ROUND`
- Xử lý ngày tháng: `EXTRACT` (tách năm, tháng, ngày, thứ), `DATE_TRUNC`
- Ép kiểu dữ liệu an toàn: `CAST, SAFE_CAST, FORMAT_DATE`

### 3. Ghép nối Bảng với JOIN & Gộp bảng với UNION (`SQL/Practical Examples_5`)
- `INNER JOIN`, `LEFT JOIN` giữa bảng sự kiện (Fact) và bảng danh mục (Dimension)
- Ghép nối dữ liệu bán hàng với khách hàng, kho bãi, sản phẩm và thời tiết
- Phân biệt rõ bản chất giữa `UNION` (loại bỏ trùng lặp) và `UNION ALL` (giữ nguyên tốc độ cao)

### 4. Gom nhóm & Tính toán Tổng hợp (`SQL/Practical Examples_6`)
- Các hàm tổng hợp cốt lõi: `COUNT, SUM, AVG, MIN, MAX, COUNT(DISTINCT)`
- Gom nhóm đa tầng với `GROUP BY`, lọc kết quả sau gom nhóm bằng `HAVING`
- Tính toán doanh số theo chu kỳ thời gian kết hợp hàm `DATE_TRUNC`

### 5. Truy vấn Lồng (Subqueries) & Bảng tạm (CTEs) (`SQL/Practical Examples_7`)
- Dùng mệnh đề `WITH` (Common Table Expressions - CTEs) để viết code SQL module hóa, dễ đọc và dễ bảo trì
- Áp dụng Subquery trong mệnh đề `SELECT`, `WHERE` và `FROM`
- Viết Subquery tương quan (Correlated Subquery) để so sánh từng dòng với mức trung bình của nhóm

### 6. Window Functions Phân tích Dữ liệu Chuyên sâu (`SQL/Practical Examples_8`)
- Mệnh đề `OVER(PARTITION BY ... ORDER BY ...)` giữ nguyên chi tiết từng dòng
- Đánh số thứ tự và xếp hạng: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`
- So sánh dữ liệu theo chuỗi thời gian: `LEAD()` (dòng kế tiếp), `LAG()` (dòng liền trước) để tính tăng trưởng doanh số
- Tính tổng tích lũy (Running Total) và giá trị trung bình trượt (Moving Average)

---

## 🐍 Phân tích Dữ liệu Thực tế với Python — Tổng quan

Toàn bộ các notebook trong thư mục `Python/` được thiết kế có cấu trúc mạch lạc, phục vụ từ nền tảng lập trình đến làm sạch và trực quan hóa dữ liệu:

1. **Python Fundamentals (`01_python_basics.ipynb` & `03_Core Data Structures.ipynb`):**
   - Kiểu dữ liệu cơ bản, danh sách (`list`), bộ (`tuple`), từ điển (`dict`), tập hợp (`set`).
   - Các phép toán số học, thao tác chuỗi và tư duy lập trình căn bản.

2. **Cấu trúc Điều khiển & Vòng lặp (`05_Control Flow_Loops.ipynb`):**
   - Mệnh đề điều kiện `if - elif - else`, toán tử logic `and, or, not`.
   - Vòng lặp `for`, `while`, kiểm soát vòng lặp với `break`, `continue` phục vụ tự động hóa xử lý dữ liệu.

3. **Làm việc với Dữ liệu Bảng bằng Pandas (`07_Pandas.ipynb` & `08_Advanced Pandas.ipynb`):**
   - Đọc/ghi các định dạng file (`read_csv`, `read_excel`, `to_json`).
   - Khám phá dữ liệu: `.head()`, `.info()`, `.describe()`, `.shape`.
   - Lọc và cắt lát dữ liệu mạnh mẽ với `.loc`, `.iloc` và Boolean Indexing.
   - Xử lý dữ liệu khuyết thiếu: `.isna()`, `.fillna()`, `.dropna()`.
   - Gom nhóm và biến đổi: `.groupby()`, `.agg()`, `.apply()`, hàm ghép bảng `.merge()` và `.concat()`.

4. **Trực quan hóa Dữ liệu với Matplotlib & Seaborn (`10_Matplotlib.ipynb` & `11_Seaborn.ipynb`):**
   - Biểu đồ đường (Line Chart) theo dõi xu hướng chuỗi thời gian.
   - Biểu đồ cột (Bar Chart) so sánh giữa các danh mục sản phẩm.
   - Biểu đồ tròn (Pie Chart) thể hiện cơ cấu tỷ trọng.
   - Biểu đồ phân phối Histogram & KDE, biểu đồ tương quan Scatter Plot và Heatmap trực quan ma trận tương quan.

---

## 👨‍💻 Về tác giả (About Me)
Mình là **Bùi Nhất Phong**, một **Data Analyst / BI Developer** đam mê việc biến các khối dữ liệu rời rạc thành những bảng điều khiển trực quan và insight kinh doanh sắc bén.  
Kỹ năng thế mạnh: **Mô hình hóa dữ liệu (Star Schema), viết DAX & SQL tối ưu, xây dựng Dashboard Power BI/Tableau và phân tích thống kê bằng Python**.

---

## 📬 Liên hệ (Contact)
- **Họ và tên:** Bùi Nhất Phong  
- **Vị trí:** Data Analyst & Business Intelligence Specialist  
- **LinkedIn:** [linkedin.com/in/buinhatphong](https://www.linkedin.com/in/buinhatphong/)  
- **GitHub:** [github.com/buinhatphong](https://github.com/buinhatphong)  
- **Email:** [buinhatphong.analytics@gmail.com](mailto:buinhatphong.analytics@gmail.com)
