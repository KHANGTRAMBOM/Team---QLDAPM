-- Tạo database
CREATE DATABASE KIEMTRA;
USE KIEMTRA;

-- Tạo bảng THELOAI với ID tự tăng
CREATE TABLE THELOAI (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Ten NVARCHAR(255) NOT NULL
);

-- Tạo bảng SACH với ID tự tăng
CREATE TABLE SACH (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    TenSach NVARCHAR(255) NOT NULL,
    GiaBan INT NOT NULL,
    MoTa NVARCHAR(MAX),
    NhaXuatBan NVARCHAR(255),
    TheLoaiID INT,
    Hinh NVARCHAR(255),
    FOREIGN KEY (TheLoaiID) REFERENCES THELOAI(ID)
);


INSERT INTO THELOAI (Ten) VALUES 
(N'Công nghệ thông tin'),
(N'Kỹ năng sống');


INSERT INTO SACH (TenSach, GiaBan, MoTa, NhaXuatBan, TheLoaiID, Hinh) VALUES 
(N'Kỹ thuật lập trình C căn bản và nâng cao', 135000, 
    N'Ngôn ngữ lập trình C là môn học cơ sở trong chương trình đào tạo kỹ sư, cử nhân tin học của nhiều trường đại học.', 
    N'NXB Bách khoa Hà Nội', 1, 'c1.jpg'),

(N'Arduino và lập trình IoT', 162000, 
    N'Arduino và lập trình IoT gồm 3 phần: Tổng quan về hệ thống nhúng, arduino và cảm biến; lập trình IoT với Arduino và ESP8266.', 
    N'NXB Thanh niên', 1, 'c2.jpg'),

(N'Python cơ bản', 95000, 
    N'Python là ngôn ngữ lập trình dễ tiếp thu, phù hợp với những ai lần đầu tiếp xúc với ngôn ngữ lập trình máy tính.', 
    N'NXB Đại học Quốc gia TP HCM', 1, 'c3.jpg'),

(N'Nguyên lý Hệ quản trị cơ sở dữ liệu', 160000, 
    N'Dữ liệu rất quan trọng trong hầu hết các tổ chức, nên các nhà khoa học máy tính đã phát triển nhiều khái niệm, nguyên lý và kỹ thuật cho việc quản lý dữ liệu.', 
    N'NXB Đại học Quốc gia TP HCM', 1, 'c4.jpg'),

(N'Đời ngắn đừng ngủ dài', 75000, 
    N'Mọi lựa chọn đều giá trị. Mọi bước đi đều quan trọng. Người trẻ cần nhiệt huyết và tận tâm với việc mình làm không bao giờ bị chối bỏ.', 
    N'NXB Trẻ', 2, 'k1.jpg'),

(N'Đừng lựa chọn an nhàn khi còn trẻ', 99000, 
    N'Thanh xuân là khoảng thời gian đẹp đẽ nhất trong đời. Hãy tận dụng những tháng năm chót để chốt các quyết định đúng với lứa tuổi một cách mạnh mẽ.', 
    N'NXB Thế giới', 2, 'k2.jpg'),

(N'Tuổi trẻ đáng giá bao nhiêu', 90000, 
    N'Hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.', 
    N'NXB Hội nhà văn', 2, 'k3.jpg');


