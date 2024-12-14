﻿{"metadata":{"kernel_spec":{"name":"SQL","language":"sql","display_name":"SQL"},"language_info":{"name":"sql","version":""}},"nbformat":4,"nbformat_minor":2,"cells":[{"cell_type":"markdown","source":["# [webbansach]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']","object_type":"Database"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["USE [master]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']","object_type":"Database"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Database [webbansach]    Script Date: 12/14/2024 7:34:18 PM ******/\r\nCREATE DATABASE [webbansach]\r\n CONTAINMENT = NONE\r\n ON  PRIMARY \r\n( NAME = N'webbansach', FILENAME = N'C:\\Program Files\\Microsoft SQL Server\\MSSQL15.MSSQLSERVER\\MSSQL\\DATA\\webbansach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )\r\n LOG ON \r\n( NAME = N'webbansach_log', FILENAME = N'C:\\Program Files\\Microsoft SQL Server\\MSSQL15.MSSQLSERVER\\MSSQL\\DATA\\webbansach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )\r\n WITH CATALOG_COLLATION = DATABASE_DEFAULT\r\n","GO\r\n","ALTER DATABASE [webbansach] SET COMPATIBILITY_LEVEL = 150\r\n","GO\r\n","IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))\r\nbegin\r\nEXEC [webbansach].[dbo].[sp_fulltext_database] @action = 'enable'\r\nend\r\n","GO\r\n","ALTER DATABASE [webbansach] SET ANSI_NULL_DEFAULT OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET ANSI_NULLS OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET ANSI_PADDING OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET ANSI_WARNINGS OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET ARITHABORT OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET AUTO_CLOSE OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET AUTO_SHRINK OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET AUTO_UPDATE_STATISTICS ON \r\n","GO\r\n","ALTER DATABASE [webbansach] SET CURSOR_CLOSE_ON_COMMIT OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET CURSOR_DEFAULT  GLOBAL \r\n","GO\r\n","ALTER DATABASE [webbansach] SET CONCAT_NULL_YIELDS_NULL OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET NUMERIC_ROUNDABORT OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET QUOTED_IDENTIFIER OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET RECURSIVE_TRIGGERS OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET  ENABLE_BROKER \r\n","GO\r\n","ALTER DATABASE [webbansach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET DATE_CORRELATION_OPTIMIZATION OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET TRUSTWORTHY OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET ALLOW_SNAPSHOT_ISOLATION OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET PARAMETERIZATION SIMPLE \r\n","GO\r\n","ALTER DATABASE [webbansach] SET READ_COMMITTED_SNAPSHOT OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET HONOR_BROKER_PRIORITY OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET RECOVERY FULL \r\n","GO\r\n","ALTER DATABASE [webbansach] SET  MULTI_USER \r\n","GO\r\n","ALTER DATABASE [webbansach] SET PAGE_VERIFY CHECKSUM  \r\n","GO\r\n","ALTER DATABASE [webbansach] SET DB_CHAINING OFF \r\n","GO\r\n","ALTER DATABASE [webbansach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) \r\n","GO\r\n","ALTER DATABASE [webbansach] SET TARGET_RECOVERY_TIME = 60 SECONDS \r\n","GO\r\n","ALTER DATABASE [webbansach] SET DELAYED_DURABILITY = DISABLED \r\n","GO\r\n","ALTER DATABASE [webbansach] SET ACCELERATED_DATABASE_RECOVERY = OFF  \r\n","GO\r\n","EXEC sys.sp_db_vardecimal_storage_format N'webbansach', N'ON'\r\n","GO\r\n","ALTER DATABASE [webbansach] SET QUERY_STORE = OFF\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']","object_type":"Database"}},{"cell_type":"markdown","source":["# [dbo].[CHUCVU]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CHUCVU' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["USE [webbansach]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CHUCVU' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[CHUCVU]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[CHUCVU](\r\n\t[MaCV] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Ten] [nvarchar](100) NOT NULL,\r\n\t[HeSo] [float] NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaCV] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CHUCVU' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[CTHOADON]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[CTHOADON]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[CTHOADON](\r\n\t[MaCTHD] [int] IDENTITY(1,1) NOT NULL,\r\n\t[MaHD] [int] NOT NULL,\r\n\t[MaSach] [int] NOT NULL,\r\n\t[DonGia] [int] NULL,\r\n\t[SoLuong] [smallint] NULL,\r\n\t[ThanhTien] [int] NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaCTHD] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[CUAHANG]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CUAHANG' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[CUAHANG]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[CUAHANG](\r\n\t[MaCH] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Ten] [nvarchar](100) NOT NULL,\r\n\t[DienThoai] [varchar](20) NULL,\r\n\t[DiaChi] [nvarchar](100) NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaCH] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CUAHANG' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[DANHMUC]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DANHMUC' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[DANHMUC]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[DANHMUC](\r\n\t[MaDM] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Ten] [nvarchar](100) NOT NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaDM] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DANHMUC' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[DIACHI]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[DIACHI]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[DIACHI](\r\n\t[MaDC] [int] IDENTITY(1,1) NOT NULL,\r\n\t[MaKH] [int] NOT NULL,\r\n\t[DiaChi] [nvarchar](100) NOT NULL,\r\n\t[PhuongXa] [varchar](20) NULL,\r\n\t[QuanHuyen] [varchar](50) NULL,\r\n\t[TinhThanh] [varchar](50) NULL,\r\n\t[MacDinh] [int] NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaDC] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[HOADON]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[HOADON]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[HOADON](\r\n\t[MaHD] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Ngay] [datetime] NULL,\r\n\t[TongTien] [int] NULL,\r\n\t[MaKH] [int] NOT NULL,\r\n\t[TrangThai] [int] NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaHD] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[KHACHHANG]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='KHACHHANG' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[KHACHHANG](\r\n\t[MaKH] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Ten] [nvarchar](100) NOT NULL,\r\n\t[DienThoai] [varchar](20) NULL,\r\n\t[Email] [varchar](50) NULL,\r\n\t[MatKhau] [varchar](50) NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaKH] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='KHACHHANG' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[MATHANG]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[MATHANG]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[MATHANG](\r\n\t[MaSach] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Ten] [nvarchar](100) NOT NULL,\r\n\t[GiaGoc] [int] NULL,\r\n\t[GiaBan] [int] NULL,\r\n\t[SoLuong] [smallint] NULL,\r\n\t[MoTa] [nvarchar](1000) NULL,\r\n\t[HinhAnh] [varchar](255) NULL,\r\n\t[MaDM] [int] NOT NULL,\r\n\t[LuotXem] [int] NULL,\r\n\t[LuotMua] [int] NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaSach] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [dbo].[NHANVIEN]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='NHANVIEN' and @Schema='dbo']","object_type":"Table"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/14/2024 7:34:19 PM ******/\r\nSET ANSI_NULLS ON\r\n","GO\r\n","SET QUOTED_IDENTIFIER ON\r\n","GO\r\n","CREATE TABLE [dbo].[NHANVIEN](\r\n\t[MaNV] [int] IDENTITY(1,1) NOT NULL,\r\n\t[Ten] [nvarchar](100) NOT NULL,\r\n\t[MaCV] [int] NOT NULL,\r\n\t[DienThoai] [varchar](20) NULL,\r\n\t[Email] [varchar](50) NULL,\r\n\t[MatKhau] [varchar](50) NULL,\r\nPRIMARY KEY CLUSTERED \r\n(\r\n\t[MaNV] ASC\r\n)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]\r\n) ON [PRIMARY]\r\nGO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='NHANVIEN' and @Schema='dbo']","object_type":"Table"}},{"cell_type":"markdown","source":["# [DF__CHUCVU__HeSo__300424B4]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CHUCVU' and @Schema='dbo']/Column[@Name='HeSo']/Default[@Name='DF__CHUCVU__HeSo__300424B4']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[CHUCVU] ADD  DEFAULT ((1.0)) FOR [HeSo]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CHUCVU' and @Schema='dbo']/Column[@Name='HeSo']/Default[@Name='DF__CHUCVU__HeSo__300424B4']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__CTHOADON__DonGia__45F365D3]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']/Column[@Name='DonGia']/Default[@Name='DF__CTHOADON__DonGia__45F365D3']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[CTHOADON] ADD  DEFAULT ((0)) FOR [DonGia]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']/Column[@Name='DonGia']/Default[@Name='DF__CTHOADON__DonGia__45F365D3']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__CTHOADON__SoLuon__46E78A0C]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']/Column[@Name='SoLuong']/Default[@Name='DF__CTHOADON__SoLuon__46E78A0C']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[CTHOADON] ADD  DEFAULT ((1)) FOR [SoLuong]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']/Column[@Name='SoLuong']/Default[@Name='DF__CTHOADON__SoLuon__46E78A0C']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__DIACHI__PhuongXa__38996AB5]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/Column[@Name='PhuongXa']/Default[@Name='DF__DIACHI__PhuongXa__38996AB5']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[DIACHI] ADD  DEFAULT (N'Đông Xuyên') FOR [PhuongXa]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/Column[@Name='PhuongXa']/Default[@Name='DF__DIACHI__PhuongXa__38996AB5']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__DIACHI__QuanHuye__398D8EEE]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/Column[@Name='QuanHuyen']/Default[@Name='DF__DIACHI__QuanHuye__398D8EEE']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[DIACHI] ADD  DEFAULT (N'TP. Long Xuyên') FOR [QuanHuyen]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/Column[@Name='QuanHuyen']/Default[@Name='DF__DIACHI__QuanHuye__398D8EEE']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__DIACHI__TinhThan__3A81B327]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/Column[@Name='TinhThanh']/Default[@Name='DF__DIACHI__TinhThan__3A81B327']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[DIACHI] ADD  DEFAULT (N'An Giang') FOR [TinhThanh]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/Column[@Name='TinhThanh']/Default[@Name='DF__DIACHI__TinhThan__3A81B327']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__DIACHI__MacDinh__3B75D760]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/Column[@Name='MacDinh']/Default[@Name='DF__DIACHI__MacDinh__3B75D760']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[DIACHI] ADD  DEFAULT ((1)) FOR [MacDinh]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/Column[@Name='MacDinh']/Default[@Name='DF__DIACHI__MacDinh__3B75D760']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__HOADON__Ngay__3E52440B]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']/Column[@Name='Ngay']/Default[@Name='DF__HOADON__Ngay__3E52440B']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[HOADON] ADD  DEFAULT (getdate()) FOR [Ngay]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']/Column[@Name='Ngay']/Default[@Name='DF__HOADON__Ngay__3E52440B']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__HOADON__TongTien__3F466844]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']/Column[@Name='TongTien']/Default[@Name='DF__HOADON__TongTien__3F466844']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[HOADON] ADD  DEFAULT ((0)) FOR [TongTien]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']/Column[@Name='TongTien']/Default[@Name='DF__HOADON__TongTien__3F466844']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__HOADON__TrangTha__412EB0B6]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']/Column[@Name='TrangThai']/Default[@Name='DF__HOADON__TrangTha__412EB0B6']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[HOADON] ADD  DEFAULT ((0)) FOR [TrangThai]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']/Column[@Name='TrangThai']/Default[@Name='DF__HOADON__TrangTha__412EB0B6']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__MATHANG__GiaGoc__286302EC]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='GiaGoc']/Default[@Name='DF__MATHANG__GiaGoc__286302EC']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [GiaGoc]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='GiaGoc']/Default[@Name='DF__MATHANG__GiaGoc__286302EC']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__MATHANG__GiaBan__29572725]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='GiaBan']/Default[@Name='DF__MATHANG__GiaBan__29572725']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [GiaBan]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='GiaBan']/Default[@Name='DF__MATHANG__GiaBan__29572725']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__MATHANG__SoLuong__2A4B4B5E]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='SoLuong']/Default[@Name='DF__MATHANG__SoLuong__2A4B4B5E']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [SoLuong]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='SoLuong']/Default[@Name='DF__MATHANG__SoLuong__2A4B4B5E']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__MATHANG__LuotXem__2C3393D0]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='LuotXem']/Default[@Name='DF__MATHANG__LuotXem__2C3393D0']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [LuotXem]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='LuotXem']/Default[@Name='DF__MATHANG__LuotXem__2C3393D0']","object_type":"Default"}},{"cell_type":"markdown","source":["# [DF__MATHANG__LuotMua__2D27B809]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='LuotMua']/Default[@Name='DF__MATHANG__LuotMua__2D27B809']","object_type":"Default"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[MATHANG] ADD  DEFAULT ((0)) FOR [LuotMua]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/Column[@Name='LuotMua']/Default[@Name='DF__MATHANG__LuotMua__2D27B809']","object_type":"Default"}},{"cell_type":"markdown","source":["# [FK__CTHOADON__MaHD__440B1D61]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']/ForeignKey[@Name='FK__CTHOADON__MaHD__440B1D61']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[CTHOADON]  WITH CHECK ADD FOREIGN KEY([MaHD])\r\nREFERENCES [dbo].[HOADON] ([MaHD])\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']/ForeignKey[@Name='FK__CTHOADON__MaHD__440B1D61']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK__CTHOADON__MaSach__44FF419A]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']/ForeignKey[@Name='FK__CTHOADON__MaSach__44FF419A']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[CTHOADON]  WITH CHECK ADD FOREIGN KEY([MaSach])\r\nREFERENCES [dbo].[MATHANG] ([MaSach])\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='CTHOADON' and @Schema='dbo']/ForeignKey[@Name='FK__CTHOADON__MaSach__44FF419A']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK__DIACHI__MaKH__37A5467C]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/ForeignKey[@Name='FK__DIACHI__MaKH__37A5467C']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[DIACHI]  WITH CHECK ADD FOREIGN KEY([MaKH])\r\nREFERENCES [dbo].[KHACHHANG] ([MaKH])\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='DIACHI' and @Schema='dbo']/ForeignKey[@Name='FK__DIACHI__MaKH__37A5467C']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK__HOADON__MaKH__403A8C7D]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']/ForeignKey[@Name='FK__HOADON__MaKH__403A8C7D']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaKH])\r\nREFERENCES [dbo].[KHACHHANG] ([MaKH])\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='HOADON' and @Schema='dbo']/ForeignKey[@Name='FK__HOADON__MaKH__403A8C7D']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK__MATHANG__MaDM__2B3F6F97]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/ForeignKey[@Name='FK__MATHANG__MaDM__2B3F6F97']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD FOREIGN KEY([MaDM])\r\nREFERENCES [dbo].[DANHMUC] ([MaDM])\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='MATHANG' and @Schema='dbo']/ForeignKey[@Name='FK__MATHANG__MaDM__2B3F6F97']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [FK__NHANVIEN__MaCV__32E0915F]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='NHANVIEN' and @Schema='dbo']/ForeignKey[@Name='FK__NHANVIEN__MaCV__32E0915F']","object_type":"ForeignKey"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD FOREIGN KEY([MaCV])\r\nREFERENCES [dbo].[CHUCVU] ([MaCV])\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']/Table[@Name='NHANVIEN' and @Schema='dbo']/ForeignKey[@Name='FK__NHANVIEN__MaCV__32E0915F']","object_type":"ForeignKey"}},{"cell_type":"markdown","source":["# [webbansach]"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']","object_type":"Database"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["USE [master]\r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']","object_type":"Database"}},{"outputs":[],"execution_count":0,"cell_type":"code","source":["ALTER DATABASE [webbansach] SET  READ_WRITE \r\n","GO\r\n"],"metadata":{"urn":"Server[@Name='LAPTOP-70L3UOBH']/Database[@Name='webbansach']","object_type":"Database"}}]}