
USE [master]
GO
/****** Object:  Database [webbansach]    Script Date: 12/14/2024 9:39:19 PM ******/
CREATE DATABASE [webbansach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webbansach', FILENAME = N'D:\webbansach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webbansach_log', FILENAME = N'D:\webbansach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [webbansach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webbansach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webbansach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webbansach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webbansach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webbansach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webbansach] SET ARITHABORT OFF 
GO
ALTER DATABASE [webbansach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [webbansach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webbansach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webbansach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webbansach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webbansach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webbansach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webbansach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webbansach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webbansach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webbansach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webbansach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webbansach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webbansach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webbansach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webbansach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webbansach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webbansach] SET RECOVERY FULL 
GO
ALTER DATABASE [webbansach] SET  MULTI_USER 
GO
ALTER DATABASE [webbansach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webbansach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webbansach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webbansach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webbansach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webbansach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'webbansach', N'ON'
GO
ALTER DATABASE [webbansach] SET QUERY_STORE = OFF
GO
USE [webbansach]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MaCV] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[HeSo] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHOADON]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHOADON](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[DonGia] [int] NULL,
	[SoLuong] [smallint] NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUAHANG]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUAHANG](
	[MaCH] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[DienThoai] [varchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIACHI]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIACHI](
	[MaDC] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[PhuongXa] [varchar](20) NULL,
	[QuanHuyen] [varchar](50) NULL,
	[TinhThanh] [varchar](50) NULL,
	[MacDinh] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [datetime] NULL,
	[TongTien] [int] NULL,
	[MaKH] [int] NOT NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[DienThoai] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATHANG](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[GiaGoc] [int] NULL,
	[GiaBan] [int] NULL,
	[SoLuong] [smallint] NULL,
	[MoTa] [nvarchar](1000) NULL,
	[HinhAnh] [varchar](255) NULL,
	[MaDM] [int] NOT NULL,
	[LuotXem] [int] NULL,
	[LuotMua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/14/2024 9:39:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[MaCV] [int] NOT NULL,
	[DienThoai] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CHUCVU] ADD  DEFAULT ((1.0)) FOR [HeSo]
GO
ALTER TABLE [dbo].[CTHOADON] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[CTHOADON] ADD  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[DIACHI] ADD  DEFAULT (N'Đông Xuyên') FOR [PhuongXa]
GO
ALTER TABLE [dbo].[DIACHI] ADD  DEFAULT (N'TP. Long Xuyên') FOR [QuanHuyen]
GO
ALTER TABLE [dbo].[DIACHI] ADD  DEFAULT (N'An Giang') FOR [TinhThanh]
GO
ALTER TABLE [dbo].[DIACHI] ADD  DEFAULT ((1)) FOR [MacDinh]
GO
ALTER TABLE [dbo].[HOADON] ADD  DEFAULT (getdate()) FOR [Ngay]
GO
ALTER TABLE [dbo].[HOADON] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[HOADON] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [GiaGoc]
GO
ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [LuotMua]
GO
ALTER TABLE [dbo].[CTHOADON]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CTHOADON]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[MATHANG] ([MaSach])
GO
ALTER TABLE [dbo].[DIACHI]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DANHMUC] ([MaDM])
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD FOREIGN KEY([MaCV])
REFERENCES [dbo].[CHUCVU] ([MaCV])
GO
USE [master]
GO
ALTER DATABASE [webbansach] SET  READ_WRITE 
GO


 ------------------------------------------- seed data  -------------------------------------------


 -- Dữ liệu bảng CUA_HANG
INSERT INTO CUAHANG(Ten, DienThoai, DiaChi) VALUES(N'Cửa hàng sách BStore','0296-3841190',N'18 Ung Văn Khiêm, P Đông Xuyên, TP Long Xuyên, An Giang');
GO

-- Dữ liệu bảng LOAI_HANG
INSERT INTO DANHMUC(Ten) VALUES(N'Sách giáo khoa');
INSERT INTO DANHMUC(Ten) VALUES(N'Sách tham khảo');
INSERT INTO DANHMUC(Ten) VALUES(N'Tiểu thuyết');
INSERT INTO DANHMUC(Ten) VALUES(N'Sách kỹ năng sống');
INSERT INTO DANHMUC(Ten) VALUES(N'Truyện tranh');
INSERT INTO DANHMUC(Ten) VALUES(N'Sách thiếu nhi');
INSERT INTO DANHMUC(Ten) VALUES(N'Từ điển');
INSERT INTO DANHMUC(Ten) VALUES(N'Sách học ngoại ngữ');
INSERT INTO DANHMUC(Ten) VALUES(N'Sách lịch sử');
INSERT INTO DANHMUC(Ten) VALUES(N'Sách công nghệ thông tin');
INSERT INTO DANHMUC(Ten) VALUES(N'Sách y học');
INSERT INTO DANHMUC(Ten) VALUES(N'Sách nghệ thuật');
GO



