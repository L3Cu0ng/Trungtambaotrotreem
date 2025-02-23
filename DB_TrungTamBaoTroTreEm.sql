USE [TrungTamBaoTroTreMoCoi]
GO
/****** Object:  Table [dbo].[HOSONHANNUOI]    Script Date: 14/06/2024 6:55:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOSONHANNUOI](
	[idHoso] [char](6) NOT NULL,
	[ngayguihoso] [datetime] NOT NULL,
	[yeuCau] [nvarchar](250) NULL,
	[ChungNhanKetHon] [nvarchar](max) NULL,
	[GiayKhamSucKhoe] [nvarchar](max) NULL,
	[TinhTrangChoo] [char](1) NULL,
	[MucThuNhapHangThang] [float] NULL,
	[NgheNghiep] [nvarchar](30) NULL,
	[trangThai] [char](1) NULL,
	[idnhanvien] [char](6) NULL,
	[idTre] [char](6) NULL,
	[CCCD] [char](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOINHANNUOI]    Script Date: 14/06/2024 6:55:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOINHANNUOI](
	[CCCD] [char](12) NOT NULL,
	[hovaten] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[gioitinh] [char](1) NULL,
	[SDT] [char](10) NULL,
	[email] [varchar](30) NULL,
	[matkhau] [varchar](50) NULL,
	[ngaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 14/06/2024 6:55:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[idNhanvien] [char](6) NOT NULL,
	[hoVaten] [nvarchar](50) NULL,
	[diaChi] [nvarchar](50) NULL,
	[Email] [varchar](30) NULL,
	[SDT] [char](10) NULL,
	[gioiTinh] [char](1) NULL,
	[ngaySinh] [date] NULL,
	[matkhau] [varchar](15) NULL,
	[idVaitro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idNhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRE]    Script Date: 14/06/2024 6:55:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRE](
	[idTre] [char](6) NOT NULL,
	[hovaten] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [char](1) NULL,
	[ngayNhanNuoi] [date] NULL,
	[trangthai] [char](1) NULL,
	[ghichu] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VAITRO]    Script Date: 14/06/2024 6:55:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAITRO](
	[idVaitro] [int] NOT NULL,
	[tenVaitro] [nvarchar](20) NULL,
	[moTa] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVaitro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0001', CAST(N'2024-06-11T00:00:00.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084218256-giay-kham-suc-khoe.jpg', N'uploads\1718084218259-kethon.jpg', N'N', 30, N'Bác sĩ', N'1', N'NV0003', NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0002', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kỹ sư CNTT', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0003', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0004', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'293812340987')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0005', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0006', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kỹ sư CNTT', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0007', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0008', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0009', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kỹ sư CNTT', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0010', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'293812340987')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0011', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0012', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0013', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0014', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kỹ sư CNTT', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0015', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0016', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'293812340987')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0017', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0018', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kỹ sư CNTT', N'2', NULL, NULL, N'293812340987')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0019', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận nuooi 1 đứa bé 5 tuổi', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0020', CAST(N'2024-06-11T05:36:36.000' AS DateTime), N'Mong muốn nhận 1 bé gái, 7 đến 8 tuổi ngoan xin yêu, không có vấn đề gì về sức khỏe', N'uploads\1718084196438-kethon.jpg', N'uploads\1718084196445-giay-kham-suc-khoe.jpg', N'N', 30, N'Kinh doanh', N'2', NULL, NULL, N'012345678999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0021', CAST(N'2024-06-12T08:29:57.000' AS DateTime), N'Nhận nuôi 1 đức bé giá 10 tuổi, không quan trọng vấn đề sức khỏe', N'uploads\1718180997873-kethon.jpg', N'uploads\1718180997876-giay-kham-suc-khoe.jpg', N'u', 50, N'Thầy Giáo', N'2', N'NV0003', NULL, N'293812340999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0022', CAST(N'2024-06-12T08:33:41.000' AS DateTime), N'Thêm 1 đứa bé trai , trên 10 tuổi, không có vấn đề gì về sức khỏe', N'uploads\1718181221879-kethon.jpg', N'uploads\1718181221881-giay-kham-suc-khoe.jpg', N'u', 60, N'Nông dân', N'2', N'NV0003', NULL, N'293812340999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0023', CAST(N'2024-06-12T08:38:12.000' AS DateTime), N'Yêu cầu test', N'uploads\1718181492377-kethon.jpg', N'uploads\1718181492382-giay-kham-suc-khoe.jpg', N'u', 60, N'Công nhân', N'1', NULL, NULL, N'293812340999')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0024', CAST(N'2024-06-12T08:40:56.000' AS DateTime), N'Yêu cầu test 1', N'uploads\1718181656193-kethon.jpg', N'uploads\1718181656196-giay-kham-suc-khoe.jpg', N'u', 60, N'Thầy giáo', N'1', NULL, NULL, N'293812340987')
INSERT [dbo].[HOSONHANNUOI] ([idHoso], [ngayguihoso], [yeuCau], [ChungNhanKetHon], [GiayKhamSucKhoe], [TinhTrangChoo], [MucThuNhapHangThang], [NgheNghiep], [trangThai], [idnhanvien], [idTre], [CCCD]) VALUES (N'HS0025', CAST(N'2024-06-12T08:43:09.000' AS DateTime), N'Yêu cầu 1 đứa bé gái  từ 3-4 tuổi, không qua trọng vấn đề sức khỏe', N'uploads\1718181789656-kethon.jpg', N'uploads\1718181789664-giay-kham-suc-khoe.jpg', N'u', 45, N'Giảng viên', N'2', NULL, NULL, N'293812340987')
GO
INSERT [dbo].[NGUOINHANNUOI] ([CCCD], [hovaten], [diachi], [gioitinh], [SDT], [email], [matkhau], [ngaySinh]) VALUES (N'012345678999', N'Lê Quang Luận', N'Làng Vân Hòa, Triệu Hòa, Triệu Phong', N'm', N'0395481262', N'quangluan0212@gmail.com', N'123', CAST(N'2003-06-29' AS Date))
INSERT [dbo].[NGUOINHANNUOI] ([CCCD], [hovaten], [diachi], [gioitinh], [SDT], [email], [matkhau], [ngaySinh]) VALUES (N'293812340987', N'Lương Tuấn Bảo', N'Làng Vân Hòa, Triệu Hòa, Triệu Phong, Quang Trị', N'm', N'0111111111', N'tuanbao0212@gmail.com', N'123', CAST(N'2004-03-03' AS Date))
INSERT [dbo].[NGUOINHANNUOI] ([CCCD], [hovaten], [diachi], [gioitinh], [SDT], [email], [matkhau], [ngaySinh]) VALUES (N'293812340999', N'Đỗ Minh Triết', N'Làng Vân Hòa, Triệu Hòa, Triệu Phong, Quang Trị', N'm', N'0222222222', N'minhtriet@gmail.com', N'123', CAST(N'2004-03-03' AS Date))
GO
INSERT [dbo].[NHANVIEN] ([idNhanvien], [hoVaten], [diaChi], [Email], [SDT], [gioiTinh], [ngaySinh], [matkhau], [idVaitro]) VALUES (N'NV0001', N'Nguyễn Văn A', N'Duy Hòa,  Triệu Hòa , Triệu Phong, Quảng Trị', N'a@example.com', N'0987654321', N'M', CAST(N'1990-05-15' AS Date), N'password123', 1)
INSERT [dbo].[NHANVIEN] ([idNhanvien], [hoVaten], [diaChi], [Email], [SDT], [gioiTinh], [ngaySinh], [matkhau], [idVaitro]) VALUES (N'NV0002', N'Nguyễn Bảo Trợ', N'Duy Hòa,  Triệu Hòa , Triệu Phong, Quảng Trị', N'quangluan0212@gmail.com', N'0123456789', N'N', CAST(N'1972-04-02' AS Date), N'123', 2)
INSERT [dbo].[NHANVIEN] ([idNhanvien], [hoVaten], [diaChi], [Email], [SDT], [gioiTinh], [ngaySinh], [matkhau], [idVaitro]) VALUES (N'NV0003', N'Lê Kiểm Định', N'Duy Hòa,  Triệu Hòa , Triệu Phong, Quảng Trị', N'quangluan@gmail.com', N'0333333333', N'N', CAST(N'2003-12-02' AS Date), N'123', 3)
GO
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE002', N'Nguyễn Bảo Trợ', CAST(N'2010-02-20' AS Date), N'F', CAST(N'2023-07-05' AS Date), N'1', N'Đẹp trai vô cùng tận')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE003', N'Lê Quang Luân', CAST(N'2014-04-30' AS Date), N'M', CAST(N'2010-10-16' AS Date), N'1', N'Mất 2 tay khi mới nhận nuôi')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE004', N'Nguyễn Bảo Cường', CAST(N'2006-06-06' AS Date), N'F', CAST(N'2020-03-26' AS Date), N'1', N'Ngày nhận nuôi: Bé mặc chiếc áo sọc 3 lỗ, tay đeo đồng hồ casio')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE005', N'Lê Kiểm Định', NULL, N'M', CAST(N'2020-05-04' AS Date), N'3', N'Mất 2 tay khi mới nhận nuôi')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE006', N'Lê Thế Phú', NULL, N'M', CAST(N'2020-06-04' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE007', N'Lê Phước Chớ', NULL, N'M', CAST(N'2019-07-04' AS Date), N'1', N'Mất 2 tay khi mới nhận nuôi')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE008', N'Lê Thanh Tuấn', NULL, N'F', CAST(N'2020-04-04' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE009', N'Lê Đại Minh Phú Quý', NULL, N'M', CAST(N'2018-10-04' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE010', N'Lê Ngọc Hào', NULL, N'M', CAST(N'2020-12-04' AS Date), N'1', N'Mất 2 tay khi mới nhận nuôi')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE011', N'Lê Kim Nam', NULL, N'M', CAST(N'2019-04-30' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE012', N'Nguyễn Kim Cang', NULL, N'M', CAST(N'2020-09-04' AS Date), N'1', N'Mất 2 tay khi mới nhận nuôi')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE013', N'Nguyễn Kim Nam', NULL, N'M', CAST(N'2023-09-04' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE014', N'Nguyễn Thị Mai Phương', NULL, N'M', CAST(N'2020-09-04' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE015', N'Lê Thị Kim Chi', NULL, N'M', CAST(N'2020-09-11' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE016', N'Lê Quang Hàu', NULL, N'M', CAST(N'2021-09-04' AS Date), N'1', N'Mất 2 tay khi mới nhận nuôi')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE017', N'Nguyễn Thị Phương', NULL, N'M', CAST(N'2020-09-22' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE018', N'Nguyễn Minh Phúc', NULL, N'M', CAST(N'2022-01-04' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE019', N'Trần Minh Duệ', NULL, N'M', CAST(N'2020-09-04' AS Date), N'1', N'Mất 2 tay khi mới nhận nuôi')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE020', N'Trần Văn Lĩnh', NULL, N'M', CAST(N'2019-09-30' AS Date), N'1', N'Lúc nhận nuôi: Tình trạng sức khỏe yếu')
INSERT [dbo].[TRE] ([idTre], [hovaten], [ngaysinh], [gioitinh], [ngayNhanNuoi], [trangthai], [ghichu]) VALUES (N'TRE021', N'Trẻ Demo', NULL, N'M', CAST(N'2020-10-17' AS Date), N'0', N'Demo final')
GO
INSERT [dbo].[VAITRO] ([idVaitro], [tenVaitro], [moTa]) VALUES (1, N'Nv quản lý', N'Quản lý ')
INSERT [dbo].[VAITRO] ([idVaitro], [tenVaitro], [moTa]) VALUES (2, N'Nv phòng bảo trợ', N'Bảo trợ trẻ em')
INSERT [dbo].[VAITRO] ([idVaitro], [tenVaitro], [moTa]) VALUES (3, N'Nv kiểm định', N'Kiểm định hồ sơ')
GO
ALTER TABLE [dbo].[HOSONHANNUOI]  WITH CHECK ADD FOREIGN KEY([idnhanvien])
REFERENCES [dbo].[NHANVIEN] ([idNhanvien])
GO
ALTER TABLE [dbo].[HOSONHANNUOI]  WITH CHECK ADD FOREIGN KEY([idTre])
REFERENCES [dbo].[TRE] ([idTre])
GO
ALTER TABLE [dbo].[HOSONHANNUOI]  WITH CHECK ADD FOREIGN KEY([CCCD])
REFERENCES [dbo].[NGUOINHANNUOI] ([CCCD])
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD FOREIGN KEY([idVaitro])
REFERENCES [dbo].[VAITRO] ([idVaitro])
GO