-- Dữ liệu bảng MATHANG
INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sách giáo khoa lớp 1', 20000, 25000, 100, N'Sách giáo khoa đầy đủ môn học lớp 1', 'sgk_1.jpg', 1, 50, 10);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sách giáo khoa lớp 12', 40000, 50000, 150, N'Sách giáo khoa đầy đủ môn học lớp 12', 'sgk_12.jpg', 1, 70, 25);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Tiếng Anh lớp 6', 30000, 35000, 200, N'Sách tiếng Anh hệ 10 năm lớp 6', 'ta_6.jpg', 1, 80, 30);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Bài tập Toán nâng cao lớp 9', 25000, 30000, 80, N'Sách bài tập toán nâng cao dành cho học sinh lớp 9', 'tnc_4.jpg', 2, 60, 20);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Học tốt Ngữ văn lớp 10', 35000, 40000, 60, N'Tài liệu hỗ trợ học tốt môn Ngữ văn lớp 10', 'htnv_10.jpg', 2, 50, 15);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Truyện tranh Doremon tập 1', 20000, 22000, 500, N'Truyện tranh Doremon dành cho thiếu nhi', 'drm_dtn_1.jpg', 5, 150, 100);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Truyện tranh Conan tập 30', 25000, 30000, 300, N'Truyện tranh thám tử Conan tập 30', 'ttcn_30.jpg', 5, 120, 90);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sách dạy nấu ăn', 45000, 50000, 50, N'Hướng dẫn các món ăn gia đình', '80n_akn.jpg', 4, 40, 10);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sổ tay Toán học', 30000, 35000, 70, N'Tổng hợp kiến thức Toán học từ cơ bản đến nâng cao', 'stth.jpg', 6, 80, 20);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Truyện cổ tích Việt Nam', 20000, 25000, 120, N'Tuyển tập truyện cổ tích dành cho thiếu nhi', 'tctvn_1.jpg', 6, 100, 50);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sách Java cơ bản', 50000, 60000, 30, N'Sách lập trình Java cơ bản dành cho người mới bắt đầu', 'jvcb_1.jpg', 10, 50, 20);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Python nâng cao', 60000, 70000, 40, N'Tìm hiểu các kỹ thuật nâng cao trong lập trình Python', 'pync_1.jpg', 10, 60, 25);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'100 bài văn mẫu lớp 9', 40000, 45000, 150, N'Tuyển tập 100 bài văn mẫu dành cho học sinh lớp 9', '100vm_9.jpg', 2, 70, 30);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Tiểu thuyết "Tôi thấy hoa vàng trên cỏ xanh"', 80000, 90000, 50, N'Tác phẩm nổi tiếng của Nguyễn Nhật Ánh', 'tthvtcx.jpg', 3, 100, 60);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Tiểu thuyết "Đắc nhân tâm"', 90000, 100000, 70, N'Sách nổi tiếng về kỹ năng sống và giao tiếp', 'dnt_1.jpg', 4, 150, 80);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sách Lịch sử Việt Nam', 50000, 55000, 60, N'Khám phá lịch sử nước nhà qua các thời kỳ', 'vn_lskbg.jpg', 9, 40, 15);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sách Lịch sử thế giới', 70000, 80000, 40, N'Tìm hiểu lịch sử thế giới qua các nền văn minh', 'lstg.jpg', 9, 30, 10);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sách tiếng Nhật N5', 45000, 50000, 100, N'Sách học tiếng Nhật dành cho người mới bắt đầu', 'tnn5_1.jpg', 8, 90, 40);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Từ điển Anh-Việt', 60000, 70000, 70, N'Từ điển đầy đủ từ cơ bản đến nâng cao', 'dtav_1.jpg', 7, 120, 50);

INSERT INTO MATHANG (Ten, GiaGoc, GiaBan, SoLuong, MoTa, HinhAnh, MaDM, LuotXem, LuotMua) 
VALUES (N'Sách Lập trình web', 80000, 90000, 30, N'Khám phá cách xây dựng trang web chuyên nghiệp', 'ltw_1.jpg', 10, 50, 20);
GO
-- Dữ liệu bảng CHUC_VU
INSERT INTO CHUCVU(Ten) VALUES(N'Quản lý');
INSERT INTO CHUCVU(Ten) VALUES(N'Nhân viên thu ngân');
INSERT INTO CHUCVU(Ten) VALUES(N'Nhân viên kho');
GO
-- Dữ liệu bảng NHANVIEN
INSERT INTO NHANVIEN(Ten,MaCV,DienThoai,Email,MatKhau) VALUES(N'Nguyễn Trọng Khang',1,'0909456789','nptan@abc.com','0000');
INSERT INTO NHANVIEN(Ten,MaCV,DienThoai,Email,MatKhau) VALUES(N'Nguyễn Thị Anh Thư',2,'0988778899','dtmthuan@abc.com','0000');
INSERT INTO NHANVIEN(Ten,MaCV,DienThoai,Email,MatKhau) VALUES(N'Lê Dương Khang',3,'0903123123','thson@abc.com','0000');
INSERT INTO NHANVIEN(Ten,MaCV,DienThoai,Email,MatKhau) VALUES(N'Nguyễn Trần Thanh Vy',2,'0913454544','lnthanh@abc.com','0000');
GO
-- Dữ liệu bảng KHACHHANG
INSERT INTO KHACHHANG(Ten,DienThoai,Email,MatKhau) VALUES(N'Khách Hàng A','','','');
GO
-- Dữ liệu bảng DIACHI
INSERT INTO DIACHI(MaKH,DiaChi,PhuongXa,QuanHuyen,TinhThanh,MacDinh) VALUES(1,N'',N'',N'',N'',1);
GO
-- Dữ liệu bảng HOADON
INSERT INTO HOADON(TongTien,MaKH,TrangThai) VALUES(70000,1,0);
GO
-- Dữ liệu bảng CTHOA_DON
INSERT INTO CTHOADON(MaHD,MaSach,DonGia,SoLuong,ThanhTien) VALUES(1,2,23000,1,23000);
GO  

select * from khachhang