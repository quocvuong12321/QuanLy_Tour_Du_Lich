USE [master]
GO
/****** Object:  Database [QuanLyTour]    Script Date: 09/08/2024 10:04:36 ******/
CREATE DATABASE [QuanLyTour]
GO
ALTER DATABASE [QuanLyTour] SET COMPATIBILITY_LEVEL = 110
GO

USE [QuanLyTour]
GO
/****** Object:  Table [dbo].[ChiTiet_DatTour]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DatTour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoNguoiDat] [int] NULL,
	[DiemXuatPhat] [nvarchar](50) NULL,
	[Tour_id] [int] NULL,
	[DatTour_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NULL,
	[Tour_id] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Vote] [int] NULL,
 CONSTRAINT [PK__DanhGia__3213E83F6A428303] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatTour]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GhiChu] [text] NULL,
	[id_TrangThai] [int] NULL,
	[User_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayPhanHoi] [datetime] NULL,
	[HinhAnh] [nvarchar](max) NULL,
 CONSTRAINT [PK__Feedback__3213E83F356ECEF9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HuongDanVien]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuongDanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image_Tour]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image_Tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Tour_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Role_id] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Password] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai_Tour]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_Tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong_HuongDanVien]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong_HuongDanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Tour_id] [int] NULL,
	[HuongDanVien_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DatTour_id] [int] NULL,
	[NgayThanhToan] [datetime] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tour]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Gia] [int] NULL,
	[TieuDe] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[LichTrinh] [nvarchar](max) NULL,
	[DiemKhoiHanh] [nvarchar](100) NULL,
	[DiemDen] [nvarchar](100) NULL,
	[NgayKhoiHanh] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[SoLuongCon] [int] NULL,
	[Loai_Tour_id] [int] NULL,
 CONSTRAINT [PK__Tour__3213E83F40C37CA6] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 09/08/2024 10:04:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[id_TrangThai] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThai] PRIMARY KEY CLUSTERED 
(
	[id_TrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChiTiet_DatTour] ON 

INSERT [dbo].[ChiTiet_DatTour] ([id], [SoNguoiDat], [DiemXuatPhat], [Tour_id], [DatTour_id]) VALUES (1, 10, N'Thành phố Hồ Chí Minh', 19, 1)
INSERT [dbo].[ChiTiet_DatTour] ([id], [SoNguoiDat], [DiemXuatPhat], [Tour_id], [DatTour_id]) VALUES (3, 1, N'Hà Nội', 24, 3)
INSERT [dbo].[ChiTiet_DatTour] ([id], [SoNguoiDat], [DiemXuatPhat], [Tour_id], [DatTour_id]) VALUES (4, 3, N'Thành phố Hồ Chí Minh', 26, 4)
SET IDENTITY_INSERT [dbo].[ChiTiet_DatTour] OFF
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([id], [User_id], [Tour_id], [NoiDung], [Vote]) VALUES (1, 2, 19, N'Tour r?t t?t', 3)
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
SET IDENTITY_INSERT [dbo].[DatTour] ON 

INSERT [dbo].[DatTour] ([id], [GhiChu], [id_TrangThai], [User_id]) VALUES (1, N'Ghi chú', 5, 2)
INSERT [dbo].[DatTour] ([id], [GhiChu], [id_TrangThai], [User_id]) VALUES (2, NULL, 3, 2)
INSERT [dbo].[DatTour] ([id], [GhiChu], [id_TrangThai], [User_id]) VALUES (3, NULL, 5, 2)
INSERT [dbo].[DatTour] ([id], [GhiChu], [id_TrangThai], [User_id]) VALUES (4, N'  ', 1, 2)
SET IDENTITY_INSERT [dbo].[DatTour] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([id], [TieuDe], [NoiDung], [NgayPhanHoi], [HinhAnh]) VALUES (1, N'Ninh Thuận - Bình Thuận', N'Rất hài lòng với dịch vụ và chất lượng tour. Sẽ giới thiệu cho bạn bè..', CAST(0x0000B1C200000000 AS DateTime), N'fb01.jpg')
INSERT [dbo].[Feedback] ([id], [TieuDe], [NoiDung], [NgayPhanHoi], [HinhAnh]) VALUES (2, N'Thái Lan', N'Chuyến đi Thái Lan thật tuyệt vời! Các điểm tham quan rất hấp dẫn và dịch vụ rất tốt. Tuy nhiên, thời gian tham quan hơi ngắn.', CAST(0x0000B1B300000000 AS DateTime), N'fb02.jpg')
INSERT [dbo].[Feedback] ([id], [TieuDe], [NoiDung], [NgayPhanHoi], [HinhAnh]) VALUES (3, N'Sapa', N'Thời tiết đẹp, hướng dẫn viên chuyên nghiệp. Nhưng cần cải thiện chỗ nghỉ.', CAST(0x0000B1BF00000000 AS DateTime), N'fb03.jpg')
INSERT [dbo].[Feedback] ([id], [TieuDe], [NoiDung], [NgayPhanHoi], [HinhAnh]) VALUES (4, N'Phú Quốc', N'Phú Quốc thật đẹp, nước biển trong xanh và nhiều hoạt động thú vị. ', CAST(0x0000B18C00000000 AS DateTime), N'fb04.jpg')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[HuongDanVien] ON 

INSERT [dbo].[HuongDanVien] ([id], [Fullname], [Email], [DiaChi], [DienThoai], [GioiTinh]) VALUES (4, N'A', N'axxx@gmail.com', N'1180 Quang Trung, Phường 8, Gò Vấp, Tp. Hồ Chí Minh ', N'0123456789', N'Nữ')
INSERT [dbo].[HuongDanVien] ([id], [Fullname], [Email], [DiaChi], [DienThoai], [GioiTinh]) VALUES (5, N'Nguyễn Thị Liên', N'lien@gmail.com', N'140 Lê Trọng Tấn, Tân Phú, Hồ Chí Minh', N'0923713234', N'Nữ')
INSERT [dbo].[HuongDanVien] ([id], [Fullname], [Email], [DiaChi], [DienThoai], [GioiTinh]) VALUES (6, N'Trần Văn Trung', N'trung@gmail.com', N'23 Nguyễn Hữu Tiến, Tân Phú, Hồ Chí Minh', N'0876098123', N'Nam')
INSERT [dbo].[HuongDanVien] ([id], [Fullname], [Email], [DiaChi], [DienThoai], [GioiTinh]) VALUES (7, N'Nguyễn Văn Hiếu', N'hieu@gmail.com', N'89 Trần Thị Trọng, Tân Bình, Hồ Chí Minh', N'0129876222', N'Nam')
INSERT [dbo].[HuongDanVien] ([id], [Fullname], [Email], [DiaChi], [DienThoai], [GioiTinh]) VALUES (8, N'Hồ Thị Mai', N'mai@gmail.com', N'70 Phạm Văn Hớn, Quận 12, Hồ Chí Minh', N'0922899011', N'Nữ')
INSERT [dbo].[HuongDanVien] ([id], [Fullname], [Email], [DiaChi], [DienThoai], [GioiTinh]) VALUES (9, N'Nguyễn Xuân', N'xuan@gmail.com', N'49 Đướng Số 9, Bình Tân, Hồ Chí Minh', N'0983222345', N'Nữ')
INSERT [dbo].[HuongDanVien] ([id], [Fullname], [Email], [DiaChi], [DienThoai], [GioiTinh]) VALUES (10, N'Nguyễn Hữu Phong', N'phong@gmail.com', N'456 Tân Kỳ Tân Quý, Bình Tân, Hồ Chí Minh', N'0765989111', N'Nam')
INSERT [dbo].[HuongDanVien] ([id], [Fullname], [Email], [DiaChi], [DienThoai], [GioiTinh]) VALUES (11, N'Lê Hữu Nghị', N'nghi@gmail.com', N'88 Trần Thị Trọng, Tân Bình, Hồ Chí Minh', N'0876098122', N'Nam')
SET IDENTITY_INSERT [dbo].[HuongDanVien] OFF
SET IDENTITY_INSERT [dbo].[Image_Tour] ON 

INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (18, N'PhuQuoc01.jpg', 19)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (19, N'PhuQuoc02.jpg', 19)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (20, N'PhuQuoc03.jpg', 19)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (21, N'PhuQuoc04.jpg', 19)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (22, N'PhuQuoc05.jpg', 19)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (23, N'PhuQuoc06.jpg', 19)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (24, N'PhuQuoc07.jpg', 19)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (25, N'PhuQuoc08.jpg', 19)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (26, N'ThaiLan01.jpg', 20)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (27, N'ThaiLan02.jpg', 20)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (28, N'ThaiLan03.jpg', 20)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (29, N'ThaiLan04.jpg', 20)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (30, N'ThaiLan05.jpg', 20)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (31, N'ThaiLan06.jpg', 20)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (32, N'Anh01.jpg', 21)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (33, N'Anh02.jpg', 21)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (34, N'Anh03.jpg', 21)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (35, N'Anh04.jpg', 21)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (36, N'Anh05.jpg', 21)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (37, N'Anh06.jpg', 21)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (38, N'Anh07.jpg', 21)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (39, N'HL01.jpg', 22)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (40, N'HL02.jpg', 22)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (41, N'HL03.jpg', 22)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (42, N'HL04.jpg', 22)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (43, N'HL05.jpg', 22)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (44, N'HL06.jpg', 22)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (45, N'DL01.jpg', 23)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (46, N'DL02.jpg', 23)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (47, N'DL03.jpg', 23)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (48, N'DL04.jpg', 23)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (49, N'DL05.jpg', 23)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (50, N'TB01.jpg', 24)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (51, N'TB02.jpg', 24)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (52, N'TB03.jpg', 24)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (53, N'M01.jpg', 25)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (54, N'M02.jpg', 25)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (55, N'M03.jpg', 25)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (56, N'M04.jpg', 25)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (57, N'M05.jpg', 25)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (58, N'M06.jpg', 25)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (59, N'CD01.jpg', 26)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (60, N'CD02.jpg', 26)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (61, N'CD03.jpg', 26)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (62, N'CD04.jpg', 26)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (63, N'CD05.jpg', 26)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (64, N'CD06.jpg', 26)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (65, N'TN01.jpg', 28)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (66, N'TN02.jpg', 28)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (67, N'TN03.jpg', 28)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (68, N'TN04.jpg', 28)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (69, N'HQ01.jpg', 29)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (70, N'HQ02.jpg', 29)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (71, N'HQ03.jpg', 29)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (72, N'HQ04.jpg', 29)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (73, N'HQ05.jpg', 29)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (74, N'HQ06.jpg', 29)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (75, N'HQ07.jpg', 29)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (76, N'TQ01.jpg', 30)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (77, N'TQ02.jpg', 30)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (78, N'TQ03.jpg', 30)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (79, N'TQ04.jpg', 30)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (80, N'TQ05.jpg', 30)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (81, N'TQ06.jpg', 30)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (82, N'DN01.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (83, N'DN02.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (84, N'DN03.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (85, N'DN04.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (86, N'DN05.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (87, N'DN06.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (88, N'DN07.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (89, N'DN08.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (90, N'DN09.jpg', 31)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (91, N'NT01.jpg', 32)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (92, N'NT02.jpg', 32)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (93, N'NT03.jpg', 32)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (94, N'NT04.jpg', 32)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (95, N'TS01.jpg', 33)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (96, N'TS02.jpg', 33)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (97, N'TS03.jpg', 33)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (98, N'TS04.jpg', 33)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (99, N'TS05.jpg', 33)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (100, N'HN01.jpg', 34)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (101, N'HN02.jpg', 34)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (102, N'HN03.jpg', 34)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (103, N'QN01.jpg', 35)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (104, N'NhaTrang01.jpg', 36)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (105, N'CT01.jpg', 38)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (106, N'CT02.jpg', 38)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (107, N'CT03.jpg', 38)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (108, N'BMT01.jpg', 40)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (109, N'BMT02.jpg', 40)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (110, N'U01.jpg', 39)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (111, N'U02.jpg', 39)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (112, N'U03.jpg', 39)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (113, N'TH01.jpg', 41)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (114, N'TH02.jpg', 41)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (115, N'TH03.jpg', 41)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (116, N'TH04.jpg', 41)
GO
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (117, N'DL06.jpg', 42)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (118, N'DL07.jpg', 42)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (119, N'D01.jpg', 43)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (120, N'D02.jpg', 43)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (121, N'D03.jpg', 43)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (122, N'NT_DL1.jpg', 37)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (123, N'NT_DL2.jpg', 37)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (124, N'NT_DL3.jpg', 37)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (125, N'NT_DL4.jpg', 37)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (126, N'NT_DL5.jpg', 37)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (127, N'NT_DL6.jpg', 37)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (128, N'NT_DL7.jpg', 37)
INSERT [dbo].[Image_Tour] ([id], [Name], [Tour_id]) VALUES (129, N'NT_DL8.jpg', 37)
SET IDENTITY_INSERT [dbo].[Image_Tour] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([id], [Role_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [GioiTinh]) VALUES (1, 1, N'Nguyễn Văn A', N'management@gmail.com', N'0123456789', N'1180 Quang Trung, Phường 8, Gò Vấp, Tp. Hồ Chí Minh ', N'1', N'nam')
INSERT [dbo].[KhachHang] ([id], [Role_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [GioiTinh]) VALUES (2, 2, N'Nguyễn Thị B', N'abc@gmail.com', N'0987654321', N'140 Đinh Bộ Lĩnh, Phường 26, Bình Thạnh, Tp.Hồ Chí Minh', N'123', N'nữ')
INSERT [dbo].[KhachHang] ([id], [Role_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [GioiTinh]) VALUES (3, 2, N'Nguyễn C', N'c@gmail.com', N'123454321', N'140 Đinh Bộ Lĩnh, Phường 26, Bình Thạnh, Tp.Hồ Chí Minh', N'2', N'nữ')
INSERT [dbo].[KhachHang] ([id], [Role_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [GioiTinh]) VALUES (4, 2, N'Nguyễn Thị Hòa', N'hoa@gmail.com', N'0123890777', N'654 Lê Thị Riêng, Thời An, Quận 12, Hồ Chí Minh', N'111', N'Nữ')
INSERT [dbo].[KhachHang] ([id], [Role_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [GioiTinh]) VALUES (5, 2, N'Nguyễn Văn Đậu', N'dau@gmail.com', N'0678111657', N'200 Giải Phóng, Đồng Tâm, Hai Bà Trưng, Hà Nội', N'333', N'Nam')
INSERT [dbo].[KhachHang] ([id], [Role_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [GioiTinh]) VALUES (6, 2, N'Trần Văn Kiên', N'kien@gmail.com', N'0456123999', N'111 Yên Hoa, Yên Phụ, Tây Hồ, Hà Nội', N'567', N'Nam')
INSERT [dbo].[KhachHang] ([id], [Role_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [GioiTinh]) VALUES (7, 2, N'Trần Thị Mỹ Lệ', N'le@gmail.com', N'0876098122', N'25 Nguyễn Hữu Tiến, Tân Phú, Hồ Chí Minh', N'222', N'Nữ')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[Loai_Tour] ON 

INSERT [dbo].[Loai_Tour] ([id], [Name]) VALUES (1, N'Du lịch trong nước')
INSERT [dbo].[Loai_Tour] ([id], [Name]) VALUES (2, N'Du lịch nước ngoài')
SET IDENTITY_INSERT [dbo].[Loai_Tour] OFF
SET IDENTITY_INSERT [dbo].[PhanCong_HuongDanVien] ON 

INSERT [dbo].[PhanCong_HuongDanVien] ([id], [Tour_id], [HuongDanVien_id]) VALUES (3, 20, 9)
INSERT [dbo].[PhanCong_HuongDanVien] ([id], [Tour_id], [HuongDanVien_id]) VALUES (5, 22, 4)
INSERT [dbo].[PhanCong_HuongDanVien] ([id], [Tour_id], [HuongDanVien_id]) VALUES (7, 24, 6)
INSERT [dbo].[PhanCong_HuongDanVien] ([id], [Tour_id], [HuongDanVien_id]) VALUES (8, 23, 11)
INSERT [dbo].[PhanCong_HuongDanVien] ([id], [Tour_id], [HuongDanVien_id]) VALUES (10, 32, 5)
SET IDENTITY_INSERT [dbo].[PhanCong_HuongDanVien] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [Name]) VALUES (1, N'Quản lý')
INSERT [dbo].[Role] ([id], [Name]) VALUES (2, N'Khách hàng')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([id], [DatTour_id], [NgayThanhToan], [TongTien]) VALUES (1, 2, CAST(0x0000B1C6017D62AA AS DateTime), 173800000)
INSERT [dbo].[ThanhToan] ([id], [DatTour_id], [NgayThanhToan], [TongTien]) VALUES (2, 3, CAST(0x0000B1C601801DA0 AS DateTime), 8799000)
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (19, N'Phú Quốc 3n2đ', 3990000, N'Du lịch Phú Quốc mùa Thu - Grand World - Vinwonders - Safari từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td>
			<p><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><span style="color:#555555"><strong>Phú Quốc - Grand World -&nbsp; Vinwonders - Safari - Trải Nghiệm Cáp Treo Hòn Thơm&nbsp;</strong></span></span></span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>3 ngày 2 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><a href="https://dulichviet.com.vn/lien-he-tour?id=15817" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear; padding:5px; line-height:18px"><span style="color:#555555"><strong>06,13,20,27/10; 03,10,17,24/11; 01,08,15,22/12/2024</strong></span></a></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Di chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Xe du lịch đời mới &amp; Máy bay khứ hồi</strong></span></span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><strong><a href="https://dulichviet.com.vn/du-lich-phu-quoc-mua-thu-grand-world-vinwonders-safari-tu-sai-gon-2024" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><span style="color:#3498db">Du lịch Phú Quốc mùa Thu - Grand World - Vinwonders - Safari từ Sài Gòn 2024</span></a><span style="color:#3498db">.&nbsp;</span></strong>Du lịch mùa Thu Phú Quốc là lựa chọn tuyệt vời dành cho bạn bởi đây là khoảng thời gian lý tưởng nhất trong năm để có được những trải nghiệm tuyệt vời và thú vị ở hòn đảo được mệnh danh&nbsp;<strong><a href="https://dulichviet.com.vn/tin-tuc/di-du-lich-phu-quoc-mua-thu-va-nhung-trai-nghiem-khong-nen-bo-lo" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">“Đảo Ngọc”</a></strong>&nbsp;của đất nước. Dù mùa Thu Phú Quốc có thời tiết rất đẹp nhưng bạn cần chọn đúng thời điểm để chuyến hành trình của mình trở nên hoàn hảo nhất. Du Lịch Việt gợi ý bạn nên du lịch mùa Thu trong nước đến Phú Quốc bắt đầu từ tháng 10 vì đây là lúc mà những cơn mưa đã giảm hẳn. Bầu trời quang đãng sau những cơn mưa sẽ khiến cho cảnh sắc Phú Quốc trở nên tươi sáng và rực rỡ hơn. Mùa du lịch Phú Quốc cũng bắt đầu từ tháng 10 và kéo dài cho đến tháng 5 năm sau.</em></span></span></span></span></span></p>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 23/05/24)</p>

<p>NGÀY 1 |&nbsp;TP.HCM – PHÚ QUỐC (Ăn trưa, chiều)</p>

<p><strong>Sáng:</strong>&nbsp; Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng.</p>

<ul>
	<li>Đại diện&nbsp;<strong>công ty Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý khách làm thủ tục đón chuyến bay đi<strong>&nbsp;Phú Quốc.&nbsp;</strong></li>
</ul>

<p><strong>Trưa:</strong>&nbsp; Đến&nbsp;<strong>sân bay Phú Quốc</strong>, Hướng dẫn viên đón Quý khách dùng cơm trưa.<br />
<strong>Chiều:</strong>&nbsp;Đoàn Tham quan&nbsp;<strong>Dinh Cậu</strong>.</p>

<ul>
	<li>Tham quan các làng nghề truyền thống nổi tiếng trên đảo:</li>
	<li><strong>Hồ tiêu Phú Quốc</strong>: tìm hiểu về cách trồng tiêu tại vườn. Tiêu Phú Quốc nổi tiếng với hạt to, đen và cay thơm. Du khách có thể mua tiêu về làm quà tại nhà vườn.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/tham-quan-vuon-ho-tieu-phu-quoc-du-lich-viet.jpg" /><br />
<em><a href="https://dulichviet.com.vn/du-lich-phu-quoc">Du lịch Phú Quốc mùa Thu</a>&nbsp;tham quan Hồ tiêu Phú Quốc</em><br />
&nbsp;</p>

<ul>
	<li><strong>Rượu sim</strong>: loại rượu vang làm từ trái sim rừng chín.Gặp gỡ và trò chuyện với người đầu tiên chế biến ra rượu sim sơn tại cơ sở sản xuất rượu sim Bảy Gáo.</li>
	<li><strong>Nhà thùng nước mắm</strong>: Tìm hiểu cách ủ và chế biến nước mắm cá cơm rất nổi tiếng trong và ngoài nước theo cách làm truyền thống của người dân Phú Quốc với hàm lượng dinh dưỡng rất cao.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/tham-quan-nha-thung-nuoc-mam-phu-quoc-du-lich-viet.jpg" /><br />
<em>&nbsp;<a href="https://dulichviet.com.vn/du-lich-phu-quoc">Du lịch Phú Quốc Thu&nbsp;2024</a>&nbsp;tham quan Nhà thùng nước mắm</em><br />
&nbsp;</p>

<ul>
	<li>Xe đưa đoàn Khám phá<strong>&nbsp;</strong>thành phố không ngủ<strong>&nbsp;Grand World Phú Quốc –&nbsp;</strong>checkin dòng sông<strong>&nbsp;Venice</strong></li>
	<li>Khám Phá&nbsp;<strong>Phú Quốc UnitedCenter - Grandword&nbsp;</strong>,Trung tâm mới sầm uất và đa tiện tích của Phú Quốc với hệ sinh thái dịch vụ trọn vẹn từ dân sinh đến giải trí, nay được hoàn thiện ngoạn mục bằng sự ra mắt của Grand World, Thiên đường giải trí - mua sắm - lễ hội độc đáo và đa dạng bậc nhất Đông Nam Á với chuỗi trải nghiệm xuyên suốt 24h.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/trung-tam-grand-word-du-lich-viet.jpg" /><br />
<em>&nbsp;<a href="https://dulichviet.com.vn/du-lich-phu-quoc">Tour Phú Quốc mùa Thu</a>&nbsp;tham quan Phú Quốc UnitedCenter - Grandword</em><br />
&nbsp;</p>

<p><strong>Quý Khách được Checkin sống ảo Miễn phí tại đây .&nbsp;</strong><br />
<strong>SIÊU QUẦN THỂ NGHỈ DƯỠNG - KHÁM PHÁ - MUA SẮM - GIẢI TRÍ KHÔNG NGỦ HÀNG ĐẦU KHU VỰC - PHÚ QUỐC UNITED CENTER</strong><br />
<strong>(Chi phí tự túc, không bao gồm: vé tham quan bảo tàng gấu Teddy, dạo thuyền sông Venice, hoặc coi show)&nbsp;</strong><br />
<strong>Tối:</strong>&nbsp;&nbsp;&nbsp; Dùng cơm tối.</p>

<ul>
	<li>Nghỉ đêm tại Phú Quốc.</li>
</ul>

<p>&nbsp;</p>

<p>NGÀY 2 |&nbsp;PHÚ QUỐC – BÃI SAO – HÒN THƠM – KISS BRIDGE (Ăn sáng, trưa, tối)</p>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;&nbsp;</strong>Dùng bữa sáng.</p>

<ul>
	<li>Xe đưa đoàn tiến về phía Nam, tham quan&nbsp;<strong>Ngọc trai cao cấp Phú Quốc</strong>: quý khách được trực tiếp tham quan quy trình nuôi trai lấy ngọc tại các cơ sở nuôi cấy ngọc trai chuyên nghiệp tại Phú Quốc.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/trung-tam-ngoc-trai-phu-quoc-du-lich-viet.jpg" /><br />
<em><a href="https://dulichviet.com.vn/du-lich-phu-quoc">Tour Phú Quốc Thu&nbsp;2024</a>&nbsp;Tham quan trung tâm Ngọc trai Cao Cấp Phú Quốc</em><br />
&nbsp;</p>

<ul>
	<li>Viếng thăm<strong>&nbsp;Chùa Hộ Quốc</strong>&nbsp;(hay Thiền Viện Trúc Lâm Hộ Quốc), nằm trên sườn núi hướng ra biển ở phía cuối của một con đường uốn khúc qua các triền núi của đảo Phú Quốc, Thiền Viện Trúc Lâm Hộ Quốc có thể được xem là một trong những ngôi chùa có địa thế đẹp nhất Việt Nam.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/vieng-tham-chua-ho-quoc-du-lich-viet.jpg" /><br />
<em>&nbsp;<a href="https://dulichviet.com.vn/du-lich-phu-quoc">Tour du lịch Phú Quốc Thu&nbsp;2024</a>.&nbsp;Viếng thăm Chùa Hộ Quốc</em><br />
&nbsp;</p>

<ul>
	<li>Đoàn dừng chân tại<strong>&nbsp;Bãi Sao</strong>, một trong những bãi biển đẹp nhất Phú Quốc với bãi cát dài thoang thoảng, trắng mịn. Đoàn tự do chụp hình lưu niệm.</li>
</ul>

<p><strong>Trưa:</strong>&nbsp; Dùng cơm trưa.</p>

<ul>
	<li>Quý khách đến ga&nbsp;<strong>An Thới</strong>&nbsp;– Nhà ga đi&nbsp;<strong>Cáp treo Hòn Thơm</strong>. Quý khách trải nghiệm với cáp treo vượt biển dài nhất thế giớ với tổng chiều dài vượt biển 7.899,9m - cáp treo dài nhất thế giới được tổ chức Guinness chứng nhận.&nbsp;<em>(chi phí cáp treo và các dịch vụ vui chơi giải trí tại Hòn Thơm quý khách vui lòng tự túc).</em></li>
</ul>

<p>&nbsp;</p>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/di-cap-treo-hon-thom-du-lich-viet.jpg" /></em><br />
<em>&nbsp;<a href="https://dulichviet.com.vn/du-lich-phu-quoc">tour phú quốc giá tốt</a>&nbsp;trải nghiệm Cáp treo Hòn Thơm</em><br />
&nbsp;</p>

<ul>
	<li>Khám phá đảo Hòn Thơm với vẻ đẹp hoang sơ, trong lành; hòa mình vào làn nước biển xanh biếc tại một trong những hòn đảo đẹp nhất Việt Nam; hào hứng với hàng loạt trò chơi biển: dù kéo, lái cano, chèo thuyền Kayak,...; không thể bỏ lỡ trải nghiệm thưởng thức hải sản tươi ngon, đặc sản Phú Quốc tại các nhà chòi bên bờ biển thơ mộng…</li>
	<li><strong>Check-in Cầu Hôn Kiss Bridge</strong>&nbsp;tại thị trấn Hoàng hôn. Đây là điểm check in mới được thiết kế với nguồn cảm hứng từ chuyện tình Ngưu Lang Chức Nữ kết hợp văn hóa Việt Nam và Italia ngay tại đảo Ngọc Phú Quốc.&nbsp;<em>(Chi phí tự túc)</em></li>
</ul>

<p>&nbsp;</p>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/cau-hon-Kiss-Bridge-du-lich-viet(1).jpg" /></em><br />
<em><a href="https://dulichviet.com.vn/du-lich-phu-quoc">du lich Thu&nbsp;phu quoc gia re</a>&nbsp;Check-in Cầu Hôn Kiss Bridge</em><br />
&nbsp;</p>

<p><strong>Tối:</strong>&nbsp;&nbsp;&nbsp; Dùng cơm tối.</p>

<ul>
	<li>Nghỉ đêm tại Phú Quốc.</li>
</ul>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;PHÚ QUỐC – TP.HCM (Ăn sáng) (Ăn trưa tự túc)</p>

<p>&nbsp;</p>

<p><strong>Sáng: &nbsp;</strong>Dùng bữa sáng.&nbsp;&nbsp;<br />
Quý khách có thể tự do tắm biển, nghỉ ngơi tại khách sạn, tự do đi chợ mua sắm đặc sản về làm quà cho người thân: (ghẹ, hải mã sống ngâm rượu, hải mã chiên giòn, …) hoặc Quý khách có thể chọn một trong các điểm tham quan tham khảo như sau:&nbsp;<br />
<strong>*<u>Lựa chọn 1</u></strong>: Khám phá&nbsp;<strong>CÔNG VIÊN CHỦ ĐỀ VINWONDERS PHÚ QUỐC&nbsp;</strong><br />
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Chi phí tự túc; không bao gồm: phương tiện vận chuyển, vé tham quan Vinwonders + 01 bữa ăn trưa)</strong><br />
<strong>VinWonders Phú Quốc&nbsp;</strong>– Công viên với 06 chủ đề khác nhau, được kết nối bằng câu chuyện chủ đề xuyên suốt:&nbsp;<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/cong-vien-VinWonders--phu-quoc-du-lich-viet.jpg" /><br />
<em>VinWonders Phú Quốc</em><br />
&nbsp;</p>

<p>-&nbsp;<strong>Khu lâu đài trung tâm – Châu Âu trung cổ</strong>&nbsp;<br />
-&nbsp;<strong>Khu Viking – Khu làng bí mật</strong>&nbsp;<br />
-&nbsp;<strong>Khu cảm giác mạnh – thế giới phiêu lưu</strong>&nbsp;<br />
-&nbsp;<strong>Khu công viên nước – thế giới lốc xoáy</strong><br />
-&nbsp;<strong>Khu cổ tích – Thế giới diệu kỳ</strong><br />
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Khu Thủy cung - Cung điện Hải Dương</strong><strong>&nbsp;&nbsp;</strong><br />
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *<u>Lựa chọn 2</u></strong>: Khám phá&nbsp;<strong>CÔNG VIÊN CHĂM SÓC &amp; BẢO TỒN ĐỘNG VẬT VINPEARL SAFARI</strong><br />
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Chi phí tự túc; không bao gồm: phương tiện vận chuyển, vé tham quan Safari + 01 bữa ăn trưa)</strong><br />
Công viên chăm sóc và bảo tồn động vật Vinpearl Safari – vườn thú mở lớn nhất Việt Nam hiện nay, sẽ chính thức mở cửa đón khách tham quan vào ngày 24/12/2015 tại đảo ngọc Phú Quốc.&nbsp;<br />
<strong><em>Công viên động vật bán hoang dã với Khu vườn thú mở:</em></strong><br />
Nơi bảo tồn hơn 100 loài động vật quý hiếm từ khắp nơi trên thế giới. Tại đây, các loài được chăm sóc và phát triển khỏe mạnh trong không gian chuồng trại rộng lớn, thoáng đãng và hài hòa với môi trường tự nhiên. Trải nghiệm Rừng linh trưởng, Vương quốc sư tử, Khu động vật có vú, Khu rừng của voi, Thế giới bò sát, Đầm lầy hà mã, …<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Phu-Quoc/cong-vien-dong-vat-ban-hoang-da-du-lich-viet.jpg" /></p>

<p><strong><em>Các hoạt động trải nghiệm đời sống hoang dã:</em></strong><br />
<strong><em>+ Xem chương trình biểu diễn động vật:</em></strong><br />
<strong><em>+ Chụp ảnh với động vật</em></strong>&nbsp;<br />
<strong><em>+ Cho động vật ăn</em></strong>&nbsp;<br />
Ngoài ra, còn hệ thống nhà hàng với phong cách ẩm thực đa dạng và phố mua sắm với những món quà lưu niệm đặc sắc.<br />
Hướng dẫn viên tiễn đoàn ra&nbsp;<strong>sân bay Phú Quốc</strong>, đón chuyến bay về TP.HCM.<br />
Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.</p>
', N'Thành phố Hồ Chí Minh', N'Phú Quốc', CAST(0x0000B1DC00000000 AS DateTime), CAST(0x0000B1DE00000000 AS DateTime), 10, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (20, N'Du lịch Thái Lan lễ 2/9', 9990000, N'Tour Muang Boran - Đảo Coral - Wat Yannawa bay Vietnam Airlines từ Hà Nội 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<div style="padding:0px; text-align:justify">
<table align="left" cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình:</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hà Nội - Muang Boran - Đảo Coral - Wat Yannawa - Hà Nội</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình:</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>5 ngày 4 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Ngày khởi hành:</strong></span></span></span></span></span></td>
			<td>
			<p><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><span style="color:#555555"><strong>31/08/2024&nbsp;&nbsp;</strong></span></span></span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Vận chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hãng hàng không Vietnam Airlines</strong></span></span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><strong>Du Lịch Thái Lan Lễ 2/9 - Tour Muang Boran - Đảo Coral - Wat Yannawa bay Vietnam Airlines từ Hà Nội 2024&nbsp;</strong>– Xứ sở nụ cười Thái Lan được biết đến là thiên đường du lịch hàng đầu Châu Á. Xứ chùa vàng không chỉ nổi tiếng những công trình kiến trúc độc đáo, những điểm nghỉ dưỡng tuyệt vời mà tour du lịch Thái Lan còn hấp dẫn du khách với những show trình diễn mang đậm dấu ấn lịch sử, văn hóa như show Muay Thái, show múa bóng, hài kịch đầu bếp … Những chợ ẩm thực đường phố trong&nbsp;<a href="https://dulichviet.com.vn/du-lich-thai-lan" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Tour Thái Lan</strong></a>&nbsp;cùng những khu mua sắm từ bình dân đến cao cấp cũng là điểm dừng chân lý tưởng cho các tín đồ mua sắm. Qua<a href="https://dulichviet.com.vn/du-lich-thai-lan" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>&nbsp;tour du lịch Thái Lan</strong></a>&nbsp;tại Du Lịch Việt du khách còn được tham quan, du lịch tại những địa điểm nổi tiếng như: Bangkok, Pattaya..</em></span></span></span></span></span></p>
</div>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 30/05/24)</p>

<p>NGÀY 1 |&nbsp;HN - BKK - PATTAYA SHEEP FARM (ĂN NHẸ TRÊN MÁY BAY/TỐI)</p>

<p><strong>09h00</strong>&nbsp;Xe đón quý khách tại điểm hẹn. Hoặc:<br />
<strong>09h30</strong>&nbsp;Quý khách tập trung tại nhà ga T2 - sân bay Quốc tế Nội Bài, làm thủ tục đáp chuyến bay&nbsp;<strong>VN615 lúc 12h35</strong>. Quý khách dùng bữa trên máy bay. Đến sân bay Survanabhumi Thái Lan, đoàn làm thủ tục nhập cảnh.. Sau đó, HDV đưa quý khách khởi hành đi&nbsp;<strong>Pattaya</strong>. Đoàn tham quan:</p>

<ul>
	<li><strong>Nông trại cừu Pattaya Sheep Farm</strong>&nbsp;- Với những đồng cỏ xanh mướt mắt, bên cạnh những chú cừu xinh xắn đáng yêu nhởn nhơ gặm cỏ, Pattaya Sheep Farm sở hữu &nbsp;khung cảnh cực kỳ đẹp mắt, yên bình và thơ mộng đậm chất Châu Âu. Hoạt động thú vị nhất tại nông trại chính là khách tham quan có thể chính tay cho cừu ăn và ngắm nhìn những khoảnh khắc dễ thương của chúng. Không chỉ có cừu mà nông trại còn có nhiều con vật khác như thỏ, rùa, cừu, kì đà hoặc chim chóc… Du khách có thể cho cừu ăn, tìm hiểu về quy trình chăm sóc cừu hay tham quan một vòng khu nông trại bằng cách vắt vẻo trên lưng ngựa.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/swiss-sheep-farm-pattaya-du-lich-viet.jpg" /><br />
<em>Nông trại cừu Pattaya Sheep Farm</em><br />
&nbsp;</p>

<p>Ăn tối BBQ tại nhà hàng.<br />
Buổi tối, Quý khách đoàn tự do khám phá&nbsp;<strong>Phố đi bộ Pattaya WalkingStreet</strong>&nbsp;và các show diễn về đêm.<br />
Nghỉ đêm tại khách sạn tiêu chuẩn 4 sao&nbsp;</p>

<p>&nbsp;</p>

<p>NGÀY 2 |&nbsp;CORAL ISLAND – KHAO CHEE CHAN – CÔNG VIÊN ÁNH SÁNG (ĂN SÁNG/TRƯA/TỐI)</p>

<p>Đoàn dùng điểm tâm sáng tại khách sạn, sau đó lên cano khởi hành đi<strong>&nbsp;Tắm biển tại Coral</strong>, một bãi biển trong xanh thơ mộng với bãi cát thoải và trải dài với những hàng dừa xanh mát, quý khách tham gia các trò chơi như dù bay, tàu Chuối, lặn biển, mô tô nước...(chi phí tự túc khi tham gia trò chơi).<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/coral-island-du-lich-viet(1).jpg" /><br />
<em>Tắm biển tại Coral</em><br />
&nbsp;</p>

<p>Đoàn dùng cơm trưa.</p>

<ul>
	<li>Quý khách tham quan và tìm hiểu cách phòng và hỗ trợ điều trị các bệnh liên quan đến cột sống, tăng cường thể lực, cải thiện tuổi thọ con người, nâng cao giá trị cuộc sống thiết yếu tại&nbsp;<strong>“Trung Tâm Nghiên Cứu Giấc Ngủ Hoàng Gia” - Morden Latex,</strong>&nbsp;là phân viện nghiên cứu các sản phẩm hỗ trợ giấc ngủ Modern Latex Hoàng Gia Thái Lan.&nbsp;</li>
	<li>Tiếp tục tham quan<strong>&nbsp;“Trân Bảo Phật Sơn”</strong>&nbsp;hay còn gọi là Khao Chee Chan, nơi được tạo nên nhân dịp kỷ niệm 50 năm đăng cơ của nhà vua Thái Lan. Là một ngọn núi đẹp nổi tiếng nằm ở tỉnh Chon Buri, cách Pattaya – thiên đường biển đảo Thái Lan chỉ khoảng 15 km, Nổi bật giữa thiên nhiên hùng vĩ và vẻ đẹp hoang sơ của thiên nhiên là bức tượng nổi Thích Ca Mâu Ni Phật đang ngồi tọa thiền được tạc trên vách núi cao, Bức tượng cao đến hơn 100 mét, rộng khoảng 70 mét, được đúc nổi hoàn toàn bằng vàng ròng 24 cara, được tiến hành xây dựng vào năm 1996 nhân dịp Quốc vương Rama IX trị vì vương quốc Thái Lan được 50 năm.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/tua-thai-lan-tran-bao-phat-son-du-lich-viet(1).jpg" /><br />
<em>Trân Bảo Phật Sơn</em><br />
&nbsp;</p>

<ul>
	<li><strong>Trung tâm cao hổ , mật gấu quân đội Hoàng Gia&nbsp;</strong></li>
	<li><strong>Công viên ánh sáng Bansukhawadee&nbsp;</strong>– Một điểm tham quan nổi tiếng, nổi bật với các trình diễn âm nhạc và ánh sáng độc đáo; sử dụng công nghệ hiện đại để tạo ra các hiệu ứng đầy màu sắc và ấn tượng. Quý khách tham quan công viên và check-in tại Lâu đài tỷ phú. Ăn tối tại nhà hàng.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/cong-vien-anh-sang-bansukhawadee-du-lich-viet(1).jpg" /><br />
<em>Công viên ánh sáng Bansukhawadee</em><br />
&nbsp;</p>

<p>Đoàn dùng cơm tối, sau đó thưởng thức&nbsp;<strong>Show Alcaza/ Colossuem.</strong><br />
Nghỉ đêm tại khách sạn tiêu chuẩn 4 sao.&nbsp;</p>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;FLOATING MARKET – MUANG BORAN – BKK (ĂN SÁNG/TRƯA)</p>

<p>Đoàn dùng điểm tâm sáng tại khách sạn. Làm thủ tục trả phòng.<br />
Đoàn lên đường trở về Bangkok, tham quan:</p>

<ul>
	<li><strong>“Xưởng chế tác đá quý’’ - World Gems Company</strong>&nbsp;(Một trung tâm trưng bày đá quý phong thủy đạt tiêu chuẩn ISO 9001) Tại đây Quý khách có thể tìm hiểu màu đá theo tháng sinh của mình.</li>
	<li><strong>Chợ nổi 4 miền Four Region Floating Market</strong>&nbsp;– khu chợ với diện tích lên đến 100.000 m2; được quy hoạch thành 4 khu riêng biệt, tượng trưng cho 4 miền với lối kiến trúc đặc trưng riêng của từng vùng miền. Nơi đây xứng danh là thiên đường ẩm thực với những món ăn ngon mà chi phí lại rất rẻ. Một vài gợi ý món ăn cho các bạn nếu chưa biết thử gì khi tới Thái Lan thì bạn có thể tham khảo một số món lạ miệng như: Xôi xoài với vị thanh mát cùng vị ngọt tươi của xoài được quyện trong hương thơm của xôi nếp sẽ mang đến trải nghiệm vị giác mới lạ. Ngoài ra, bạn cũng không thể bỏ qua các món độc đáo như: bánh túi vàng, Cá nướng, xiên heo nướng sốt đậu phộng, gỏi thái, tôm càng nước, Pad Thái, mì xào, bánh dừa,…và đặc biệt không thể bỏ qua hoa quả Thái.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/cho-noi-bon-mien-du-lich-viet.jpg" /><br />
<em>Chợ nổi 4 miền</em><br />
&nbsp;</p>

<ul>
	<li><strong>Muangboran (Ancient City)&nbsp;</strong>- một quần thể giá trị nhân văn lớn vô cùng ý nghĩa và đẹp mắt vô cùng ấn tượng; là cánh cửa đưa bạn đến thế giới của những trang sử hào hùng thời kỳ dựng nước và giữ nước của xứ sở Chùa Vàng. Với một loạt các công trình kiến trúc tiêu biểu kết hợp hài hòa các yếu tố tinh tế, thủ công, tự nhiên, Muang Boran sẽ khiến bạn đắm chìm trong một tổng thể những tinh hoa lịch sử, văn hóa, tôn giáo, nghệ thuật và phong tục của người Thái từ thuở ban sơ đến ngày nay. Ăn trưa tại Muang Boran&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/thanh-pho-muang-boran-du-lich-viet(2).jpg" /><br />
<em>Muangboran</em><br />
&nbsp;</p>

<ul>
	<li>Tham quan và mua sắm tại<strong>&nbsp;Trung tâm thương mại ICON SIAM&nbsp;</strong>– Nằm bên bờ sông Chao Phraya, khu phức hợp thương mại siêu khủng ICONSIAM đã trở thành điểm đến hàng đầu mới ở Bangkok ngay sau khi khai trương. Được mệnh danh là "Mother of All Malls", Iconsiam rộng 80.000 mét vuông là "thiên đường" mua sắm hoành tráng và hiện đại nhất Bangkok.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/iconsiam-thai-lan-du-lich-viet(1).jpg" /><br />
<em>Trung tâm thương mại ICON SIAM</em><br />
&nbsp;</p>

<ul>
	<li><strong>Xem biểu diễn nhạc nước.</strong></li>
	<li>Qúy khách tự túc thưởng thức các món ăn vô cùng đặc trưng của Thái tại đây .</li>
	<li>(Quý khách có thể đăng ký thêm&nbsp;<strong>Buffet Du Thuyền 5 sao</strong>&nbsp;hạng sang đón tại cửa ,thưởng thức ẩm thực đa dạng Thái Lan, ngắm những cảnh đẹp của những công trình kiến trúc đẹp lộng lẫy , văn hoá của thành phố Bangkok đôi bờ , nghe những ca khúc nhạc du dương thể hiện bởi các ca sỹ nổi tiếng Thái Lan)</li>
</ul>

<p>Xe đưa khách về khách sạn nhận phòng. Nghỉ đêm tại Bangkok.</p>

<p>&nbsp;</p>

<p>NGÀY 4 |&nbsp;SNAKE FARM – CHINA TOWN – CHÙA MANGKOK KAMALAWAT – BAIYOKE SKY (ĂN SÁNG/TRƯA/TỐI)</p>

<p>Đoàn dùng bữa sáng tại khách sạn, sau đó tiếp tục khám phá</p>

<ul>
	<li><strong>Viện nghiên cứu Hoàng Gia Snake Farm</strong>&nbsp;xem màn biễu diễn rắn độc đáo, được thưởng thức và tìm hiểu qui trình lấy nọc rắn chế biến thành dược phẩm chữa bệnh.</li>
</ul>

<p>Đoàn ăn trưa&nbsp;<strong>“Buffet tại tòa nhà 86 tầng BaiYoke Sky”</strong>&nbsp;&nbsp;với các món ăn &nbsp;từ nhiều quốc gia khác nhau như: Thái, Hàn Quốc, Nhật Bản,... Qúy khách chụp ảnh, ngắm nhìn toàn cảnh thủ đô Bangkok.</p>

<ul>
	<li>Đoàn tham quan&nbsp;<strong>China Gate</strong>&nbsp;– công trình mang tính biểu tượng của China Town và cầu tài lộc tại một trong hai ngôi chùa cổ nhất Bangkok –&nbsp;<strong>Chùa Mangkon Kamalawat</strong>. Đây là ngôi chùa sở hữu nét kiến trúc độc đáo, mang đậm nét văn hoá Trung Hoa truyền thống. Sau khi lễ chùa, quý khách có cơ hội dạo phố và mua sắm tại China Town</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/chinatown-du-lich-viet(1).jpg" /><br />
<em>Khu China Town</em><br />
&nbsp;</p>

<p>Ăn tối tại nhà hàng.&nbsp;<br />
<strong>19h&nbsp;</strong>Xe đón đoàn về Khách sạn, nhận phòng và nghỉ ngơi. Nghỉ đêm tại Bangkok.&nbsp;</p>

<ul>
	<li>Quý khách có thể tự do khám phá<strong>&nbsp;thành phố Bangkok</strong>&nbsp;về đêm (tự túc chi phí và phương tiện di chuyển):&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/bangkok-ve-dem-du-lich-viet(1).jpg" /><br />
<em>Thành phố Bangkok về đêm</em><br />
&nbsp;</p>

<ul>
	<li>Mua sắm tại<strong>&nbsp;siêu thị Big C&nbsp;</strong>hoặc tự do khám khá các khu mua sắm sầm uất khác ngay trung tâm Partunam như: MBK, Central World, v.v...</li>
	<li>Trải nghiệm ăn đêm tại<strong>&nbsp;China Town hoặc phố Khao San</strong></li>
	<li>Khám phá<strong>&nbsp;chợ đêm đường tàu Talad Rod Fai</strong></li>
</ul>

<p>&nbsp;</p>

<p>NGÀY 5 |&nbsp;BKK – WATYANNAWA (ĂN SÁNG, TRƯA, ĂN TRÊN MÁY BAY)</p>

<p>Sau khi ăn sáng, Quý khách tự do, đến hẹn Đoàn làm thủ tục trả phòng.&nbsp;<br />
HDV đưa đoàn chiêm bái&nbsp;<strong>“Chùa Thuyền"</strong>&nbsp;hay được gọi là<strong>&nbsp;Wat Yannawa</strong>, do vua Rama III xây dựng từ nhiều trăm năm trước, tọa lạc tại đường Charoen krung quận Sathon Bangkok. Ngôi chùa này có sự kết hợp hài hòa giữa kiến trúc hình dáng con thuyền của Trung Hoa với mái cao vút của lối kiến trúc Thái Lan. Quý khách ra bến&nbsp;<strong>“Dạo thuyền trên dòng sông Chaophraya huyền thoại”</strong>&nbsp;ngắm thuyền Rồng của nhà vua, xem hiện tượng cá nổi trên sông.<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/chua-thuyen-du-lich-viet-2023(1).jpg" /><br />
<em>Wat Yannawa</em></p>

<p>&nbsp;</p>

<p><strong>11h00:</strong>&nbsp;Ăn trưa tại nhà hàng.<br />
<strong>12h30:</strong>&nbsp;Xe và HDV đón quý khách ra sân bay BKK làm thủ tục đáp chuyến bay<strong>&nbsp;VN614 lúc 15h55</strong>. Quý khách ăn nhẹ trên máy bay.<br />
Đến sân bay Nội Bài, xe đưa quý khách về điểm hẹn ban đầu. Chia tay và hẹn gặp lại Quý Khách trên những lộ trình mới!</p>
', N'Hà Nội', N'Thái Lan', CAST(0x0000B1C900000000 AS DateTime), CAST(0x0000B1C700000000 AS DateTime), 20, 2)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (21, N'Du lịch Châu Âu mùa Thu ', 86900000, N'Tour Anh - Scotland - Wales từ Hà Nội 2024', N'<p>Điểm nhấn hành trình</p>

<table align="left" border="0" cellpadding="10" cellspacing="10">
	<tbody>
		<tr>
			<td><strong>Hành trình:</strong></td>
			<td><strong>London – Nottingham – Leeds – Bradford – York – Edinburgh – Manchester – Biburry – Oxford – Cardiff &nbsp;</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình:</strong></td>
			<td><strong>9 ngày 8 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Ngày khởi hành:</strong></td>
			<td><strong>26/06; 22/07; 28/08; 16/09; 16/10/2024</strong></td>
		</tr>
		<tr>
			<td><strong>Vận chuyển:</strong></td>
			<td><strong>Xe du lịch đời mới &amp; Máy bay</strong></td>
		</tr>
	</tbody>
</table>

<p><em><strong>Du lịch Châu Âu mùa Thu - Tour Anh - Scotland - Wales từ Hà Nội 2024</strong>. Nước Anh là quốc gia lớn và đông dân nhất trong Vương quốc liên hiệp Anh và Bắc Ailen, nằm về phía Tây Bắc của Châu Âu. Thủ đô của Anh, London là thành phố lớn nhất của Vương quốc, cùng là nơi ra đời cuộc Cách mạng Công nghiệp thế kỷ 18, đưa Anh quốc trở thành một trung tâm kinh tế hàng đầu thế giới. Đặc biệt nhất, thủ đô này là nơi khởi nguồn của tiếng Anh, ngôn ngữ phổ biến nhất Thế giới hiện nay.&nbsp;Scotland với lâu đài Edinburgh là nơi JK Rowling hoàn thành cuốn sách “Harry Potter và hòn đá phù thủy”. Đây là tòa lâu đài mà trong lịch sử là pháo đài hoàng gia chính của Scotland, tọa lạc trên vùng đá trước là núi lửa rộng lớn, nhìn ra biển Bắc. Lâu đài không chỉ thu hút du khách vì vẻ cổ kính, nguy nga, tráng lệ mà nó được biết đến cả bởi những huyền bí ly kỳ.</em></p>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 13/06/24)</p>

<p>NGÀY 1 |&nbsp;HÀ NỘI - LONDON (ăn tối)</p>

<p><strong>06h00</strong>&nbsp;Xe và HDV đón đoàn tại điểm hẹn ra sân bay Nội Bài đáp chuyến bay&nbsp;<strong>VN55 (09:55 – 16:45)</strong>&nbsp;đi London. Quý khách nghỉ ngơi trên máy bay.<br />
<strong>16h45</strong>&nbsp;Đến London, Xe và Hướng dẫn viên đón đoàn tại Sân bay Heathrow đưa Quý khách về trung &nbsp;tâm thành phố.<br />
Ăn tối tại nhà hàng.<br />
Quý khách nhận phòng nghỉ ngơi tại khách sạn Hotel Renaissance London Heathrow 4* hoặc tương đương.&nbsp;</p>

<p>NGÀY 2 |&nbsp;LONDON - NOTTINGHAM - LEEDS - BRADFORD (Ăn sáng, trưa, tối)</p>

<p><strong>07h00</strong>&nbsp;Quý khách ăn sáng tại khách sạn<br />
<strong>08h00&nbsp;</strong>Đoàn làm thủ tục trả phòng khách sạn. Xe và HDV đưa Quý khách đi<strong>&nbsp;Nottingham (200km)</strong>, là một thành phố vùng Midlands miền trung nước Anh. Thành phố được biết đến trong truyền thuyết Robin Hood, được xây dựng trên các ngọn đồi ở bờ phía bắc của Sông Trent. Truyền thống lâu đời ở đây là sản xuất buôn bán các loại ren cao cấp. Ngày nay Nottingham là một trong những thành phố tập trung đông người Việt ở Anh.<br />
<strong>11h00&nbsp;</strong>Đến Nottingham, HDV đưa Quý khách tham quan:</p>

<ul>
	<li><strong>Quảng trường Old Market trung tâm thành phố:</strong>&nbsp;Đây là không gian công cộng dành cho người đi bộ lớn nhất nước Anh và có kiến trúc tân cổ điển và con đường lát đá nổi bật. Phía Đông của quảng trường là Tòa nhà Hội đồng thành phố, nơi từng là tòa thị chính của Nottingham cho đến năm 2010. Quảng trường hiện nay vẫn là nơi diễn ra các sự kiện lớn của địa phương, các hội chợ, hòa nhạc và triển lãm, là nơi tụ tập của giới trẻ.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/quang-truong-old-market-du-lich-viet(1).jpg" /><br />
<em>Quảng trường Old Market</em><br />
&nbsp;</p>

<ul>
	<li><strong>Lâu đài Nottingham:&nbsp;</strong>một lâu đài kiên cố thời trung cổ, đóng vai trong quan trọng như một pháo đài của Hoàng gia. Nơi đây rất nổi tiếng vì bức tượng của vị anh hùng Robin Hood và những người bạn.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/lau-dai-nottingham-anh-du-lich-viet(1).jpg" /><br />
<em>Lâu đài Nottingham</em><br />
&nbsp;</p>

<ul>
	<li><strong>Chợ Ren:</strong>&nbsp;có lịch sử lâu đời bởi từng là một trung tâm lớn của ngành công nghiệp ren Anh quốc. Ngày nay khu vực này được xem là một trong những khu di sản quan trọng nhất của thành phố. Bên cạnh những nhà kho và phòng trưng bày cũ, hiện nay thành phố còn bổ sung thêm rất nhiều cửa hàng, nhà hàng và khu sản xuất ren.&nbsp;</li>
</ul>

<p><strong>12h00</strong>&nbsp;Quý khách ăn trưa tại nhà hàng, thực đơn châu Âu.&nbsp;<br />
<strong>14h00&nbsp;</strong>Đoàn tiếp tục đi&nbsp;<strong>Leeds&nbsp;</strong>- trung tâm kinh tế, dịch vụ tài chính lớn thứ hai tại Vương quốc Anh, chỉ sau London. Kinh tế phát triển kéo theo sự phát triển của hệ thống giao thông đường sắt, đường thủy và đường bộ, khiến Leeds trở thành điểm phân phối hàng hóa quan trọng trong trục giao thông Bắc Nam của Vương quốc Anh. Tuy phát triển kinh tế là thế, nhưng Leed s vẫn giữ được những nét đẹp truyền thống với những tòa nhà đủ sắc màu hoài cổ bên&nbsp;<strong>dòng sông Aire.</strong><br />
Sau&nbsp;<strong>1h30</strong>, Quý khách dừng chân chụp ảnh tại Leeds với:&nbsp;</p>

<ul>
	<li><strong>Tòa thị chính Leeds Town Hall:&nbsp;</strong>được vua George V và hoàng hậu Mary mở cửa vào tháng 8 năm 1933. Kiến trúc sư Vincent Harris thiết kế rồi cho xây dựng từ năm 1853-1858 và mất 360.000 bảng Anh để xây nên công trình tuyệt mĩ này.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/toa-thi-chinh-leeds-town-hall-du-lich-viet(2).jpg" /><br />
<em>Tòa thị chính Leeds Town Hall</em></p>

<p>&nbsp;</p>

<ul>
	<li><strong>Headrow và Briggate</strong>: Là một khu vực dành cho người đi bộ, Headrow – nơi có nhiều điểm mua sắm, văn hóa du lịch hàng đầu của thành phố.</li>
</ul>

<p><strong>18h00&nbsp;</strong>Đoàn ăn tối tại nhà hàng địa phương theo thực đơn Châu Á<br />
Sau bữa tối, đoàn di chuyển về Bradford nghỉ ngơi<br />
Nghỉ đêm tại khách sạn Cedar Court Leeds Bradford 4* hoặc tương đương.</p>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;BRADFORD - YORK - EDINBURGH (Ăn sáng, trưa, tối)</p>

<p><strong>07h00</strong>&nbsp;Ăn sáng tại khách sạn &nbsp;<br />
<strong>08h00&nbsp;</strong>Quý khách làm thủ tục trả phòng Sau đó xe và HDV đưa đoàn đi tham quan&nbsp;<strong>York (~60km)</strong>&nbsp;- thành phố đặc trưng với sự pha trộn giữa kiến trúc La Mã, Anglo-Saxon và Viking, nơi được vua Geoger VI khen ngợi rằng “lịch sử của thành phố York là lịch sử của Vương Quốc Anh”. Tại York, Quý khách tham quan:&nbsp;</p>

<ul>
	<li><strong>Phố cố York:&nbsp;</strong>Nép mình bên hai dòng sông Ouse và Foss thơ mộng ở miền bắc hạt Yorkshire, Anh Quốc, York dường như là thành phố bước ra từ trong câu chuyện cổ tích với những tòa lâu đài, thành cổ đầy mê hoặc.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/thanh-pho-york-du-lich-viet.jpg" /><br />
<em>Phố cố York</em><br />
&nbsp;</p>

<ul>
	<li><strong>Đại thánh đường York Minster&nbsp;</strong>(tham quan bên ngoài): nằm trong danh sách “Những thánh đường vĩ đại nhất thế giới”, đại giáo đường York Minster là một trong những kiến trúc cổ đại nhất được xây dựng trong suốt 25 năm từ thế kỷ thứ 12 ở Anh. Cũng chính tại nơi đây, nhiều hoàng đế La Mã đã lên ngôi, để lại cho thánh đường một dấu ấn lịch sử hết sức sâu đậm.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/nha-tho-york-minster-anh-du-lich-viet.jpg" /><br />
<em>Nhà thờ York</em><br />
&nbsp;</p>

<ul>
	<li><strong>Thành cổ York:</strong>&nbsp;được mệnh danh là thành cổ đẹp nhất Châu Âu với bức tường bao bọc xung quanh dài 5 km, thành York trước đây từng là bờ chắn bảo vệ thành phố khỏi sự xâm lăng của người Viking, Dane và Norman ở phương đó.&nbsp;</li>
</ul>

<p><strong>12h00&nbsp;</strong>&nbsp;Ăn trưa nhà hàng địa phương<br />
<strong>13h00&nbsp;</strong>Quý khách tới&nbsp;<strong>Edinburgh (~300km)</strong>&nbsp;- thủ đô của Scotland và là thành phố lớn thứ hai của Scotland. Do vị trí nằm trên một địa hình đồi núi và có nhiều nhà ở kiến trúc thời George và kiến trúc Trung cổ nên Edinburgh là một trong những thành phố gây ấn tượng sâu sắc nhất châu Âu.<br />
<strong>18h30&nbsp;</strong>Về đến Edinburgh, Quý khách ăn tối nhà hàng địa phương<br />
Nghỉ đêm tại khách sạn Hotel Holiday Inn Edinburgh Zoo 4* hoặc tương đương.&nbsp;</p>

<p>&nbsp;</p>

<p>NGÀY 4 |&nbsp;EDINBURGH - MANCHESTER (Ăn sáng, trưa, tối)</p>

<p><strong>07h00&nbsp;</strong>Quý khách ăn sáng tại khách sạn, &nbsp;<br />
<strong>08h00</strong>&nbsp;Quý khách làm thủ tục trả phòng khách sạn, xe và HDV đưa Quý khách đi tham quan:&nbsp;</p>

<ul>
	<li><strong>Calton Hill&nbsp;</strong>- một ngọn đồi ở trung tâm Edinburgh, Scotland đã được đưa vào Di sản Thế giới của UNESCO. Tầm nhìn từ ngọn đồi thường được sử dụng trong các tranh ảnh của thành phố. Calton Hill là trụ sở của Chính phủ Scotland, có trụ sở tại Nhà St. Andrew, trên sườn phía nam dốc của ngọn đồi. Tòa nhà Quốc hội Scotland và các tòa nhà đáng chú ý khác như Cung điện Holyrood nằm gần chân đồi.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/calton-hill-scotland-du-lich-viet.jpg" /><br />
<em>Calton Hill</em><br />
&nbsp;</p>

<ul>
	<li><strong>Đài tưởng niệm quốc gia Scotland&nbsp;</strong>nằm trên đồi Calton ở Edinburgh, là đài tưởng niệm quốc gia của Scotland về những người lính và thủy thủ người Scotland đã chết khi chiến đấu trong Chiến tranh Napoléon.&nbsp;</li>
	<li><strong>Lâu đài Edinburgh (vé vào trong)</strong>: Tọa lạc trên một ngọn đồi gắn với nhiều chứng tích lịch sử bên hướng tây của thành cổ Edinburgh, lâu đài Edinburgh là một trong những pháo đài được bảo quản tốt nhất ở Scotland. Đến tòa lâu đài được xây dựng từ thời Trung cổ này, mọi du khách đều được thưởng ngoạn cảnh sắc bao la, phóng khoáng bên ngoài và bị quyến rũ bởi nét duyên dáng trong thiết kế cùng câu chuyện lịch sử độc đáo của nó.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/lau-dai-Edinburgh-viet-media-travel.jpg" /><br />
<em>Lâu đài Edinburgh</em><br />
&nbsp;</p>

<ul>
	<li><strong>Trải nghiệm Scotch Whisky (vé vào trong)</strong>: Thưởng thức rượu Whisky thượng hạng tại “ngôi nhà của rượu Whisky” - nhà trưng bày bằng loại gạch đỏ đặc trưng, tìm hiểu về loại rượu nổi tiếng nhất thế giới cũng như cách thức tạo nên loại rượu này.</li>
</ul>

<p><strong>12h00&nbsp;</strong>Quý khách ăn trưa nhà hàng địa phương<br />
<strong>13h00&nbsp;</strong>Đoàn khởi hành về&nbsp;<strong>Manchester (346km)</strong>, thành phố không chỉ nổi tiếng với hai đội bóng đá lừng danh cả thế giới là Manchester United và Manchester City mà còn là đô thị sôi động bậc nhất nước Anh - điểm đến hấp dẫn với nhiều du khách. Thành phố Manchester được mệnh danh là thành phố thịnh vượng và phát triển trên mọi lĩnh vực của nước Anh. Đây cũng là trung tâm kinh tế và văn hóa phát triển bậc nhất của Anh Quốc. Người ta hay gọi Manchester là thủ phủ của miền Bắc nước Anh.</p>

<p>&nbsp;</p>

<p><strong>Tối:&nbsp;</strong>Quý khách ăn tối tại Nhà hàng .&nbsp;<br />
Nghỉ đêm tại khách sạn Hotel Copthorne Manchester Salford Quays 4* hoặc tương đương.</p>

<p>&nbsp;</p>

<p>NGÀY 5 |&nbsp;MANCHESTER - LÀNG CỔ BIBURY - OXFORD (Ăn sáng, trưa, tối)</p>

<p><strong>07h00</strong>&nbsp;Quý khách ăn sáng tại khách sạn<br />
<strong>08h00&nbsp;</strong>Xe và HDV đưa Quý khách tham quan:&nbsp;</p>

<ul>
	<li><strong>Sân vận động Old Trafford (chụp hình bên ngoài)</strong>&nbsp;- “Nhà hát của những giấc mơ”, &nbsp;tại đây Quý khách được nghe câu chuyện lịch sử với bề dày hơn 130 năm của câu lạc bộ này. Câu chuyện của M.U không giống bất cứ một câu lạc bộ nào khác trên thế giới. Nó bắt đầu từ hơn một thế kỉ trước, là sự kết hợp giữa sự thống trị của các “gương mặt kinh điển” của Anh và châu Âu với &nbsp;các “cá nhân kiệt xuất” có thể đến từ bất cứ một câu lạc bộ nào trên thế giới. &nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/san-van-dong-Old-Trafford-du-lich-viet(1).jpg" /><br />
<em>Sân vận động Old Trafford</em><br />
&nbsp;</p>

<ul>
	<li><strong>Tòa thị chính (Manchester Hall) &nbsp;</strong></li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/nha-tho-Manchester-du-lich-viet.jpg" /><br />
<em>Manchester Hall</em><br />
&nbsp;</p>

<ul>
	<li><strong>Quảng trường One Angel Manchester.&nbsp;</strong></li>
</ul>

<p><strong>12h00</strong>&nbsp;Quý khách ăn trưa tại nhà hàng địa phương<br />
<strong>13h00</strong>&nbsp;Quý khách khởi hành đi tham quan&nbsp;<strong>Làng cổ Bibury (246km)&nbsp;</strong>- miền quê tươi đẹp của xứ sở sương mù. Bibury là một ngôi làng nhỏ thuộc vùng Cotswold. Ngôi làng xinh xắn này nằm cách thành phố Cirencester 10 km về phía Đông Bắc, có dòng sông Coln thơ mộng uốn lượn bao quanh. Quý khách sẽ được thấy những &nbsp;dãy nhà tranh màu mật ong, được &nbsp;làm bằng một loại đá vôi đặc biệt được gọi là đá Cotswold, những dòng suối trong vắt và những con đường đi bộ rợp bóng cây tạo nên một khung cảnh tuyệt đẹp mà người ta có thể nghĩ rằng chỉ tồn tại trong những &nbsp;trang sách truyện.&nbsp;<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/lang-co-bibury-du-lich-viet.jpg" /><br />
<em>Làng cổ Bibury</em><br />
&nbsp;</p>

<p><strong>18h00&nbsp;</strong>Quý khách khởi hành về&nbsp;<strong>Oxford (50km)&nbsp;</strong>- được mệnh danh là “thành phố đại học” lừng danh và nổi tiếng nhất thế giới. Trong hơn 800 năm hình thành, Oxford là ngôi nhà của hoàng gia, sản sinh ra nhiều bậc học giả, danh nhân, triết gia mang lại nhiều đóng góp cho thế giới nói chung và nước Anh nói riêng. Đây còn là quê hương của một cộng đồng công nghệ cao đang phát triển.<br />
Đoàn dùng bữa tối tại nhà hàng địa phương.&nbsp;<br />
Nghỉ đêm tại khách sạn Hotel Courtyard by Marriott Oxford South 4* hoặc tương đương.</p>

<p>&nbsp;</p>

<p>NGÀY 6 |&nbsp;OXFORD - CARDIFF (Ăn sáng, trưa, tối)</p>

<p><strong>07h00</strong>&nbsp;Quý khách ăn sáng tại khách sạn<br />
<strong>08h30</strong>&nbsp;Quý khách làm thủ tục trả phòng khách sạn, hướng dẫn viên đưa đoàn đi tham quan và chụp ảnh bên ngoài quần thể&nbsp;<strong>trường Đại Học Oxford&nbsp;</strong>- nổi tiếng toàn cầu về hoạt động giảng dạy, nghiên cứu và đóng góp cho xã hội. Times Higher Education (THE) World University Rankings 2022 xếp hạng Đại học Oxford là trường đại học tốt nhất thế giới trong năm thứ sáu liên tiếp ấn tượng.<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/khuong-vien-cua-dai-hoc-oxford-du-lich-viet.jpg" /><br />
<em>Khuôn viên trường Đại Học Oxford</em><br />
&nbsp;</p>

<p><strong>12h00:</strong>&nbsp;Đoàn ăn trưa tại nhà hàng địa phương.<br />
Sau bữa trưa, đoàn đi&nbsp;<strong>Cardiff (~180km)&nbsp;</strong>- thủ đô của xứ Wales từ năm 1955. Khác với sự sầm uất và náo nhiệt của thủ đô London hay Manchester, thành phố Cardiff - thủ phủ của xứ Wales mang đến cho du khách một cảm giác lạc vào chốn bình yên, thơ mộng. Cardiff là đô thị xinh đẹp có kiến trúc đậm chất cổ điển với muôn vàn điểm thăm quan hấp dẫn. Đến nơi, quý khách tham quan</p>

<ul>
	<li><strong>Lâu đài Cardiff:&nbsp;</strong>một biểu tượng cho nền văn hóa của thành phố và là điểm thăm quan thu hút khách bậc nhất Cardiff. Tòa lâu đài được xây dựng kiên cố, uy nghiêm với những mái nhà được thiết kế theo kiến trúc Gothic. Bên trong công trình này vô cùng xa hoa, những khối gỗ lớn được sơn màu và chạm khắc tinh xảo.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/lau-dai-Cardiff-du-lich-viet.jpg" /><br />
<em>Lâu đài Cardiff</em><br />
&nbsp;</p>

<ul>
	<li><strong>Tòa thị chính thành phố Cardiff.</strong></li>
	<li><strong>Cardiff Bay Barrage</strong>&nbsp;mất 7 năm để xây dựng. Vào những năm 1990, đây là một trong những dự án kỹ thuật dân dụng lớn nhất ở châu Âu. Với chi phí 120 triệu bảng Anh, Đập nước mở cửa vào năm 2001. Nằm trên cửa Cửa sông Severn, Cardiff trải qua các mức thủy triều giống như phần còn lại của Cửa sông Severn, cao thứ 2 trên thế giới. Điều này có nghĩa là khi thủy triều rút, những bãi bồi lớn lộ ra. Cardiff dễ bị ngập lụt do thủy triều dâng. Việc xây dựng Barrage đã giúp giải quyết cả hai vấn đề này. Đầu tiên, nó ngăn nước rút theo thủy triều, làm cho khu vực này trở nên hấp dẫn hơn, có thể sử dụng được và có khả năng thu hút đầu tư, đồ ng thời bảo vệ Cardiff khỏi lũ lụt bằng cách ngăn thủy triều dâng.&nbsp;</li>
</ul>

<p><br />
<img alt="" src="https://dulichviet.com.vn/images/bandidau/cardiff-bay-barrage-du-lich-viet(1).jpg" /><br />
<em>Cardiff Bay Barrage</em><br />
&nbsp;</p>

<ul>
	<li><strong>Tự do mua sắm tại Cardiff nếu còn thời gian.</strong></li>
</ul>

<p><strong>18h30&nbsp;</strong>Quý khách ăn tối nhà hàng.&nbsp;<br />
Nghỉ đêm tại Mercure Cardiff North Hotel 4* hoặc tương đương.</p>

<p>&nbsp;</p>

<p>NGÀY 7 |&nbsp;CARDIFF – BATH/MAY FIELD- STONE HENGE - LONDON ( Ăn sáng, trưa, tối)</p>

<p><strong>07h00</strong>&nbsp;Quý khách ăn sáng tại khách sạn<br />
<strong>08h00</strong>&nbsp;Đoàn làm thủ tục trả phòng khách sạn. xe và HDV đưa Quý khách tiếp tục hành trình tham quan&nbsp;<strong>Vương Quốc Anh.</strong><br />
<strong>Từ cuối tháng 6 đến cuối tháng 7</strong>&nbsp;là mùa hoa lavender nở rộ, đoàn sẽ ghé thăm&nbsp;<strong>làng hoa Mayfield Lavender Fam</strong>&nbsp;(268km – cùng cung đường về London): Quý khách đắm chìm trong vẻ đẹp tím lịm và hương thơm ngọt ngào của loài hoa Lavender với những cánh đồng hoa bát ngát. Quý khách có thể thoả thích chụp ảnh, tự mua cho mình 1 ly café ngắm cảnh cánh đồng hoa vi vu trong gió hoặc mua sắm quà lưu niệm chủ đề lavender.&nbsp;<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/canh-dong-hoa-lavender-anh-du-lich-viet.jpg" /><br />
<em>Làng hoa Mayfield Lavender Fam</em><br />
&nbsp;</p>

<p><strong>Các tháng còn lại:&nbsp;</strong>Đoàn ghé thăm&nbsp;<strong>thành phố Bath</strong>&nbsp;(~90km) - di sản thế giới của nước Anh. &nbsp;Thành phố Bath thuộc vùng Somerset, nơi được xem là 1 trong những thành phố đẹp nhất của nước Anh. Bên cạnh đó, Bath còn được công nhận là 1 thành phố di sản của thế giới từ năm 1987 bởi UNESCO. Một thành phố tiêu biểu với lối kiến trúc La Mã từ những nhà thờ, dinh thự, đền đài, cho đến những viên đá được dùng để lót đường. Lịch sử hình thành của Bath bắt đầu vào năm 60 sau CN, khi những người La Mã đã đến đây và cho xây dựng nên các khu nhà tắm kiểu La Mã và 1 ngôi đền thờ tại khu vực thung lũng bên cạnh sông Avon (tại đây có khá nhiều các suối nước nóng). Điều này đã dẫn đến việc hình thành 1 khu định cư La Mã nhỏ xung quanh khu vực.&nbsp;<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/thanh-pho-bath-anh-du-lich-viet(1).jpg" /><br />
<em>Thành phố Bath</em><br />
&nbsp;</p>

<p>Quý khách tham quan:</p>

<ul>
	<li><strong>Tòa nhà hình trăng lưỡi liềm Hoàng Gia</strong>&nbsp;- con phố gồm 30 ngôi nhà hình lưỡi liềm được xây dựng vào năm 1774. Royal Crescent, công trình kiến trúc uốn cong hình trăng lưỡi liềm ngạo nghễ và uy nghiêm nằm giữa trung tâm thành phố, thiết kế bởi John Wood con năm 1767, nay là nơi ở của giới thượng lưu giàu có bậc nhất nước Anh. Tòa nhà trải dài, xây bằng đá vôi vàng, đặc sản của Bath, điểm xuyết những khung cửa trắng tinh tế.</li>
	<li>Tham quan&nbsp;<strong>suối nước nóng (bồn tắm cổ)&nbsp;</strong></li>
</ul>

<p><strong>12h00</strong>&nbsp;Đoàn ăn trưa tại nhà hàng địa phương.<br />
Chiều Quý khách tham quan :</p>

<ul>
	<li><strong>Bãi đá cổ Stone Henge&nbsp;</strong>- “thánh địa trên những trụ đá”, công trình tượng đài cự thạch 4000 năm tuổi nổi tiếng ở Anh. Các nhà khảo cổ học từ lâu vẫn luôn tranh cãi về việc liệu bãi đá cổ xưa kia được khép kín hoàn hảo hay nó vốn dĩ là một vòng tròn khuyết như ngày nay.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/bai-da-Stonehenge-du-lich-viet(1).jpg" /><br />
<em>Bãi đá cổ Stone Henge&nbsp;</em><br />
&nbsp;</p>

<p>Sau đó đoàn lên xe trở về London, tự do mua sắm tại&nbsp;<strong>khu Mayfair&nbsp;</strong>(nếu kịp thời gian). Đây là khu có các mặt hàng thời trang thiết kế cao cấp với phong cách riêng, thời thượng. Nhiều người nổi tiếng chọn mua sắm ở khu vực này, có lẽ đây là khu vực mua sắm độc nhất ở London, nơi có những tên tuổi lớn như Burberry, Louis Vuitton và Tiffany &amp; Co.&nbsp;<strong>Đường South Molton</strong>&nbsp;tự hào có các cửa hiệu thời trang mang tính biểu tượng Browns.&nbsp;<br />
<strong>18h30&nbsp;</strong>Đoàn dùng cơm tối tại nhà hàng địa phương<br />
Sau bữa tối, xe đưa đoàn về khách sạn nhận phòng nghỉ ngơi.<br />
Nghỉ đêm tại khách sạn Novotel London Wembley 4* hoặc tương đương.</p>

<p>&nbsp;</p>

<p>NGÀY 8 |&nbsp;LONDON - HÀ NỘI ( Ăn sáng, trưa)</p>

<p><strong>07h00</strong>&nbsp;Quý khách ăn sáng tại khách sạn.&nbsp;<br />
<strong>08h00</strong>&nbsp;Sau bữa sáng, đoàn làm thủ tục trả phòng khách sạn.&nbsp;<br />
Quý khách tham quan:&nbsp;</p>

<ul>
	<li><strong>Đoàn đi du thuyền trên sông Thames</strong>, thuyền dạo qua các thắng cảnh nổi tiếng của thủ đô nước Anh.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/dao-thuyen-tren-song-Thame-du-lich-viet.jpg" /><br />
<em>Du thuyền trên sông Thames</em><br />
&nbsp;</p>

<ul>
	<li><strong>Cung điện Westminster (Bên ngoài)</strong>&nbsp;– cực phẩm kiến trúc nước Anh, được xây dựng từ năm 1065 và trong suốt 700 năm sau đó, rất nhiều vị vua của Anh Quốc đã làm lễ lên ngôi cũng như được chôn cất tại đây. Sự kiện hoàng gia gần đây nhất được tổ chức tại tu viện này chính là đám cưới giữa hoàng tử William và Kate Middleton vào năm 2011.</li>
	<li><strong>Tháp đồng hồ Big Ben</strong>: Big Ben được xem là một trong những biểu tượng của nước Anh và là chứng nhân lịch sử quan trọng đối với quốc gia này. Tháp đồng hồ này đã trải qua 5 đời vua, 23 đời thủ tướng và 2 cuộc đại chiến thế giới, vẫn đứng sừng sững giữa trời. Đến tận bây giờ, thế giới vẫn không khỏi ngạc nhiên và bày tỏ sự ngưỡng mộ với công nghệ cơ khí của chiếc đồng hồ này. Bởi nó chỉ chậm không quá 1 giây trong suốt thời gian hoạt động. Đến Luân Đôn mà chưa có tấm ảnh check in phía xa xa là đồng hồ Big Ben thì chưa phải là đến Luân Đôn.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/thap-dong-ho-big-ben-anh-du-lich-viet(1).jpg" /><br />
<em>Tháp đồng hồ Big Ben</em><br />
&nbsp;</p>

<p>&nbsp;</p>

<ul>
	<li><strong>Cung điện Buckingham (Bên ngoài)</strong>: Đây là nơi cư trú và trụ sở hành chính của chế độ quân chủ Vương Quốc Anh. Nằm tại khu vực Westminster, cung điện Buckingham thường là trung tâm tổ chức các dịp lễ chính của Vương Quốc Anh hay được dùng làm nơi tiếp đón các nguyên thủ quốc gia.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Buckingham-du-lich-viet.jpg" /><br />
<em>Cung điện Buckingham</em><br />
&nbsp;</p>

<p><strong>12h00&nbsp;</strong>Ăn trưa tại nhà hàng địa phương<br />
<strong>Chiều,</strong>&nbsp;Quý khách tham quan:&nbsp;</p>

<ul>
	<li><strong>Tower Bridge:&nbsp;</strong>Trong tổng số 24 cây cầu bắc ngang sông Thames ở London, cầu Tháp (Tower Bridge) ngay từ khi hoàn thành đã là biểu tượng, là thành tựu vĩ đại nhất của thời kỳ Victoria (1837 – 1901). Tower Bridge hiện vẫn là điểm tham quan hấp dẫn của du khách khắp thế giới khi đến Anh Quốc.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/cau-thap-london-du-lich-viet.jpg" /><br />
<em>Tower Bridge</em><br />
&nbsp;</p>

<ul>
	<li><strong>London Eye (Mắt Luân Đôn):&nbsp;</strong>Bất kỳ hành khách nào du lịch Anh cũng muốn được trải nghiệm vòng quay London Eye và ngắm nhìn thành phố từ trên cao. Cả London rộng lớn thu bé lại trong vòm tay vô cùng thú vị. Vòng quay London Eye là một trong 4 vòng quay lớn nhất thế giới được nhiều đôi chọn làm địa điểm cầu hôn và tổ chức đám cưới, thậm chí trở thành nhà hàng vào các dịp liên hoan. Có tổng cộng 32 cabin (tượng trưng cho 32 quận của thành phố), nhưng lại được đánh số từ 1 đến 33. Vì theo quan niệm của người Anh, số 13 là 1 con số kém may mắn nên London Eye không có cabin 13.</li>
	<li><strong>Toà nhà số 10 phố Downing</strong>&nbsp;- được biết đến với tên gọi (Number ten) nơi ở và làm việc của Thủ Tướng Anh. &nbsp;</li>
</ul>

<p>Xe và HDV đưa đoàn ra sân bay, làm thủ tục lên chuyến bay về Hà Nội lúc&nbsp;<strong>17h05. VN56 18h55-12h50 (+1).</strong></p>

<p>&nbsp;</p>

<p>NGÀY 9 |&nbsp;ĐẾN HÀ NỘI</p>

<p><strong>12h50:&nbsp;</strong>Máy bay hạ cánh sân bay Nội Bài. Quý khách làm thủ tục nhập cảnh, nhận hành lý xe và HDV đưa Quý khách về điểm hẹn ban đầu.&nbsp;</p>

<p><em>_Chia tay và kết thúc chương trình_</em></p>
', N'Hà Nội', N'Anh', CAST(0x0000B1CD00000000 AS DateTime), CAST(0x0000B1D600000000 AS DateTime), 10, 2)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (22, N'Du lịch Hạ Long', 8799000, N'Tour Hà Nội - Hạ Long - Ninh Bình - Sapa 5 ngày từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Hà Nội - Vịnh Hạ Long - Tràng An - Ninh Bình - Lào Cai - Sapa - Bản Cát Cát - Chinh phục đỉnh Fansipan</span></strong></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>5 ngày 4 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td>
			<p><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><span style="color:#555555"><strong>03,10/08; 14,21,28/09/2024</strong></span></span></span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Vận chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Xe du lịch đời mới &amp; Máy bay khứ hồi</strong></span></span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-he-tour-ha-noi-ha-long-ninh-binh-sapa-5-ngay-tu-sai-gon-2024" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong><span style="color:#3498db">Du lịch Hè - Tour Hà Nội - Hạ Long - Ninh Bình - Sapa 5 ngày từ Sài Gòn 2024</span></strong></a>. Hành trình 5 ngày 4 đếm sẽ đưa quý khách hàng đến với&nbsp;Ninh Bình - Ninh Bình không chỉ níu chân du khách bởi vẻ đẹp cổ kính của cố đô Hoa Lư hay những thắng cảnh nổi tiếng như Bái Đính, Thung Nham, Tràng An... mà còn bởi những món ăn đặc sản ngon nức tiếng tại nơi đây. Dưới đây, chúng tôi sẽ điểm danh vài &nbsp;món ăn đặc sản nhất định phải thử khi đi du lịch Ninh Bình sắp tới. Các món đặc sản nhất định phải thử khi đi du lịch Ninh Bình</em></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><strong>Cơm cháy ruốc</strong></em></span></span></span></span></span></p>

<p><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em>Nhắc đến Ninh Bình thì món đầu tiên phải kể đến đó chính là cơm cháy ruốc, một món ăn mà rất nhiều du khách khi đi tour du lịch Ninh Bình đều muốn thưởng thức. Món ăn khá quen thuộc với phần cơm cháy chính là cơm dính dưới đáy nồi thành tảng và được phơi khô dưới nắng, sau đó sẽ được chiên ngập trong dầu để có vị ngon và giòn nhất. Đến Ninh Bình hãy đến những nơi như Bái Đính, Tràng An, Tam Quốc để thưởng thức món ngon này.</em></span></span></span></span></span></p>

<p><br />
<span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><strong>Thịt dê núi</strong></em></span></span></span></span></span></p>

<p><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em>Khi đi du lịch Ninh Bình nhất thì bạn phải thử qua món ngon này một lần. Thịt dê được chế biến ra rất nhiều món ăn ngon với các cách chế biến khác nhau như nem đê, dê nướng, dê hấp hay nổi tiếng nhất ở nơi đây là dê tương gừng, một món ăn vô cùng dinh dưỡng. Nhiều người nói rằng thịt dê còn có thể chữa được rất nhiều bệnh nên đến Ninh Bình nếu có cơ hội bạn chớ bỏ qua thịt dê núi nức tiếng tại nơi đây.</em></span></span></span></span></span></p>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 16/07/24)</p>

<p>NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI (Ăn trưa, chiều)</p>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại&nbsp;<strong>ga quốc nội, sân bay Tân Sơn Nhất</strong>&nbsp;trước giờ bay ít nhất hai tiếng.<br />
Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Hà Nội.</strong><br />
Đến sân bay&nbsp;<strong>Nội Bài</strong>, Hướng Dẫn Viên đón đoàn, Tham quan thủ đô<strong>&nbsp;</strong>với:&nbsp;<strong>Phủ Chủ Tịch, ao cá, nhà sàn Bác Hồ, Chùa Một Cột, Bảo Tàng Hồ Chí Minh.</strong><br />
<em>(<strong>Lăng Chủ tịch Hồ Chí Minh</strong>&nbsp;sẽ tạm ngừng đón đồng bào và du khách vào viếng từ ngày&nbsp;<strong>10/06/2024</strong>&nbsp;đến hết ngày&nbsp;<strong>14/08/2024</strong>&nbsp;để thực hiện các công việc duy tu định kỳ...)</em>&nbsp;<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Noi/vieng-tham-lang-bac-du-lich-viet.jpg" /><br />
&nbsp;</p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.&nbsp;<br />
Tham quan&nbsp;<strong>Văn Miếu-Quốc Tử Giám, chùa Trấn Quốc, Hồ Tây, Hồ Trúc Bạch, Hồ Hoàn Kiếm, Đền Ngọc Sơn</strong>.<br />
<strong>Tối:</strong>&nbsp;Dùng bữa tối. Nghỉ đêm tại Hà Nội.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>NGÀY 2 |&nbsp;HÀ NỘI – LÀO CAI – SAPA (Ăn sáng, trưa, chiều)</p>

<p>&nbsp;</p>

<p><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đoàn khởi hành đến&nbsp;<strong>Lào Cai</strong>&nbsp;trên con đường cao tốc dài nhất Việt Nam - nối liền giữa Hà Nội và các tỉnh Tây Bắc.</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Dùng bữa trưa.&nbsp;</p>

<ul>
	<li>Đoàn tiếp tục đến thị trấn vùng cao&nbsp;<strong>Sapa</strong>, tận hưởng cảnh sắc núi rừng như tranh vẽ và khám phá cuộc sống của đồng bào dân tộc ít người miền Tây Bắc.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/thi-tran-vung-cao-sapa-du-lich-viet.jpg" /><br />
Thị Trấn vùng Cao Sapa<br />
&nbsp;</p>

<ul>
	<li>Thăm&nbsp;<strong>bản Cát Cát</strong>, tìm hiểu nghề dệt nhuộm của dân tộc H’Mông và trạm thủy điện Cát Cát thời Pháp – nơi có 3 dòng nước hợp nhau thành dòng suối Mường Hoa.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/tour-du-lich-sapa-ban-cat-cat-du-lich-viet.jpg" /><br />
Thăm bản Cát Cát</p>

<p><strong>Tối:</strong>&nbsp;Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Sapa</strong>.</p>

<ul>
	<li>Đoàn tự do tham dự đêm chợ Tình&nbsp;<em>(nếu đi vào tối thứ 7).</em></li>
</ul>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;FANSIPAN – HÀ NỘI(Ăn sáng, trưa, chiều)</p>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đoàn khởi hành tham quan&nbsp;<strong>chinh phục Fansipan</strong>, ngọn núi cao nhất Việt Nam (3.143m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn Sa Pa khoảng 9km về phía tây nam.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/chinh-phuc-dinh-nui-fansipan-du-lich-viet.jpg" /><br />
Chinh phục Fansipan<br />
&nbsp;</p>

<ul>
	<li>Du khách chinh phục "Nóc nhà Đông Dương" với hệ thống cáp treo Fansipan SaPa dài 6,2km đạt 2 kỷ lục Guinness thế giới: cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và cáp treo ba dây dài nhất thế giới: 6292.5m. Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung&nbsp;<strong>lũng Mường Hoa</strong>&nbsp;và&nbsp;<strong>vườn quốc gia Hoàng Liên</strong>&nbsp;từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại&nbsp;<strong>Khu du lịch tâm linh – Chùa Trình, Chùa Hạ</strong>&nbsp;tại ga đến&nbsp;<em>(chi phí cáp treo tự túc).</em></li>
</ul>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/thung-lung-muong-hoa-tour-sapa-mua-thu-du-lich-viet.jpg" /></em><br />
Thung lũng Mường Hoa</p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.&nbsp;</p>

<ul>
	<li>Đoàn trở về Hà Nội</li>
</ul>

<p><strong>Tối:</strong>&nbsp;Dùng bữa tối. Nghỉ đêm tại Hà Nội.</p>

<ul>
	<li>Quý khách có thể tham gia phố đi bộ, chợ đêm, chợ Đồng Xuân, thưởng thức đặc sản và mua quà lưu niệm.</li>
</ul>

<p>&nbsp;</p>

<p>NGÀY 4 |&nbsp;TRÀNG AN - HẠ LONG (Ăn sáng, trưa, chiều)</p>

<p>&nbsp;</p>

<p><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đến&nbsp;<strong>Ninh Bình,</strong>&nbsp;đoàn xuôi thuyền dọc theo giữa cánh đồng lúa thăm&nbsp;<strong>Khu du lịch Tràng An</strong>&nbsp;nơi những dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí, quý khách đi đò thăm&nbsp;<strong>Hang sáng, Hang tối, Hang nấu rượu</strong>&nbsp;và tìm hiểu văn hóa lịch sử nơi đây.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Trang-An/tour-du-lich-trang-an-gia-tot-du-lich-viet.jpg" /><br />
Khu du lịch Tràng An</p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.&nbsp;</p>

<ul>
	<li>Khởi hành đến&nbsp;<strong>Hạ Long</strong>,&nbsp;</li>
</ul>

<p><strong>Tối:</strong>&nbsp;Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Hạ Long.</strong></p>

<ul>
	<li>Quý khách tự do dạo phố, mua sắm tại chợ đêm hoặc tham gia khu&nbsp;<strong>Sunworld Hạ Long Park</strong>&nbsp;(<em>chi phí tự túc).</em></li>
</ul>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/Sunworld-Ha-Long-Park-du-lich-viet.jpg" /></em><br />
Sunworld Hạ Long Park</p>

<p>&nbsp;</p>

<p>NGÀY 5 |&nbsp;HẠ LONG – TP. HCM (Ăn sáng, trưa)</p>

<p><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Quý khách xuống thuyền ngoạn cảnh&nbsp;<strong>Vịnh Hạ Long</strong>&nbsp;– Di sản thiên nhiên thế giới với hàng ngàn đảo đá có hình dạng kỳ vị - chiêm ngưỡng vẻ đẹp trau chuốt, lộng lẫy của động Thiên Cung, vẻ đẹp siêu nhiên của hòn Đỉnh Hương, Gà Chọi, Chó Đá,…&nbsp;</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Đoàn trở về Hà Nội.</li>
	<li>Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về TP.HCM.</li>
	<li>Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.</li>
</ul>
', N'Hà Nội', N'Hạ Long', CAST(0x0000B1CA00000000 AS DateTime), CAST(0x0000B1CE00000000 AS DateTime), 20, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (23, N'Du lịch Đà Lạt', 1999000, N'Du lịch Đà Lạt Hè - Thác Pongour - Mongoland - Nhà Thờ Domaine từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start">
<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Hành trình</span></strong></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Đà Lạt - Thác Pongour - Mongoland - Nhà Thờ Domaine</span></strong></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Lịch trình</span></strong></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">3 ngày 2 đêm</span></strong></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Khởi hành</span></strong></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Thứ 3,6 hàng tuần</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Vận chuyển</span></strong></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Xe du lịch đời mới</span></strong></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><a href="https://dulichviet.com.vn/du-lich-da-lat" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear; font-weight:bold"><span style="color:#3498db">Du lịch Đà Lạt</span></a>&nbsp;cùng&nbsp;<a href="https://dulichviet.com.vn/" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Du Lịch Việt</strong></a>&nbsp;sẽ đưa quý khách đến với thành phố nổi tiếng bậc nhất Việt Nam với sự thơ mộng và lãng mạn đặc trưng của mình. Đà Lạt được ví như một Paris thu nhỏ với view đẹp, thu hút lượng khách du lịch lớn mỗi năm trải nghiệm, khám phá. Du lịch Đà Lạt hẳn là ai cũng muốn tìm và ngắm những địa điểm view đẹp. Đà Lạt là một địa điểm du lịch, nghỉ dưỡng lý tưởng được đông đảo lượng khách du lịch đổ về hằng năm. Được thiên nhiên ưu ái ban cho Đà Lạt cảnh quan thơ mộng trữ tình với rừng núi hùng vỹ, xanh bạt ngàn. Còn gì tuyệt vời hơn khi vừa có chuyến nghỉ dưỡng đúng nghĩa vừa lưu lại được những kỉ niệm của cả chuyến đi.Thật thú vị đúng không nào hãy nhanh tay đặt Tour&nbsp;<strong><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-da-lat-he-thien-vien-truc-lam-nha-tho-don-bosco-tu-sai-gon-2024" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Du lịch Đà Lạt Hè - Thác Pongour - Mongoland - Nhà Thờ Domaine từ Sài Gòn 2024</a>&nbsp;&nbsp;</strong>tại Du Lịch Việt chúng tôi đi và cảm nhận nhiều hơn..&nbsp;</em></span></span></span></span></span></p>
</div>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 16/05/24)</p>

<p>NGÀY 1 |&nbsp;TP.HCM – ĐÀ LẠT (Ăn sáng, trưa) (Ăn chiều tự túc )</p>

<p>&nbsp;</p>

<p><strong>Sáng:</strong>&nbsp;Xe và Hướng Dẫn Viên<strong>&nbsp;Du Lịch Việt</strong>&nbsp;đón Quý khách tại điểm hẹn khởi hành đi&nbsp;<strong>Đà Lạt</strong>.&nbsp;<br />
- 5h30 Sáng tại Công Ty Du Lịch Việt – Số 217 Bis Nguyễn Thị Minh Khai , Quận 1 .&nbsp;<br />
- 6h00 : Nhà Văn Hóa Thanh Niên – Số 4 Phạm Ngọc Thạch, Quận 1&nbsp;<br />
-7h00 Ngã 4 Thủ Đức – Xa Lộ Hà Nội, TP Hồ Chí Minh (không có điểm gửi xe máy)&nbsp;<br />
– Ngã 4 Amata – Biên Hòa, Đồng Nai</p>

<ul>
	<li>Đoàn dùng bữa sáng tại&nbsp;<strong>Ngã Ba Dầu Dây</strong>. Đoàn tiếp tục khởi hành đến&nbsp;<strong>TP. Đà Lạt</strong>. Sau đó tiếp tục hành trình đến với Đà Lạt, xe đi theo đường QL20 trên đường đi HDV sẽ giới thiệu về các thắng cảnh nổi tiếng, Cầu La Ngà, Đá Ba Chồng.</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Dùng cơm trưa tại nhà hàng<strong>.</strong></p>

<p>&nbsp;</p>

<ul>
	<li>Tham quan&nbsp;<strong>Thác Pongour</strong>: Nét quyến rũ hoang sơ, dữ dội nhưng cũng không kém phần thơ mộng, của thác Pongour đã khắc hoạ một khía cạnh đặc trưng của Đà Lạt nguyên bản.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/thac-Pongour-du-lich-viet.jpg" /><br />
<em>Thác Pongour</em><br />
&nbsp;</p>

<p>– Sau đó xe và HDV đưa khách đi trên&nbsp;<strong>cung đường đèo Mimosa</strong>&nbsp;– một trong những trục đường chính dẫn vào thành phố Đà Lạt. So với đèo Ngoạn Mục đầy thách thức, đèo Prenn hiểm trở. Thì đèo Mimosa lại mang vẻ đẹp nữ tính, hiền hòa và quyến rũ du khách gần xa.&nbsp;<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/cung-duong-deo-mimosa-du-lich-viet.jpg" /><br />
<em>Cung đường đèo Mimosa</em><br />
&nbsp;</p>

<p>Sau đó đoàn về khách sạn nhận phòng nghỉ ngơi và thư giãn.&nbsp;<br />
<strong>Tối :&nbsp;</strong><strong>Quý khách dùng bữa tối tự túc,&nbsp;</strong>tự do khám phá chợ Đà Lạt, Thưởng thức những món ngon như: sữa đậu nành nóng, bánh ướt lòng gà, bánh căn Đà Lạt, bánh tráng nướng, món nướng (Hướng dẫn viên chia sẻ quán ngon gửi đến quý khách).<br />
Quý khách tự túc dạo thành phố&nbsp;<strong>Đà Lạt</strong>&nbsp;về đêm, ngắm cảnh&nbsp;<strong>Hồ Xuân Hương</strong>, thưởng thức hương vị cà phê phố núi&nbsp;<em>(chi phí tự túc).</em></p>

<p>&nbsp;</p>

<p>NGÀY 2 |&nbsp;MONGOLAND – GA ĐÀ LẠT (Ăn sáng, trưa) (Ăn chiều tự túc)</p>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.<br />
07h30: Xe đưa quý khách đến với khu du lịch&nbsp;<strong>MongoLand.&nbsp;</strong>Mongo Land: mang vẻ đẹp hoàn toàn mới lạ – một&nbsp;“tiểu Mông Cổ thu nhỏ”&nbsp;trong lòng Đà Lạt được thiết kế như một nông trại với những chiếc lều đủ màu sắc. Tất cả đều được bài trí độc đáo, bắt mắt theo phong cách Mông Cổ đặc trưng. Đến đây, ngoài việc tận hưởng bầu không khí trong lành và chiêm ngưỡng vẻ đẹp của thiên nhiên hùng vĩ, Quý khách sẽ được trải nghiệm:</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/khu-du-lich-MongoLand-du-lich-viet.jpg" /><br />
<em>Khu du lịch MongoLand</em></p>

<ul>
	<li>Thỏa thích chụp ảnh tại lều mông cổ, xích đu, nông trại âu, thảm cỏ, sa mạc xương rồng,…</li>
	<li>Hòa mình vào thế giới của động vật: hươu sao, dê mini, cừu, thỏ Việt, thỏ Holland Lop Hà Lan, thỏ Sư Tử, chim Yến, Chinchilla, sóc Chipmunk,… và tự tay cho thú ăn (thức ăn sẽ được Mongo Land chuẩn bị sẵn cho quý khách).&nbsp;</li>
	<li>Tham gia các hoạt động vui chơi như: trượt cỏ, bắn cung</li>
	<li>Trở thành những cô nàng, chàng trai du mục thực thụ khi diện trên mình trang phục người Mông Cổ. (Chi phí thuê trang phục tự túc).</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Tham quan nhà thờ&nbsp;<strong>Domaine&nbsp;</strong></li>
	<li><strong>Ga Đà Lạt</strong>, nhà ga cổ nhất Đông Dương còn sót lại ở Việt Nam. Quý khách tự do chiêm ngưỡng những đầu máy xe lửa cổ cùng những kiến trúc độc đáo đến từ thập niên 90.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/ga-da-lat-du-lich-viet(1).jpg" /><br />
<em>Ga Đà Lạt</em><br />
&nbsp;</p>

<ul>
	<li><strong>Quảng trường Lâm Viên</strong>&nbsp;với tuyệt tác kiến trúc bằng kính: Bông Hoa Dã Quỳ và Nụ Hoa Atiso.&nbsp;&nbsp;&nbsp;&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/quang-truong-lam-vien-du-lich-tet-am-lich-du-lich-viet.jpg" /><br />
<em>Quảng trường Lâm Viên</em><br />
&nbsp;</p>

<p><strong>Tối:&nbsp;</strong><strong>Quý khách dùng bữa tối tự túc,&nbsp;</strong>tự do khám phá chợ Đà Lạt, Thưởng thức những món ngon như: sữa đậu nành nóng, bánh ướt lòng gà, bánh căn Đà Lạt, bánh tráng nướng, món nướng (Hướng dẫn viên chia sẻ quán ngon gửi đến quý khách).<br />
Quý khách tự túc dạo thành phố&nbsp;<strong>Đà Lạt</strong>&nbsp;về đêm.&nbsp;</p>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;ĐÀ LẠT – TP.HCM (Ăn sáng, trưa)</p>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng, trả phòng.<br />
– Ghé&nbsp;<strong>chợ Đà Lạt</strong>&nbsp;tự do mua sắm các sản phẩm lưu niệm, đặc sản và rau củ quả về làm quà cho gia đình và người thân.<br />
– Tham quan&nbsp;<strong>vườn cà phê chồn và cà phê voi Phú An</strong>&nbsp;– Vườn cà phê chồn và cà phê voi Phú An đã hoàn thiện mô hình phức hợp nhà hàng, điểm dừng chân tham quan có quần thể voi, chồn lớn nhất Việt Nam gồm hơn 2000 chú chồn Hương, 09 chú voi Châu Á &amp; dây chuyền sản xuất cà phê thủ công cho sản lượng 12 tấn cà phê chồn &amp; 15 tấn cà phê voi thành phẩm mỗi năm.<br />
<strong>Trưa:&nbsp;</strong>Khởi hành về TP.HCM, đến Bảo Lộc dùng cơm trưa.&nbsp;<br />
Đoàn khởi hành về HCM .&nbsp;<br />
Trên đường về xe có ghé 1 hoặc 2 điểm để quý khách có thể vệ sinh cá nhân và nghỉ ngơi.<br />
Đến TP.HCM. Kết thúc chuyến đi, chia tay đoàn và hẹn gặp lại Quý khách.</p>
', N'Thành phố Hồ Chí Minh', N'Đà Lạt', CAST(0x0000B1D300000000 AS DateTime), CAST(0x0000B1D500000000 AS DateTime), 30, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (24, N'Du lịch Tây Bắc Hè', 8799000, N'Du lịch Tây Bắc Hè - Hà Nội - Mộc Châu - Điện Biên - Sapa từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Tây Bắc : Hà Nội - Mộc Châu - Cầu Kính Bạch Long - Điện Biên - Sapa - Fansipan</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>5 ngày 4 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>03,10/08; 14,21,28/09/2024</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Di chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Xe du lịch đời mới &amp; Máy Bay khứ hồi</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em>Hành trình khám phá&nbsp;<a href="https://dulichviet.com.vn/du-lich-tay-bac-he-ha-noi-moc-chau-dien-bien-sapa-tu-sai-gon-2024" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Mộc Châu - Cầu Kính Bạch Long - Điện Biên - Sapa - Fansipan</strong></a>&nbsp;chắc chắn sẽ là một hành trình đầy thú vị dành cho quý khách khi&nbsp;lựa chọn&nbsp;<a href="https://dulichviet.com.vn/" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><span style="color:#3498db"><strong>Du Lịch Việt</strong></span></a>&nbsp;chúng tôi là đơn vị đồng hành trong suốt hành trình. Hành trình này sẽ đưa bạn đến với Mộc Châu, Sơn La tại đây, bạn sẽ có cơ hội tham quan rất nhiều những danh lam thắng cảnh tuyệt mĩ như Đèo Pha Đin, Mường Phăng, đồi chè,... hay thưởng thức những món ăn đặc sản ngon nhất vùng như cơm lam, xôi ngũ sắc, trứng kiến,... hay được trải nghiệm tất cả những nét văn hóa đặc sắc và độc đáo của vùng đất này,... Tất cả những điều này bạn sẽ trải nghiệm trong hành trình Tour Tây Bắc Hè&nbsp;đầy thú vị này khi đồng hành cùng chúng tôi!&nbsp;</em></span></span></span></span></span></p>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 16/07/24)</p>

<p>NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI – MỘC CHÂU (Ăn trưa, chiều)</p>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng. Đại diện công ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý khách làm thủ tục đón chuyến bay đi Hà Nội.</p>

<ul>
	<li>Đến sân bay&nbsp;<strong>Nội Bài</strong>, xe đón Đoàn khởi hành đến&nbsp;<strong>Mai Châu</strong>.</li>
	<li>Trên đường đến&nbsp;<strong>Hòa Bình</strong>, Quý khách dừng chân tham quan&nbsp;<strong>Nhà máy thủy điện sông Đà</strong>&nbsp;(còn gọi là thủy điện Hòa Bình)</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/nha-may-song-da-du-lich-viet.jpg" /><br />
<em>Nhà máy thuỷ điện sông Đà</em><br />
&nbsp;</p>

<ul>
	<li>Chiêm ngưỡng toàn cảnh tuyệt đẹp của thung lũng Mai Châu trên đoạn đường&nbsp;<strong>đèo Thung Khe</strong>.</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</p>

<ul>
	<li>Rời&nbsp;<strong>Mai Châu</strong>, Đoàn khởi hành đến&nbsp;<strong>Cao Nguyên Mộc Châu</strong>. Đoàn ngắm nhìn những đồi chè xanh mướt trải dài đến tận bên kia quả đồi</li>
</ul>

<p><strong>Tối:&nbsp;</strong>Dùng cơm chiều. Nghỉ đêm&nbsp;<strong>Mộc Châu.</strong></p>

<p>&nbsp;</p>

<p>NGÀY 2 |&nbsp;MỘC CHÂU - ĐIỆN BIÊN (Ăn sáng, trưa, chiều)</p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</p>

<ul>
	<li>Đoàn khởi hành tham quan&nbsp;<strong>Cầu Kính Bạch Long,</strong>&nbsp;cầu kính mới nhất của Việt Nam. Cây cầu nằm trong quần thể du lịch Mộc Châu Island – Tổ hợp giải trí và nghỉ dưỡng hàng đầu khu vực vùng núi Tây Bắc. Cầu kính Bạch Long có tổng chiều dài 632m.&nbsp;<em>(Chi phí tự túc)</em></li>
</ul>

<p>&nbsp;</p>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/cau-kinh-bach-long-du-lich-viet.jpg" /><br />
Cầu kính Bạch Long</em></p>

<p>&nbsp;</p>

<ul>
	<li>
	<p>Đoàn đến&nbsp;<strong>Cao Nguyên Mộc Châu</strong>. Đoàn ngắm nhìn những đồi chè xanh mướt trải dài đến tận bên kia quả đồi,&nbsp;<br />
	Quý khách đến với Mộc Châu vào những mùa hoa.</p>
	</li>
	<li>Tháng 8,9 tháng của những đồi chè xanh mướt</li>
	<li>Tháng 11.12 mùa hoa cải trắng</li>
	<li>
	<p>Tham quan&nbsp;<strong>Đồi chè Mộc Châu,&nbsp;</strong>nổi lên như một viên ngọc xanh giữa lòng cao nguyên Mộc Châu lộng gió, đồi chè trái tim là sự kết hợp hài hòa giữa tạo hóa và bàn tay con người.&nbsp;<br />
	Đoàn tiếp tục khởi hành đi&nbsp;<strong>Sơn La.</strong><br />
	<strong>Trưa:</strong>&nbsp;Dùng cơm trưa.<br />
	Tiếp tục hành trình tới&nbsp;<strong>Điện Biên</strong>, đoàn dừng chân tại&nbsp;<strong>Đèo Pha Đin</strong>&nbsp;chụp hình, ngắm các bản làng vùng cao từ trên đèo.<br />
	<strong>Tối:</strong>&nbsp;Dùng cơm chiều.&nbsp;<br />
	Nghỉ đêm tại&nbsp;<strong>Điện Biên.</strong></p>
	</li>
</ul>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;ĐIỆN BIÊN – SAPA (Ăn sáng, trưa, chiều)</p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</p>

<ul>
	<li>Đoàn tham quan&nbsp;<strong>Điện Biên Phủ</strong>&nbsp;oai hùng, vang danh lịch sử với:&nbsp;<strong>đồi A1, tượng đài chiến thắng Điện Biên Phủ</strong>, nghĩa trang liệt sĩ<strong>&nbsp;Điện Biên, hầm chỉ huy quân đội Pháp-tướng Đờ Cát (De Castries)</strong>.</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</p>

<ul>
	<li>Đoàn khởi hành đi&nbsp;<strong>Sapa</strong>, trên đường đi qua&nbsp;<strong>Phong Thổ</strong>.</li>
	<li>Đoàn vượt&nbsp;<strong>đèo Ô Quy Hồ (đèo Hoàng Liên Sơn)</strong>&nbsp;một trong những đèo quanh co, hiểm trở, hùng vĩ bậc nhất miền núi phía Bắc.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/deo-o-quy-ho-du-lich-viet.jpg" /><br />
<em>Đèo Ô Quy Hồ</em></p>

<p><strong>Tối:&nbsp;</strong>Đoàn dùng bữa tối.</p>

<ul>
	<li>Nghỉ đêm tại&nbsp;<strong>Sapa.</strong></li>
</ul>

<p>&nbsp;</p>

<p>NGÀY 4 |&nbsp;FANSIPAN - BẢN CÁT CÁT (Ăn sáng, trưa, chiều tự túc)</p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</p>

<ul>
	<li>Đoàn khởi hành tham quan chinh phục&nbsp;<strong>Fansipan</strong>, ngọn núi cao nhất Việt Nam (3.143 m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn&nbsp;<strong>Sa Pa</strong>&nbsp;khoảng 9 km về phía tây nam.</li>
	<li>Du khách chinh phục&nbsp;<strong>"Nóc nhà Đông Dương"</strong>&nbsp; với hệ thống cáp treo Fansipan Sa Pa dài 6,2km đạt 2 kỷ lục Guinness thế giới: Cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và Cáp treo ba dây dài nhất thế giới: 6292.5m.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/du-lich-tet-sapa-du-lich-viet(2).jpg" /><br />
<em>Nóc nhà Đông Dương</em><br />
&nbsp;</p>

<ul>
	<li>Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung lũng Mường Hoa và rừng quốc gia Hoàng Liên từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại&nbsp;<strong>Khu du lịch tâm linh – Chùa Trình</strong>, Chùa Hạ tại ga đến (chi phí cáp treo tự túc).</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/khu-du-lich-tam-linh-du-lich-viet.jpg" /><br />
<em>Khu Du lịch Tâm Linh - Chùa Trình</em></p>

<p><strong>Trưa:&nbsp;</strong>Dùng cơm trưa</p>

<ul>
	<li>Thăm bản&nbsp;<strong>Cát Cát</strong>, tìm hiểu nghề dệt nhuộm của dân tộc H’Mông và trạm&nbsp;<strong>thủy điện Cát Cát thời Pháp&nbsp;</strong>– nơi có 3 dòng nước hợp nhau thành&nbsp;<strong>dòng suối Mường Hoa.</strong></li>
</ul>

<p><strong>Tối:&nbsp;</strong>Dùng cơm tối. Nghỉ đêm tại Sapa.</p>

<p>&nbsp;</p>

<p>NGÀY 5 |&nbsp;SAPA – HÀ NỘI – TP.HCM (Ăn sáng, trưa)</p>

<p>&nbsp;</p>

<p>Sáng: Dùng bữa sáng. Đoàn tự do dạo phố, tham quan nhà thờ đá Sapa hoặc mua sắm đặc sản về làm quà cho gia đình, người thân.<br />
Trưa: Dùng cơm trưa.</p>

<ul>
	<li>Đoàn khởi hành về Hà Nội Xe tiễn đoàn ra sân bay Nội Bài. Đáp máy bay về TP.HCM. Kết thúc chuyến tham quan, chia tay đoàn và hẹn gặp lại.</li>
</ul>
', N'Hà Nội', N'Tây Bắc', CAST(0x0000B1DA00000000 AS DateTime), CAST(0x0000B1DE00000000 AS DateTime), 41, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (25, N'Tour Malaysia - Singapore 5N4Đ', 12499000, N'Du lịch Hè - Tour Malaysia - Singapore 5N4Đ từ Sài Gòn 2024', N'<p>Điểm nhấn hành trình</p>

<table border="0" cellpadding="1%" cellspacing="1%">
	<tbody>
		<tr>
			<td><strong>Hành trình</strong></td>
			<td>
			<p><strong>&nbsp;</strong><strong>Malaysia - Singapore&nbsp;</strong></p>
			</td>
		</tr>
		<tr>
			<td><strong>Lịch trình</strong></td>
			<td><strong>5 ngày 4 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành</strong></td>
			<td><strong>27/07: 15,22/08/2024</strong></td>
		</tr>
		<tr>
			<td><strong>Di chuyển</strong></td>
			<td><strong>Xe du lịch đời mới &amp; Máy bay&nbsp;</strong></td>
		</tr>
		<tr>
			<td><strong>Hãng bay</strong></td>
			<td><strong>VJ825 (0930-1235)/VJ814 (17:55-19:00)</strong></td>
		</tr>
	</tbody>
</table>

<p><em><strong><a href="https://dulichviet.com.vn/du-lich-he-tour-malaysia-singapore-5n4d-tu-sai-gon-2024">Du lịch Hè - Tour Malaysia - Singapore 5N4Đ từ Sài Gòn giá tốt 2024</a>.&nbsp;</strong>Đến với đất nước hồi giáo Malaysia, du khách sẽ đến với quần thể vui chơi giải trí Cao nguyên Genting – với Resort Casino nổi tiếng thế giới, tham quan động Batu, thành phố Malacca và tòa nhà cao nhất Malaysia Twin Tower - Niềm tự hào của người dân Malaysia. Hành trình khám phá tour du lịch hè&nbsp; Malaysia - Singapore 5 ngày sẽ đưa du khách được tận mắt chiêm ngưỡng và trải nghiệm những nét đẹp riêng biệt vô cùng độc đáo của 2 quốc gia. Tại Singapore, du khách sẽ được khám phá Garden by the Bay, nổi tiếng với những siêu cây khổng lồ, nơi Quý khách có thể nghiên cứu các loài cây từ khắp nơi trên thế giới, vui chơi tại Đảo Sentosa, chụp hình lưu niệm cùng tượng Sư Tử Biển, tham quan công viên giải trí Universal…</em></p>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 01/08/24)</p>

<p>NGÀY 1 |&nbsp;TP.HCM – KUALA LUMPUR (Ăn trưa, Ăn tối)</p>

<p>&nbsp;</p>

<p>Quý khách tập trung tại ga quốc tế - sân bay Tân Sơn Nhất làm thủ tục đáp chuyến bay&nbsp;<strong>VJ825 (0930 -1235)</strong>&nbsp;đi Kuala Lumpur.&nbsp;<br />
Đến sân bay quốc tế Kuala Lumpur (Malaysia), đoàn làm thủ tục nhập cảnh.&nbsp;<br />
Xe và hướng dẫn viên đón đoàn đi&nbsp;<strong>ăn trưa nhẹ (fastfood</strong>). Sau đó, đoàn khởi hành đi tham quan&nbsp;:</p>

<ul>
	<li><strong>Thành phố thông minh&nbsp;</strong>Putrayaja -thủ phủ hành chính của Malaysia được xây dựng với nhiều loại hình kiến trúc đặc trưng, thăm quan và chụp hình bên ngoài Dinh Thủ Tướng, Nhà thờ Hồi Giáo, hồ nước nhân tạo.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Singapore-Malaysia/thanh-pho-Putrayaja-du-lich-viet-du-lich-viet.jpg" /><br />
<em>Thành phố thông minh Putrayaja - Thủ phủ hành chính của Malaysia</em><br />
&nbsp;</p>

<ul>
	<li><strong>Ăn tối tại nhà hàng địa phương.&nbsp;</strong>Về khách sạn nhận phòng.</li>
</ul>

<p>Nghỉ đêm tại Kuala Lumpur.</p>

<p>&nbsp;</p>

<p>NGÀY 2 |&nbsp;KUALA LUMPUR - GENTING (Ăn ba bữa)</p>

<p>&nbsp;</p>

<p>Ăn sáng tại khách sạn. Khởi hành tham quan&nbsp;<strong>cao nguyên Genting</strong>, trên đường đi, Quý khách tham quan:</p>

<ul>
	<li><strong>Động Batu</strong>&nbsp;cao 272 bậc thang</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Singapore-Malaysia/du-lich-malaysia-he-tham-quan-dong-batu-gia-tot-du-lich-viet.jpg" /><br />
<em>Động Batu cao 272 bậc thang</em><br />
&nbsp;</p>

<ul>
	<li>Đoàn lên thăm&nbsp;<strong>Genting bằng cáp treo</strong>&nbsp;<em>(trong trường hợp cáp treo bảo trì, đoàn lên Genting bằng xe)&nbsp;</em>– một trung tâm vui chơi giải trí lớn nhất Malaysia. Tự do tham quan khu giải trí Theme Park và thử vận may tại sòng bài casino. Sức hút mạnh nhất của cao nguyên Genting đến từ các sòng bạc (hoạt động hợp pháp).</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Singapore-Malaysia/cao-nguyen-genting-highland-du-lich-viet.jpg" /><br />
<em>Genting bằng cáp treo</em></p>

<ul>
	<li>Chiều tham quan mua sắm tại cửa hàng Chocolate, cửa hàng đặc sản địa phương</li>
	<li>Cửa hàng đá đen phong thủy</li>
	<li>Cung Điện Hoàng Gia (chụp hình bên ngoài)</li>
	<li>Quảng trường Độc Lập</li>
	<li>Tượng Đài Chiến Thắng</li>
	<li>Chụp hình bên ngoài tòa&nbsp;<strong>tháp Đôi Twin Tower Petronas</strong></li>
</ul>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Singapore-Malaysia/du-lich-malaysia-thap-doi-petronas-du-lich-viet.jpg" /></strong><br />
<em>Tháp Đôi Twin Tower Petronas</em></p>

<p>Ăn tối. Về khách sạn nghỉ ngơi.&nbsp;<br />
Nghỉ đêm tại Kuala Lumpur.</p>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;KUALA LUMPUR – MALACCA – JOHOR BARU (Ăn ba bữa)</p>

<p>&nbsp;</p>

<p>Ăn sáng tại khách sạn. Làm thủ tục trả phòng, đoàn khởi hành đi Malacca. Đến&nbsp;<strong>Mallaca,</strong>&nbsp;&nbsp;đoàn tham quan&nbsp;:</p>

<ul>
	<li>Quảng trường Hà Lan</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Singapore-Malaysia/quang-truong-ha-lan-du-lich-viet.jpg" /><br />
<em>Quảng trường Hà Lan&nbsp;</em></p>

<ul>
	<li>Đền Thanh Vân</li>
</ul>

<p>Di Tích Pháo Đài Cổ Bồ Đào Nha<br />
Di Tích Thách Đường Saint Paul<br />
Tiếp tục khởi hành đi Johor Baru. Nhận phòng khách sạn.&nbsp;<br />
Nghỉ đêm tại Johor Baru</p>

<p>&nbsp;</p>

<p>NGÀY 4 |&nbsp;JOHOR BARU - SINGAPORE (Ăn ba bữa)</p>

<p>&nbsp;</p>

<p>Ăn sáng tại khách sạn. Đoàn làm thủ tục trả phòng.&nbsp;<br />
Sau đó, xe đưa đoàn sang&nbsp;<strong>cửa khẩu Tuas Link</strong>&nbsp;qua Singapore. Đến Singapore, đoàn tham quan&nbsp;:</p>

<ul>
	<li><strong>Công viên Merlion</strong>&nbsp;– chụp hình lưu niệm với tượng Sư Tử biển, biểu tượng Đảo quốc Singapore</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Singapore-Malaysia/cong-vien-Merlion-du-lich-viet.jpg" /><br />
<em>Công viên Merlion – chụp hình lưu niệm với tượng Sư Tử biển</em><br />
&nbsp;</p>

<ul>
	<li>Từ công viên sư tử biển, quý khách chụp hình với nhà hát Opera Esplanade – Với kiến trúc rất độc đáo mang hình dáng trái sầu riêng</li>
</ul>

<p><strong>Ăn trưa BBQ</strong>.Sau đó, di chuyển đi&nbsp;<strong>Đảo Sentosa</strong>&nbsp;để chiêm ngưỡng sự kết hợp hài hòa giữa một khu vui c hơi giải trí nhiệt đới và công viên thiên nhiên thu hút du khách từ nhiều nơi trên thế giới. Quý khách sẽ được khám phá các điểm tham quan như:</p>

<ul>
	<li>Thỏa sức chụp ảnh bên ngoài Công viên giải trí hàng đầu thế giới&nbsp;<strong>Universal Studio</strong>. (<em>Chí phí vào cổng tự túc</em>)</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Singapore-Malaysia/cong-vien-universal-du-lich-viet.jpg" /><br />
<em>Công viên Universal Studio</em><br />
&nbsp;</p>

<ul>
	<li>Resorts&nbsp;World&nbsp;– tham quan Casino hiện đại nhất Châu Á tại khách sạn 5 sao lớn nhất Singapore.</li>
	<li><strong>Công viên Hải dương</strong>&nbsp;(S.E.A. Aquarium)&nbsp;– một trong những hồ cá lớn nhất thế giới được UNESCO công nhận. Ở đây, Quý khách chiêm ngưỡng hơn 100,000 động vật biển thuộc hơn 800 loài khác nhau từ khắp nơi trên Thế giới. (<em>Chi phí tự túc khoảng 850.000VNĐ</em>)</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Singapore-Malaysia/cong-vien-hai-duong-du-lich-viet(1).jpg" /><br />
<em>Công viên Hải dương (S.E.A. Aquarium) – Là hồ cá lớn nhất thế giới được UNESCO công nhận</em><br />
&nbsp;</p>

<p>Ăn tối. Nhận phòng khách sạn. Nghỉ đêm tại Singapore.</p>

<ul>
	<li>Hoặc Quý khách nhận phòng nghỉ ngơi hoặc tham gia chương trình 3 trong 1 khám phá Singapore về đêm (chi phí tự túc)</li>
	<li>Khám phá cuộc sống trong lòng đất người dân Singapore bằng hệ thống Tàu điện ngầm MRT.</li>
	<li>Trải nghiệm Du thuyền trên dòng sông Singapore&nbsp;ngắm toàn cảnh Clarke Quay và vịnh Marina Bay.</li>
	<li>Khám phá trung tâm thương mại Suntec City&nbsp;– tìm hiểu Phong Thuỷ Thượng - Phong Thuỷ Hạ đất nước Singapore.</li>
</ul>

<p>&nbsp;</p>

<p>NGÀY 5 |&nbsp;SINGAPORE – TP.HCM ( Ăn sáng,trưa)</p>

<p>&nbsp;</p>

<p>Ăn sáng tại khách sạn. Đoàn làm thủ tục trả phòng, khởi hành tham quan&nbsp;:</p>

<ul>
	<li><strong>Đoàn tham quan và mua sắm tại cửa hàng dầu gió, và xưởng chế tác kim cương</strong></li>
	<li><strong>Garden by the Bay</strong>&nbsp;– kỳ quan của đất nước Singapore, quy tụ hàng nghìn loại thực vật từ khắp nơi trên Thế Giới. Qúy khách chụp hình với những</li>
	<li>cây siêu năng lượng. Tham quan&nbsp;<strong>Vườn Lan Flora Fantasy:</strong>&nbsp;nơi quy tụ nhiều loại lan quý hiếm (<strong><em>đã bao gồm vé vào cổng vườn lan</em></strong>)</li>
</ul>

<p>Đến giờ, xe và hướng dẫn viên đưa đoàn ra sân bay Changi, đoàn tham quan thác nước nổi tiếng của &nbsp;Jewel tại sân bay&nbsp;<strong>Changi</strong><br />
Sau đó, làm thủ tục đáp chuyến bay VJ814 (17:55 -19:00) về TP.HCM.&nbsp; Kết thúc chương trình tham quan, chia tay hẹn gặp lại quý khách.</p>
', N'Thành phố Hồ Chí Minh', N'Singapore', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1C700000000 AS DateTime), 30, 2)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (26, N'Du lịch Côn Đảo ', 5199000, N'Du lịch Côn Đảo Hè - Hoang Sơ - Côn Đảo 3N2Đ từ Sài Gòn giá tốt 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Tour Du lịch Côn Đảo - Hành trình Siêu Tàu Cao Tốc Thăng Long</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>3 ngày 2 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>03,05,10,12,17,19,24,26/07/2024</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Di chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Xe du lịch đời mới &amp; Tàu Cao Tốc</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><strong><a href="https://dulichviet.com.vn/tour-du-lich-he-trong-nuoc/du-lich-con-dao-he-hoang-so-con-dao-3n2d-tu-sai-gon-gia-tot-2024" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Du lịch Côn Đảo Hè - Khám phá hoang Sơ - Côn Đảo 3N2Đ từ Sài Gòn giá tốt 2024</a></strong>. Cùng&nbsp;<a href="https://dulichviet.com.vn/" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Du Lịch Việt</strong></a>&nbsp;(Vietmedia Travel)&nbsp;Nhắc đến Côn Đảo người am hiểu lịch sử sẽ nghĩ ngay đến một trong những nhà tù thực dân gây ám ảnh nhất Đông Dương - nơi gắn liền với dãy "chuồng cọp" tứ bề kẽm gai hay phòng biệt giam không nhìn thấy ánh sáng mặt trời. Chiến tranh đã qua đi, trả lại cho Côn Đảo diện mạo hiền hoà và đầy sức sống vốn có. Du khách đến đây chẳng những được hoà mình cùng vùng nước biển ấm áp, trong lành mà có thể thoả mãn niềm đam mê ăn uống với vô số món hải sản tươi sống, giá rẻ.&nbsp;Thiên nhiên trù phú và thơ mộng là điểm cộng nhưng Côn Đảo vốn dĩ là địa điểm du lịch tâm linh nổi tiếng Việt Nam, với vô số đền, chùa, miếu cùng những giai thoại huyền bí được lưu truyền trong dân gian. Tham gia mang đến cho bạn cái nhìn trực diện về vùng đất đã trải quá quá nhiều thương đau trong quá khứ; đồng thời, tìm hiểu về đời sống tinh thần rất đặc biệt của người dân bản địa.</em></span></span></span></span></span></p>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 14/05/24)</p>

<p>NGÀY 1 |&nbsp;TP. HCM – CÔN ĐẢO (Ăn trưa, chiều)</p>

<p>&nbsp;</p>

<p>5h00:&nbsp;Xe và Hướng dẫn viên đón Quý khách tại điểm hẹn, đoàn khởi hành đi&nbsp;cảng Hiệp Phước – Nhà bè.<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/tour-con-dao-cang-hiep-phuoc-du-lich-viet.jpg" /><br />
<em>Cảng Hiệp Phước – Nhà Bè</em></p>

<p>06h00:&nbsp;Đến&nbsp;cảng đoàn nghỉ ngơi .&nbsp;<br />
07h00:&nbsp;HDV làm thủ tục cho du khách&nbsp;lên&nbsp;Siêu tàu cao tốc Thăng Long&nbsp;di chuyển đến với&nbsp;Côn Đảo, sau hành trình 5 giờ vượt biển trên tàu cao tốc hiện đại và an toàn bậc nhất&nbsp;Việt Nam.<strong><u>&nbsp;</u></strong><br />
12h00 Đến cảng Bến Đầm – Côn Đảo, xe đưa đoàn về thị trấn Côn Sơn. Quý khách sẽ được nghe thuyết minh các điểm trên đường về như:cảng,khu dân cư số 10,cụm đảo nhỏ phía ngoài khơi,đời sống văn hóa và lịch sử về Côn Đảo…<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/cang-ben-dam-con-dao-du-lich-viet.jpg" /><br />
<em>Cảng Bến Đầm – Côn Đảo</em><br />
&nbsp;</p>

<p>Đến thị trấn dùng cơm trưa và nhận phòng, nghỉ ngơi.&nbsp;<br />
<strong>Chiều:</strong>&nbsp;14h00 tham quan Côn Đảo.</p>

<ul>
	<li><strong>Miếu bà Phi Yến:</strong>&nbsp;hay còn có tên chữ là An Sơn Miếu. Bà Phi Yến là thứ phi của chúa Nguyễn Ánh, là 1 trong 2 người phụ nữ bảo trợ tâm linh cho người dân Côn Đảo. Viếng Miếu, nghe kể chuyện về Bà và tìm hiểu câu hát ru “Gió đưa cây cải về trời, rau răm ở lại chịu đời đắng cay”</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/an-son-mieu-du-lich-viet.jpg" /><br />
<em>Miếu bà Phi Yến: hay còn có tên chữ là An Sơn Miếu</em><br />
&nbsp;</p>

<ul>
	<li><strong>Viếng chùa Núi Một:</strong>&nbsp;Hay còn gọi là Vân Sơn Tự.&nbsp;Một công trình mới&nbsp;được trùng tu với kinh phí trên 100 tỷ&nbsp;đồng. Quý khách có thể ngắm toàn cảnh đẹp&nbsp;Côn&nbsp;Đảo từ trên cao,chùa mang một nét kiến trúc miền bắc,toàn bộ chùa làm bằng gỗ là chính.cổng tam quan phí dưới.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/vieng-chua-nui-mot-du-lich-viet.jpg" /><br />
<em>Viếng chùa Núi Một: Hay còn gọi là Vân Sơn Tự</em><br />
&nbsp;</p>

<ul>
	<li><strong>Nghĩa trang Hàng Dương</strong>:Sân hành lễ của nghĩa trang hàng dương được xem là nấm mồ tập thể của cả gần 2000 chiến sĩ đang yên nghỉ tại nơi đây.Vòng hoa viếng đốt nhang ở đài tưởng niệm, các phần mộ liệt sĩ Lê Hồng Phong,Nguyễn An Ninh. Tham quan đền thờ Côn Đảo.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/hang-duong-du-lich-viet.jpg" /><br />
<em>Nghĩa trang Hàng Dương</em><br />
&nbsp;</p>

<ul>
	<li><strong>Viếng mộ cô Sáu:&nbsp;</strong>nổi tiếng linh thiêng và huyền bí,đây là nghĩa trang duy nhất có phong tục viếng vào lúc đêm khuya.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/vieng-mo-chi-vo-thi-sau-du-lich-viet.jpg" /><br />
<em>Viếng mộ Cô Sáu</em></p>

<p>Đoàn về lại khách sạn nghỉ ngơi tự do,ăn tối.<br />
<strong>Tối:</strong>&nbsp;Quý khách viếng mộ nữ anh hùng&nbsp;<strong>Võ Thị Sáu</strong>&nbsp;<em>(chi phí tự túc)</em></p>

<p>&nbsp;</p>

<p>NGÀY 2 |&nbsp;KHÁM PHÁ CÔN ĐẢO (Ăn sáng, trưa, chiều)</p>

<p>&nbsp;</p>

<p><strong>Sáng:</strong>&nbsp;Dùng bữa sáng.&nbsp;<br />
Sáng 7h00 đoàn ăn sáng,xe và hướng dẫn đưa đoàn tham quan.</p>

<ul>
	<li><strong>Bảo tàng Côn Đảo:</strong>&nbsp;là công trình mới được xây dựng gần đây với nguồn vốn đầu tư hơn 65 tỷ đồng, với mục đích nghiên cứu, sưu tầm, trưng bày và bảo quản các hiện vật chiến tranh, phục vụ cho công tác tinh thần củng cố cho công cuộc xây dựng bảo vệ tổ quốc. Nhà bảo tàng được khởi công xây dựng ngày 6/12/2009 và được hoàn thành vào ngày 10/10/2010 để kỷ niệm Đại lễ 1000 năm Thăng Long-Hà Nội.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/bao-tang-con-dao-du-lich-viet(1).jpg" /><br />
&nbsp;</p>

<ul>
	<li><strong>Dinh Chúa Đảo:</strong>&nbsp;Dinh thự là nơi sống và làm việc của 52 đời chúa đảo qua các thời kì thực dân pháp,Việt Nam Cộng Hòa,từ năm 1862 đến giải phóng 1975,hiện đang trưng bày thiết lập lại mô hình nhà chúa đảo cũ.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/dinh-chua-dao-du-lich-viet.jpg" /><br />
<em>Dinh Chúa Đảo: Dinh thự là nơi sống và làm việc của 52 đời chúa đảo&nbsp;</em><br />
&nbsp;</p>

<ul>
	<li><strong>Trại Phú Hải:</strong>&nbsp;Là trại tù cổ kính và lâu đời do thực dân Pháp xây dựng. Nơi đây nổi tiếng với hầm xay lúa, khu biệt giam và khu đập đá Côn Lôn.</li>
	<li><strong>Chuồng cọp kiểu Pháp</strong>: Hay còn gọi là trại Phú Thọ, là tâm điểm nhà tù Côn Đảo. Khám phá hệ thống Chuồng Cọp kiên cố được xây dựng ẩn giữa các tòa nhà như mê cung. Xem chuồng cọp và nghe mô tả các hình thức tra tấn thể xác các tù nhân.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/chuong-cop-kieu-phap-du-lich-viet.jpg" /><br />
<em>Chuồng cọp kiểu Pháp: Hay còn gọi là trại Phú Thọ</em><br />
&nbsp;</p>

<ul>
	<li><strong>Chuồng cọp kiểu Mỹ:</strong>&nbsp;Hay còn gọi là trại Phú Bình với các dãy phòng giam nhỏ hẹp và ẩm thấp được xây dựng vào năm 1971. Nơi đây chủ yếu tra tấn tù nhân về tinh thần, là nơi nhận được tin Sài Gòn giải phóng đầu tiên.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/chuong-cop-kieu-my-du-lich-viet.jpg" /><br />
<em>Chuồng cọp kiểu Mỹ:&nbsp;Hay còn gọi là trại Phú Bình</em></p>

<p>Về khách sạn ăn trưa nghỉ ngơi tại khách sạn.<br />
<strong>Chiều:</strong>&nbsp;Quý khách tiếp tục chương trình tham quan:</p>

<ul>
	<li><strong>Tham quan và chụp hình checkin bãi Đầm Trầu&nbsp;</strong>(cách trung tâm 12 km) - một trong những bãi biển hoang sơ và đẹp nhất Côn Đảo. Trên đường đi viếng thăm Miếu Cậu – nơi thờ Hoàng tử Cải - con chúa Nguyễn Ánh và bà Hoàng Phi Yến.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Con-Dao/checkin-bai-dam-trau-du-lich-viet.jpg" /><br />
<em>Tham quan và chụp hình checkin bãi Đầm Trầu</em><br />
&nbsp;</p>

<ul>
	<li>Quay về trung tâm thị trấn, dùng cơm tối.</li>
	<li>Tối tự do dạo phố biển Côn Đảo.</li>
</ul>

<p><strong>18h00:&nbsp;</strong>Quý khách &nbsp;dùng cơm chiều.<br />
<strong>Tối:</strong>&nbsp;Quý khách tự do dạo phố biển, ngắm biển lúc về đêm.</p>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;CÔN ĐẢO - TPHCM (Ăn sáng, trưa )</p>

<p>&nbsp;</p>

<p>Sáng:&nbsp;Quý khách dùng điểm tâm sáng.<br />
Tự do tham quan mua sắm tại chợ Côn Đảo, đến giờ trả phòng ăn cơm<br />
12h00:&nbsp;Xe đưa đoàn di chuyển ra bến tàu. HDV làm thủ tục thủ tục cho du khách&nbsp;lên&nbsp;Siêu tàu cao tốc Thăng Long&nbsp;di chuyển về lại&nbsp;Vũng Tàu.<br />
17h30:&nbsp;Tàu cập&nbsp;cảng Vũng Tàu, xe đón Quý khách về lại&nbsp;TP. Hồ Chí Minh.<br />
Tối:&nbsp;Tới&nbsp;TP. Hồ Chí Minh, kết thúc chương trình. HDV chia tay và hẹn gặp Quý khách trong những chương trình tour tiếp theo.<br />
Khởi hành về TP.HCM chia tay và hẹn gặp lại.</p>
', N'Thành phố Hồ Chí Minh', N'Côn Đảo', CAST(0x0000B1E600000000 AS DateTime), CAST(0x0000B1E800000000 AS DateTime), 27, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (28, N'Du lịch Tây Nguyên', 4299000, N'Du lịch Buôn Ma Thuột - Pleiku - Kon Tum khu du lịch Măng Đen từ Sài Gòn giá tốt 2024', N'<p>Điểm nhấn hành trình</p>

<table border="0" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td><strong>Hành trình</strong></td>
			<td><strong>Buôn Ma Thuột - Pleiku - Kon Tum khu du lịch Măng Đen</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình</strong></td>
			<td><strong>4 ngày 3 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành</strong></td>
			<td><strong>Thứ 5 hàng tuần</strong></td>
		</tr>
		<tr>
			<td><strong>Vận chuyển</strong></td>
			<td><strong>Xe Du Lịch Đời Mới&nbsp;</strong></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p><em><strong><a href="https://dulichviet.com.vn/du-lich-buon-ma-thuot">Du lịch Buôn Ma Thuột</a></strong>-&nbsp;<strong>Tour Buôn Ma Thuột - Pleiku - Kon Tum khu&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot">du lịch Măng Đen</a>&nbsp;từ Sài Gòn giá tốt 2024</strong>. Nổi tiếng với vẻ đẹp hoang dại của vùng đất đại ngàn, với thác nước trắng xóa và hồ nước đẹp mênh mang trong ánh nắng hoàng hôn, đến với Buôn Mê Thuột, du khách sẽ được khám phá thác D’ray Nur, tham quan Buôn Đôn, ngắm nhìn không gian kiến trúc độc đáo mang đậm bản sắc của dân tộc Tây Nguyên và tận hưởng không gian cà phê đặc sắc, nhâm nhi những ly cà phê đậm đà, thơm ngon vào hàng bậc nhất. Thăm biển hồ T’Nưng – đôi mắt Pleiku, với những hàng thông cổ thụ tuyệt đẹp, cánh đồng chè trải dài xanh ngát. Viếng Đức mẹ Măng Đen, nơi được mệnh danh là Đà lạt thứ 2. Khu&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot"><strong>Du lich Mang Den</strong></a>&nbsp;được phát triển du lịch mạnh mẽ như người anh em Đà Lạt của mình, nhưng ai đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot"><strong>Tour Du lịch Măng Đen</strong></a>&nbsp;rồi thì sẽ khó mà quên được.&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot"><strong>Tour Măng Đen</strong></a>&nbsp;nằm ở độ cao 1200 mét so với mực nước biển, được bao quanh bởi các dãy núi và sở hữu hệ thực vật rừng nguyên sinh đa dạng. Bên cạnh đó, thị trấn Măng Đen cũng có nền khí hậu miền núi ôn hòa mát dịu quanh năm và canh quan đẹp đẽ nên được ví như là Đà Lạt của vùng Bắc Tây Nguyên.</em></p>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 01/02/24)</p>

<p><strong>NGÀY 1 |&nbsp;TP.HỒ CHÍ MINH – THÁC DRAY NUR – BUÔN MA THUỘT (ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng:&nbsp;Xe và Hướng Dẫn Viên Du Lịch Việt đón Quý khách tại điểm hẹn khởi hành đi Buôn Ma Thuột.</strong></p>

<ul>
	<li>Trên đường, đoàn nghe thuyết minh về các địa danh nổi tiếng đi ngang qua như Đồng Xoài, Sóc Bom Bo, Bù Đăng và cảnh núi rừng hùng vĩ.</li>
</ul>

<p><strong>Trưa: Dùng cơm trưa.</strong></p>

<ul>
	<li>Đoàn dừng chân tham quan thác&nbsp;<strong>D’ray Nur</strong>&nbsp;với vẻ đẹp thơ mộng và bí ẩn của ngọn thác hùng vĩ nhất Tây Nguyên.</li>
</ul>

<p>&nbsp;</p>

<p><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot" target="_top"><img alt="Thác D''Ray Nur" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Buon-Ma-Thuot/du-lich-buon-ma-thuot-tham-quan-thac-d''ray-nur-du-lich-viet.jpg" /></a><br />
<em>Thác D''ray Nur</em><br />
&nbsp;</p>

<ul>
	<li>Đoàn tiếp tục hành trình đến&nbsp;<strong>TP. Buôn Ma Thuột.</strong></li>
</ul>

<p><strong>Tối: Dùng cơm tối. Nghỉ đêm tại Buôn Ma Thuột.</strong></p>

<ul>
	<li>Quý khách tự do nghỉ ngơi tại khách sạn hoặc dạo phố núi, thưởng thức đặc sản “ly cà phê Ban Mê”, mua sắm tại chợ đêm.</li>
</ul>

<p><strong>NGÀY 2 |&nbsp;BUÔN MA THUỘT – PLEIKU – CHÙA MINH THÀNH (ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng: Dùng bữa sáng.</strong></p>

<ul>
	<li>Đoàn tham quan&nbsp;<strong>Buôn Ðôn</strong>, nơi chung sống của cộng đồng các sắc tộc: Ê Ðê, M’nông, Gia rai, Lào, Thái, Quý khách được dịp trải nghiệm cảnh sinh hoạt của buôn làng, thưởng thức những món ăn đặc sản của vùng Tây Nguyên trù phú (chi phí tự túc) và đặc biệt là được ngắm ngôi nhà dài hàng trăm mét của đồng bào Tây Nguyên.</li>
	<li>Quý khách trải nghiệm cảm giác thú vị với cái lắc lư nghiêng ngã của&nbsp;<strong>cầu treo Buôn Đôn</strong>, với chiếc cầu treo dài trên 100m bắc ngang lưng chừng những rặng si già vượt qua dòng sông dữ đến ốc đảo Ea Nô, với bãi tắm tiên, hệ thống nhà hàng, nhà nghỉ ...</li>
	<li>Tham quan&nbsp;<strong>nhà sàn cổ</strong>&nbsp;được xây dựng theo kiến trúc Lào đã tồn tại trên 120 năm, tham quan&nbsp;<strong>mộ Vua săn voi “KhunJuNốp”</strong>&nbsp;và nghe chuyện kể về Vua săn voi.</li>
</ul>

<p><strong>Trưa: Đoàn dùng cơm trưa.</strong></p>

<ul>
	<li>Đoàn khởi hành đi Pleiku. Tham quan&nbsp;<strong>Biển hồ T’Nưng – Đôi mắt Pleiku</strong>&nbsp;làm say đắm lòng người bởi vẻ đẹp hoang sơ, thơ mộng của hồ tự nhiên đẹp nhất tại Tây Nguyên.</li>
</ul>

<p>&nbsp;</p>

<p><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot" target="_top"><img alt="" id="Biển Hồ T''Nưng" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Buon-Ma-Thuot/du-lich-buon-ma-thuot-tham-quan-bien-ho-t''nung-du-lich-viet.jpg" /></a><br />
<em>Biển hồ T’Nưng – Đôi mắt Pleiku</em><br />
&nbsp;</p>

<ul>
	<li>Đoàn ghé thăm&nbsp;<strong>Chùa Minh Thành</strong>, với kiến trúc mang hơi thở của xứ&nbsp;<strong>Phù Tang</strong>&nbsp;cùng những mái chóp uốn cong điển hình. Sau những chặng đường dài, Quý khách như được xua tan mọi căng thẳng, mệt nhọc khi được trải nghiệm không khí nhẹ nhàng, bình yên của chốn bồng lai tiên cảnh.</li>
</ul>

<p><strong>Tối: Đoàn dùng cơm tối. Nghỉ đêm tại Pleiku.</strong></p>

<p><strong>NGÀY 3 |&nbsp;KHU DU LỊCH MĂNG ĐEN – CẦU TREO KONKLOR (ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng: Dùng bữa sáng.</strong></p>

<ul>
	<li>Đoàn khởi hành đến&nbsp;<strong>Măng Đen</strong>&nbsp;– nơi được ví như&nbsp;<strong>Đà Lạt</strong>&nbsp;thứ 2 trên đỉnh Trường Sơn hùng vỹ.</li>
	<li>Tại đây, Quý khách tham quan: Nét hoang sơ, thơ mộng của&nbsp;<strong>hồ Đăk Ke</strong>, lạc lối trong khu rừng thần tiên với không gian lành lạnh, tiếng chim ríu rít và tiếng thác đổ của&nbsp;<strong>thác Pa Sỹ</strong>, được bao bọc bởi cả một mảng cây xanh xung quanh.</li>
	<li>Viếng thăm khu hành hương&nbsp;<strong>Đức Mẹ Măng Đen</strong>, nơi nổi tiếng linh thiêng, đón hàng trăm lượt du khách mỗi ngày.</li>
</ul>

<p><strong>Trưa: Dùng cơm trưa.&nbsp;</strong></p>

<ul>
	<li>Tham quan&nbsp;<strong>Thành phố Kon Tum</strong>, với&nbsp;<strong>Cầu treo Konklor</strong>, cây cầu dây văng nổi bật sắc cam, nối liền hai bờ Đăkbla. Ngắm nhìn nhà rông Kon Klor, mang đậm kiến trúc Ba Na và văn hóa truyền thống Tây Nguyên.&nbsp;</li>
</ul>

<p><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot" target="_top"><img alt="" id="Cầu treo Konklor" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Buon-Ma-Thuot/tour-buon-ma-thuot-di-qua-cau-treo-konklor-du-lich-viet.jpg" /></a><br />
<em>Cầu treo Konklor</em><br />
&nbsp;</p>

<ul>
	<li>Ghé thăm&nbsp;<strong>Nhà thờ Chính Tòa (Nhà thờ gỗ)</strong>&nbsp;với tuổi đời hơn 100 năm, được xây dựng năm 1913 theo phương pháp thủ công, kết hợp giữa phong cách Roman và kiểu nhà sàn truyền thống của người Bana nơi đây.</li>
	<li>Đoàn trở về&nbsp;<strong>Pleiku</strong>, tham quan&nbsp;<strong>Biển Hồ chè</strong>&nbsp;với hàng thông cổ thụ tuyệt đẹp và cánh đồng chè trải dài xanh ngát.</li>
</ul>

<p><strong>Tối: Đoàn dùng cơm tối. Nghỉ đêm tại Pleiku.</strong></p>

<p><strong>NGÀY 4 |&nbsp;PLEIKU – BUÔN MA THUỘT – TP. HCM (ăn sáng, trưa)</strong></p>

<p><strong>Sáng:</strong>&nbsp; Dùng bữa sáng.</p>

<ul>
	<li>Đoàn khởi hành về thành phố cao nguyên&nbsp;<strong>Buôn Ma Thuột</strong>.&nbsp;</li>
	<li>Đoàn checkin&nbsp;<strong>“Song tượng Thịnh vượng”</strong>&nbsp;– biểu tượng thủ phủ 5 tỉnh Tây Nguyên, được biết đến là công trình điểm nhấn mới nhất ở Buôn Ma Thuột. Biểu tượng hình ảnh đàn voi, dấu ấn đặc trưng của văn hoá núi rừng với chú voi đầu đàn hùng dũng đang bước chân về vùng đất mới, trù phú, ấm no và hạnh phúc</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Dùng cơm trưa tại nhà hàng ở&nbsp;<strong>Buôn Ma Thuột</strong>.</p>

<ul>
	<li>Đoàn tiếp tục hành trình về TP.HCM, kết thúc chuyến đi, chia tay đoàn và hẹn gặp lại Quý khách.</li>
</ul>
', N'Thành phố Hồ Chí Minh', N'Tây Nguyên', CAST(0x0000B1E300000000 AS DateTime), CAST(0x0000B1C700000000 AS DateTime), 45, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (29, N'Du lịch Hàn Quốc', 14999000, N'Du lịch Hè - Tour Hàn Quốc - Seoul - Everland - Đảo Nami 4 ngày từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; outline:0px; width:793.328px">
	<tbody>
		<tr>
			<td style="width:118.992px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Seoul - Everland - Đảo Nami - Tháp Namsan&nbsp;</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>4 ngày 4 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>03,17/08; 14,25/09/2024</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Vận chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Xe du lịch đời mới &amp; Máy bay khứ hồi</strong></span></span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p><em><a href="https://dulichviet.com.vn/loai-hinh-du-lich/du-lich-he-tour-han-quoc-seoul-everland-dao-nami-4-ngay-tu-sai-gon-2024"><strong>Du lịch Hè - Tour Hàn Quốc - Seoul - Everland - Đảo Nami 4 ngày từ Sài Gòn 2024</strong></a>.Tour Du lịch Hàn Quốc khám phá đảo Nami như hòn đảo ngọc của Hàn Quốc. Dù có đến đây vào mùa nào thì bạn cũng sẽ không khỏi ngây ngất trước vẻ đẹp nơi này. Mùa xuân có hoa anh đào nở, mùa hạ nắng vàng chiếu lên hàng cây xanh mướt, mùa thu cực lãng mạn với lá thu vàng rợp trời, còn mùa đông là những thảm tuyết trắng muốt. Chẳng thế mà nơi đây được lấy làm bối cảnh của rất nhiều bộ phim tình yêu lãng mạn của Hàn Quốc. Thật thú vị đúng không nào hãy nhanh tay nhắc máy lên gọi cho chúng tôi&nbsp;<strong>Hotline: 1900 1177&nbsp;</strong>để nhận được sụ tư vấn cụ thể hơn và lịch trình đi trong chuyến tour du lịch Hàn Quốc mùa hè 2024 này&nbsp;nhé!</em>&nbsp;</p>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 11/06/24)</p>

<p>|&nbsp;Đêm trước ngày khởi hành : TP. HỒ CHÍ MINH – SEOUL</p>

<p><strong>23h15&nbsp;</strong>Trưởng đoàn CÔNG TY DU LỊCH đón Quý khách tại cổng D2, ga đi quốc tế phi trường Tân Sơn Nhất làm thủ tục đáp chuyến bay&nbsp;<strong><em>VJ862 (02:25 – 09:40)</em></strong>&nbsp;khởi hành đi Seoul – thủ đô Hàn Quốc. Quý khách nghỉ đêm trên máy bay. (<em>Quý khách có nhu cầu đặt ăn trên máy bay, vui lòng báo với công ty trước 72h so với giờ bay – giá khoảng 160.000đ).</em></p>

<p><strong>NGÀY 1 |&nbsp;TP. HỒ CHÍ MINH – SEOUL (Ăn sáng,trưa, tối)</strong></p>

<p>Đến sân bay quốc tế Incheon, xe và hướng dẫn viên địa phương đón đoàn,&nbsp;<strong>ăn sáng.&nbsp;</strong>Sau đó, đoàn khởi hành tham quan:</p>

<ul>
	<li><strong>Đảo Nami</strong>&nbsp;hòn đảo mang vẻ đẹp bình yên nhờ phong cảnh thiên nhiên hữu tình, thơ mộng. Đây là nơi được lựa chọn làm bối cảnh quay bộ phim truyền hình nổi tiếng “Bản tình ca mùa đông”, cũng như nhiều bộ phim Hàn nổi tiếng khác.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Han-Quoc/dao-nami-mua-tet-du-lich-viet.jpg" /><br />
<em>Tour du lịch Hè Hàn Quốc 2024 tham quan&nbsp;</em><em>Đảo Nami</em></p>

<p>Đoàn dùng cơm trưa tại nhà hàng với&nbsp;<strong>món Gà Nướng</strong></p>

<ul>
	<li>Đoàn tiêp tục tham quan&nbsp;<strong>Tháp N Seoul</strong>&nbsp;– tọa lạc trên núi Namsan mang đến cho du khách những góc nhìn toàn cảnh của thành phố, và đã trở thành một biểu tượng của Seoul. (Không bao gồm phí thang máy lên tháp).</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Han-Quoc/du-lich-han-quoc-tet-tham-quan-thap-tinh-yeu-du-lich-viet.jpg" /><br />
<em>Du lich He tham quan Tháp N Seoul</em><br />
&nbsp;</p>

<ul>
	<li><strong>Đoàn ăn tối với món lầu cơm trộn.</strong></li>
</ul>

<p>Đoàn về nhận phòng&nbsp;<strong>khách sạn 4*</strong>&nbsp;nghỉ ngơi.</p>

<p><strong>NGÀY 2 |&nbsp;SEOUL - EVERLAND (Ăn Ba Bữa)</strong></p>

<p>Ăn sáng tại khách sạn, đoàn khởi hành tham quan:</p>

<ul>
	<li>Mua sắm ở Cửa hàng mỹ phẩm</li>
	<li>Tham quan bảo tàng Rong Biển<strong>&nbsp;- Trải nghiệm làm Kimchi, mặc áo Hanbook.</strong></li>
</ul>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Han-Quoc/trai-nghiem-mac-ao-Hanbok-du-lich-viet.jpg" /></strong></p>

<p><em>Mặc áo Hanbook</em><br />
&nbsp;</p>

<p>Đoàn trải nghiệm làm món&nbsp;<strong>Gà Hầm Sâm</strong>&nbsp;và tự thưởng thức bữa trưa tại đây.</p>

<ul>
	<li>Sau đó, khởi hành đến&nbsp;<strong>Công viên giải trí Everland</strong>&nbsp;– một trong những thiên đường giải trí lớn nhất ở Seoul, nơi quý khách có thể tự do tham quan, chụp ảnh, và tham gia tât cả các trò chơi.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Han-Quoc/cong-vien-everland-du-lich-viet.jpg" /><br />
<em>Công viên giải trí Everland</em><br />
&nbsp;</p>

<p>Đoàn khởi hành đi xem&nbsp;<strong>Drawing Show</strong>&nbsp;- Du khách sẽ được chiêm ngưỡng không chỉ tác phẩm hội họa mà còn được kết hợp các yếu tố hiện đại như ánh sáng, công nghệ 3D, đồ họa, âm nhạc,…&nbsp;<br />
Ăn tối với&nbsp;<strong>món thịt nướng.&nbsp;</strong>Đoàn về khách sạn nghỉ ngơi</p>

<p>&nbsp;</p>

<p><strong>NGÀY 3 |&nbsp;SEOUL (Ăn Ba Bữa)</strong></p>

<p>Ăn sáng tại khách sạn.</p>

<ul>
	<li>Đoàn khởi hành đi mua sắm tại&nbsp;<strong>Cửa hàng thảo dược tinh dầu thông đỏ</strong>.</li>
	<li>Trung tâm&nbsp;<strong>nhân sâm</strong>&nbsp;chính phủ nổi tiếng của Hàn Quốc, cửa hàng sâm tươi</li>
</ul>

<p>Ăn trưa với món&nbsp;<strong>cá nướng</strong>.</p>

<ul>
	<li>Đoàn tham quan&nbsp;<strong>Cung điện Hoàng gia Gyeongbok</strong>&nbsp;- nằm ở phía bắc thủ đô Seoul đây là cung điện chính và lớn nhất của Ngũ Cung được xây dựng vào năm 1395 dưới triều đại JOSEON.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Han-Quoc/cung-dien-hoang-gia-Gyeongbok-du-lich-viet.jpg" /><br />
<em>Cung điện Hoàng gia Gyeongbok</em><br />
&nbsp;</p>

<ul>
	<li><strong>Dinh Tổng thống&nbsp;</strong><strong>(</strong><strong>Blue House</strong><strong>)</strong>&nbsp;– nơi Tổng thống Hàn Quốc đang&nbsp; sinh sống và làm việc. (chụp hình bên ngoài)</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Han-Quoc/dinh-tong-thong-du-lich-viet.jpg" /><br />
<em>Dinh Tổng Thống</em><br />
&nbsp;</p>

<ul>
	<li><strong>Viện bảo tàng quốc gia</strong><strong>&nbsp;-</strong>&nbsp;Là bảo tàng quốc gia duy nhất về văn hóa dân gian, trưng bày khoảng 113.343 hiện vật về đời sống văn hóa.</li>
	<li><strong>Làng cổ Bukchon</strong></li>
	<li>Tham quan&nbsp;<strong>Thư viện Starfield</strong>, thư viện bày trí các giá sách khổng lồ nằm trong trung tâm thương mai Coex Mall ở Gangnam</li>
	<li>Đoàn mua sắm tại&nbsp;<strong>Chợ Dongdaemun</strong>&nbsp;- là một khu thương mại lớn bao gồm các khu chợ truyền thống và các trung tâm mua sắm bao phủ toàn bộ khu vực xung quanh Dongdaemun, một địa điểm nổi tiếng tại&nbsp;Hàn Quốc. Đây là khu mua sắm sỉ và lẻ lớn nhất của&nbsp;Hàn Quốc&nbsp;gồm 26 trung tâm mua sắm, 30.000 cửa hàng đặc sản, và 50.000 nhà sản xuất. Hàng hóa ở đây bao gồm lụa và vải, quần áo, giày dép và các phụ kiện, thiết bị điện tử, đồ da, đồ thể thao, văn phòng phẩm, các sản phẩm thú cưng và đồ chơi và.Ăn tối. Nghỉ ngơi tại khách sạn.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Han-Quoc/cho-Dongdaemun-du-lich-viet(1).jpg" /><br />
<em>Tour Han Quoc mua He 2024 tham qun Chợ Dongdaemun</em></p>

<p>Ăn tối tại nhà hàng. Nghỉ ngơi tại khách sạn</p>

<p><strong>NGÀY 4 |&nbsp;SEOUL - TP.HCM (Ăn ba bữa)</strong></p>

<p>Quý khách trả phòng và ăn sáng. Đoàn khởi hành tham quan:</p>

<ul>
	<li><strong>Quảng trường Gwanghoamun -&nbsp;</strong>được coi là quảng trường có vị trí đẹp nhất giữa các cung điện với nhau, và cũng là nơi chứng kiến rất nhiều mấu chốt quan trọng xuyên suốt quá trình lịch sử của Hàn Quốc.&nbsp;Tham quan suối nhân tạo Cheonggyecheon.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/Han-Quoc/quang-truong-Gwanghoamun-du-lich-viet.jpg" /><br />
<em>Quảng trường Gwanghoamun - được coi là quảng trường có vị trí đẹp nhất</em><br />
&nbsp;</p>

<ul>
	<li><strong>Suối nhân tạo Cheonggychoen.</strong></li>
</ul>

<p>Ăn trưa. Sau đó, đoàn tự do Mua sắm tại Cửa hàng miễn thuế. &nbsp;&nbsp;<br />
Đoàn ra sân bay Incheon, trên đường đoàn ghé thăm&nbsp;<strong>siêu thị bách hóa&nbsp;</strong><strong>Myengpum</strong>.<br />
<strong>Ăn tối với set bánh ngọt</strong>. Sau đó, Hướng dẫn viên làm thủ tục để Qúy khách đáp chuyến bay&nbsp;<strong><em>VJ861 (20:55 – 00:10)&nbsp;</em></strong>về phi trường Tân Sơn Nhất – TP. HCM. (<em>Quý khách có nhu cầu đặt ăn trên máy bay, vui lòng báo với công ty trước 72h so với giờ bay – giá khoảng 160.000đ)</em>&nbsp;<br />
Sau khi làm thủ tục nhập cảnh và nhận lại hành lý cá nhân, trưởng đoàn CÔNG TY DU LỊCH chào tạm biệt Quý khách. Kết thúc chuyến tham quan. Chia tay Quý khách và hẹn gặp lại.</p>
', N'Thành phố Hồ Chí Minh', N'Hàn Quốc', CAST(0x0000B1EA00000000 AS DateTime), CAST(0x0000B1ED00000000 AS DateTime), 20, 2)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (30, N'Du lịch Trung Quốc', 20999000, N'Du lịch Trung Quốc Hè - Côn Minh - Đại Lý - Shangrila - Lệ Giang - Băng Xuyên từ Sài Gòn 2024', N'<div class="title" style="border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px"><span style="font-size:20px"><strong>Điểm nhấn hành trình</strong></span></div>

<div class="content" style="padding:0px">
<table cellspacing="0" style="-webkit-text-stroke-width:0px; background-color:#ffffff; border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; color:#333333; font-family:Muli,sans-serif; font-size:14px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:400; letter-spacing:normal; max-width:100%; orphans:2; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-decoration-thickness:initial; text-transform:none; white-space:normal; widows:2; width:793.328px; word-spacing:0px">
	<tbody>
		<tr>
			<td style="width:118.992px"><span style="color:#555555"><span style="background-color:#ffffff"><strong>Hành trình</strong></span></span></td>
			<td><span style="color:#555555"><span style="background-color:#ffffff"><strong>Trung Quốc - Côn Minh - Đại Lý - Shangrila - Lệ Giang - Băng Xuyên</strong></span></span></td>
		</tr>
		<tr>
			<td><span style="color:#555555"><span style="background-color:#ffffff"><strong>Lịch trình</strong></span></span></td>
			<td><span style="color:#555555"><span style="background-color:#ffffff"><strong>6 ngày 5 đêm</strong></span></span></td>
		</tr>
		<tr>
			<td><span style="color:#555555"><span style="background-color:#ffffff"><strong>Khởi hành</strong></span></span></td>
			<td><span style="color:#555555"><span style="background-color:#ffffff"><strong>15,29/08; 12/09/2024</strong></span></span></td>
		</tr>
		<tr>
			<td><span style="color:#555555"><span style="background-color:#ffffff"><strong>Vận chuyển</strong></span></span></td>
			<td><span style="color:#555555"><strong>Xe du lịch đời mới &amp; Máy bay khứ hồi</strong></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial"><span style="color:#333333"><span style="background-color:#ffffff"><em><strong><a href="https://dulichviet.com.vn/du-lich-nuoc-ngoai/du-lich-trung-quoc-mua-xuan-con-minh-dai-ly-shangrila-le-giang-bang-xuyen-tu-sai-gon-2024?idschedule=98347" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Du lịch Trung Quốc Hè - Côn Minh - Đại Lý - Shangrila - Lệ Giang - Băng Xuyên từ Sài Gòn 2024</a></strong>. Shangri-La là một địa điểm hư cấu được miêu tả trong tiểu thuyết năm 1933, của nhà văn Anh James Hilton. Trong tiểu thuyết này, "Shangri-La" là một thung lũng huyền thoại, dẫn đến từ một tu viện Lạt-ma giáo, nằm trong vùng phía tây cuối dãy núi Côn Lôn. Shangri-La đã trở nên đồng nghĩa với bất kỳ thiên đường hạ giới nào, đặc biệt với xã hội không tưởng Hymalaya huyền thoại - một vùng đất hạnh phúc vĩnh viễn, biệt lập với thế giới bên ngoài Thành cổ Đại Lý – phía nam thành cổ đại lý là nước xanh biếc của hồ Nhĩ Hải, phía Tây là quanh năm cây cối tươi xanh của dãy núi Thương Sơn, nơi đây chính là nơi du khách thường hay nhắc đến với cảnh Phong hoa tuyết nguyệt , trải nghiệm cảm giác cổ quốc Nam triệu nhã tình. Hành trình&nbsp;Côn minh - Đại Lý - Shangrila - Lệ Giang - Băng Xuyên đến với&nbsp;Băng Xuyên quý khách sẽ đi cáp treo tham quan – cao 4.506m so với mặt nước biển. Tại đây, quý khách chiêm ngưỡng khung cảnh hùng vĩ của thiên nhiên. Ngắm nhìn đỉnh núi quanh năm tuyết phủ, là biểu tượng uy nghi và linh thiêng của những người dân địa phương. Sau khi đi cáp treo, quý khách sẽ được dịp khám phá ngọn núi Tuyết Ngọc Long với đỉnh cao nhất là 5.596m – là một danh thắng nổi tiếng tại Lệ Giang, nơi thu hút hàng triệu lượt khách tham quan mỗi năm. Quý khách có thể từng bước chinh phục từ độ cao 4.506m – nơi cáp treo đưa quý khách ghé tới, tiếp tục chinh phục độ cao 4.576mvà 4.680m theo con đường với những bậc gỗ lên cao, như những bậc thang dẫn quý khách đi về thế giới của các vị thần.&nbsp;</em></span></span></span></span></p>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 06/08/24)</p>

<p><strong>NGÀY 1 |&nbsp;TP.HCM - CÔN MINH (Ăn nhẹ trên máy bay)</strong></p>

<p>Quý khách tập trung tại sân bay Tân Sơn Nhất, ga đi quốc tế, làm thủ tục đáp chuyến bay&nbsp;<strong>MU9634 (19:10 - 23:00)</strong>&nbsp;đi Côn Minh. Đến Côn Minh – thủ phủ của Vân Nam Trung Quốc, xe và hướng dẫn viên đón đoàn, sau đó về khách sạn nhận phòng. Nghỉ đêm tại Côn Minh.</p>

<p><strong>NGÀY 2 |&nbsp;CÔN MINH - ĐẠI LÝ (340km ~4h) (Ăn ba bữa)</strong></p>

<p>Ăn sáng tại khách sạn. Làm thủ tục trả phòng. Đoàn khởi hành đi Đại Lý bằng xe theo đường cao tốc, đoàn tham quan:</p>

<ul>
	<li>Khu du lịch cấp 4A của Trung Hoa là&nbsp;<strong>Thành cổ Đại Lý</strong>&nbsp;–&nbsp;phía nam thành cổ đại lý là nước xanh biếc của hồ Nhĩ Hải, phía Tây là quanh năm cây cối tươi xanh của dãy núi Thương Sơn, nơi đây chính là nơi du khách thường hay nhắc đến với cảnh Phong hoa tuyết nguyệt , trải nghiệm cảm giác cổ quốc Nam triệu nhã tình.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/thanh-co-dai-ly-du-lich-viet(1).jpg" /><br />
<em>Thành Cổ Đại Lý</em></p>

<ul>
	<li><strong>Khu phố Tây</strong>&nbsp;nơi có nhiều nhà hàng, quán café, cửa hàng lưu niệm…với biển hiệu, menu bằng tiếng Anh nhưng cảnh quan vẫn mang đậm phong cách Trung Hoa&nbsp;<em>(Quý khách tự túc chi phí xe điện nếu có nhu cầu)</em></li>
	<li>Ăn tối tại nhà hàng địa phương. Đoàn nhận phòng khách sạn. Nghỉ đêm tại Đại Lý.</li>
</ul>

<p><strong>NGÀY 3 |&nbsp;ĐẠI LÝ - SHANGRILA (180km ~2h) (Ăn ba bữa)</strong></p>

<p>Ăn sáng tại khách sạn. Làm thủ tục trả phòng. Đoàn khởi hành đi&nbsp;<strong>Shangrila</strong>&nbsp;bằng xe. Trên đường đi, đoàn tham quan:</p>

<ul>
	<li><strong>Khe Hổ Nhảy</strong>&nbsp;- Khe Hổ Khiêu - Hổ nhảy(Tiger Leaping Gorge): thẳng cảnh thiên nhiên kỳ thú này là một hẻm núi sâu, dài và hẹp nhất thế giới. Nơi đây dòng sông Trường Giang bị chặn bởi hai dãy núi cao Ngọc Long (5600m) và Habar (5396m), đột ngột thót nhỏ lại một đoạn dài 16km, chiều sâu tính từ đỉnh núi xuống đáy hẻm là gần 3900m. Ngay đoạn hẹp nhất có một phiến đá lớn án ngữ, nước chảy xiết xô vào phiến đá tạo nên những âm vang trong khe núi&nbsp;<em>(</em><em>Quý khách tự túc chi phí thang máy nếu có nhu cầu)</em></li>
</ul>

<p>&nbsp;</p>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/kh-ho-nhay-du-lich-viet.jpg" /></em><br />
<em>Khe Hổ Nhảy</em><br />
&nbsp;</p>

<p>Ăn trưa, đoàn khởi hành đi Lệ Giang bằng xe - thành phố xinh đẹp trên cao nguyên Vân Nam, được thiên nhiên ban tặng nhiều cảnh quan thơ mộng và trữ tình, nơi từng là cố đô của vương quốc Naxi.</p>

<ul>
	<li><strong>Tu Viện Songzalin</strong>- hay còn gọi là tu viện Tùng Tán Lâm là hình ảnh thu nhỏ của Cung điện Potala (Tây Tạng) nằm trên độ cao 3200m.Nổi bật với những mái nhọn vàng rực rỡ là một ngôi đền lớn nhất Vân Nam, nơi tập trung những nét văn hóa tiêu biểu của người Tạng,được xây dựng từ năm 1679 bởi vị Lạt ma thứ 5, hiện vẫn được bảo tồn nguyên vẹn.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/tu-vien-Songzanlinsi-du-lich-viet.jpg" /><br />
<em>Tu viện Songzalin</em><br />
&nbsp;</p>

<ul>
	<li><strong>&nbsp;Phố cổ Trung Điện&nbsp;(Dukezong</strong>) thành phố ánh trăng đẹp lạ lùng được xây dựng theo Shangbala - một đất nước lý tưởng được mô tả trong kịch bản Phật giáo. Với lịch sử khoảng 1.300 năm, Phố cổ Dukezong từng trải qua cảnh chiến đấu trong quá khứ, sự thịnh vượng của Con đường Trà và Ngựa cổ đại, và sự phát triển của Shangri-La. Ở Thành Cổ còn có Tháp Kinh Luân phải ít nhất 6-8 người góp sức để xoay được tháp. Du khách rất hào hứng khi có thể tự xoay tháp Kinh Luân khi đến đây.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/co-thanh-Dukesong-du-lich-viet.jpg" /><br />
<em>Phố Cổ Trung Điện</em></p>

<ul>
	<li>Ăn tối. Nhận phòng khách sạn. Nghỉ đêm tại Shangrila.</li>
</ul>

<p><strong>NGÀY 4 |&nbsp;SHANGRILA - LỆ GIANG (Ăn ba bữa)</strong></p>

<p>Ăn sáng tại khách sạn. Làm thủ tục trả phòng. Đoàn khởi hành về Lệ Giang, trên đường đoàn ghé thăm:</p>

<ul>
	<li><strong>Công Viên Hắc Long Đàm</strong>&nbsp;– nơi Dòng nước từ núi băng Ngọc Long đổ về nuôi sống vùng đất Lệ Giang. Từ công viên Hắc Long có thể ngắm sự hùng vĩ của núi tuyết ngàn năm, trong khung cảnh thanh bình của nước hồ phẳng lặng.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/cong-vien-hac-long-dam-viet-media-travel.jpg" /><br />
<em>Công viên Hắc Long Đàm</em></p>

<p>Ăn trưa tại nhà hàng địa phương. Sau đó, tiếp tục tham quan:</p>

<ul>
	<li><strong>Thành Cổ Lệ Giang</strong>&nbsp;– còn được gọi là Thành cổ Đại Nghiêm hay Thành cố Thúc Hà (ShuHe) – được UNESCO cấp chứng nhận Di sản văn hoá thế giới năm 1997. Thành cổ Lệ Giang xây dựng cách đây hơn 800 năm, là một di sản văn hóa thế giới với phong cảnh đẹp đẽ, được mệnh danh là "Venice của Phương Đông", nơi đây nhà nhà đều có suối chảy qua, những cây liễu buông xuống các bậc cửa và những cây cầu nhỏ xinh xắn.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/thanh-co-le-giang-du-lich-viet(1).jpg" /><br />
<em>Thành cổ Lệ Giang</em></p>

<p>Ăn tối tại nhà hàng địa phương. Nghỉ đêm tại Lệ Giang.</p>

<p>&nbsp;</p>

<p>NGÀY 5 |&nbsp;LỆ GIANG (Ăn ba bữa)</p>

<p>&nbsp;</p>

<p>Ăn sáng tại khách sạn, làm thủ tục trả phòng, đoàn khởi hành tham quan&nbsp;<strong>núi tuyết Ngọc Long</strong>. Quý khách đi cáp treo lớn tham quan:</p>

<ul>
	<li><strong>Băng Xuyên</strong>&nbsp;(đi cáp treo tham quan) – cao 4.506m so với mặt nước biển. Tại đây, quý khách chiêm ngưỡng khung cảnh hùng vĩ của thiên nhiên. Ngắm nhìn đỉnh núi quanh năm tuyết phủ, là biểu tượng uy nghi và linh thiêng của những người dân địa phương. Sau khi đi cáp treo, quý khách sẽ được dịp khám phá ngọn núi Tuyết Ngọc Long với đỉnh cao nhất là 5.596m – là một danh thắng nổi tiếng tại Lệ Giang, nơi thu hút hàng triệu lượt khách tham quan mỗi năm. Quý khách có thể từng bước chinh phục từ độ cao 4.506m – nơi cáp treo đưa quý khách ghé tới, tiếp tục chinh phục độ cao 4.576mvà 4.680m theo con đường với những bậc gỗ lên cao, như những bậc thang dẫn quý khách đi về thế giới của các vị thần.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/bang-xuyen-di-qua-nui-tuyet-ngoc-long-du-lich-viet.jpg" /><br />
<em>Băng Xuyên (Đi cáp treo tham quan)</em><br />
&nbsp;</p>

<ul>
	<li><strong>Lam Nguyệt Cốc</strong>- thung lũng trăng xanh là một trong những tuyệt tác thiên nhiên nổi bật của Lệ Giang nằm dưới chân núi tuyết Ngọc Long. Nơi đây nổi tiếng có dòng nước xanh biếc quanh năm tạo thành một cảnh sắc vô cùng ấn tượng. với xe điện trong khu thắng cảnh (<strong><em>không bao gồm xe điện</em></strong>)</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/lam-nguyet-dam-du-lich-viet.jpg" /><br />
<em>Lam Nguyệt Cốc</em><br />
&nbsp;</p>

<ul>
	<li>Ăn trưa, sau đó, Thưởng thức chương trình biểu diễn nghệ thuật hoành tráng&nbsp;<strong>Ấn Tượng Lệ Giang</strong>&nbsp;được chỉ đạo bởi đạo diễn nổi tiếng Trương Nghệ Mưu (<strong>Tặng vé</strong>).</li>
</ul>

<p><em>(Lưu ý: Do sân khấu ngoài trời nên lịch biểu diễn Ấn tượng Lệ Giang có thể thay đổi, tùy vào điều kiện thời tiết, trường hợp thời tiết không phù hợp biểu diễn, đoàn sẽ đi xem show Lệ Thủy Kim Sa đặc sắc)</em></p>

<ul>
	<li>Chiều: Quý khách dùng bữa tại nhà hàng địa phương. Nghỉ đêm tại&nbsp;<strong>Lệ Giang</strong></li>
</ul>

<p><strong>NGÀY 6 |&nbsp;LỆ GIANG - CÔN MINH - TP.HCM (Ăn sáng, trưa, Ăn nhẹ trên máy bay)</strong></p>

<ul>
	<li>Ăn sáng tại khách sạn.</li>
	<li>Sau đó đoàn di chuyển ra sân bay quốc tế &nbsp;Trường Thủy để làm thủ tục đáp chuyến bay&nbsp;<strong>MU5920(1205-1255)</strong>&nbsp;đi Côn Minh, Quý khách ăn trưa món bún qua cầu tại sân bay Côn Minh.[Chỉ áp dụng chặng&nbsp;bay Nội Địa đi&nbsp;ngày&nbsp;<strong>[29/06/2024]</strong></li>
	<li>Làm thủ tục trả phòng, đoàn khởi hành ra ga tàu, đi chuyến tàu cao tốc sớm từ Lệ Giang về Côn Minh.</li>
	<li>Ăn trưa tại nhà hàng địa phương, sau đó đoàn di chuyển ra sân bay quốc tế &nbsp;Trường Thủy để làm thủ tục trở về thành phố Hồ Chí Minh trên chuyến bay&nbsp;<strong>MU9633 (16:15 18:10).</strong>&nbsp;Đến thành phố Hồ Chí Minh. Kết thúc chương trình tham quan. Đoàn chia tay, hẹn gặp lại quý khách trong những hành trình tiếp theo công ty.</li>
</ul>
', N'Thành phố Hồ Chí Minh', N'Trung Quốc', CAST(0x0000B1E900000000 AS DateTime), CAST(0x0000B1EE00000000 AS DateTime), 20, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (31, N'Du lịch Đà Nẵng', 7799000, N'Du lịch Hè - Tour Đà Nẵng - Huế - Làng Hương Thuỷ Xuân - Mikazuki từ Sài Gòn 2024', N'<p>Điểm nhấn hành trình</p>

<table border="0" cellpadding="15" cellspacing="15">
	<tbody>
		<tr>
			<td><strong>Hành trình</strong></td>
			<td><strong>Đà Nẵng - Bà Nà - Phố Cổ Hội An - Cố Đô Huế - Làng Hương Thuỷ Xuân - Mikazukia</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình</strong></td>
			<td><strong>4 ngày 3 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành</strong></td>
			<td><strong>03,10,31/08; 14,21,28/09/2024</strong></td>
		</tr>
		<tr>
			<td><strong>Vận chuyển</strong></td>
			<td><strong>Vận chuyển Máy bay khứ hồi &amp; Xe du lịch đời mới</strong></td>
		</tr>
	</tbody>
</table>

<p><em><strong><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-he-tour-da-nang-hue-lang-huong-thuy-xuan-mikazuki-tu-sai-gon-2024">Du lịch Hè - Tour Đà Nẵng - Huế - Làng Hương Thuỷ Xuân - Mikazuki từ Sài Gòn 2024</a>&nbsp;</strong>tham quan khám phá&nbsp;Làng hương Thủy Xuân là một địa điểm bạn không thể bỏ qua khi đến du lịch Huế. Đây là một làng nghề truyền thống có khung cảnh độc đáo, ngập tràn sắc màu với muôn vàn góc check in tha hồ để bạn ‘’sống ảo’’.&nbsp;Di chuyển từ trung tâm thành phố Huế đến làng hương chỉ mất khoảng 15 – 20 phút. Xuất phát từ Đại Nội, bạn di chuyển ra phía đường Lê Duẩn đi qua cầu Dã Viên. Khi đi qua đây, bạn sẽ được chiêm ngưỡng vẻ đẹp của dòng sông Hương thơ mộng. Sau khi đi qua cầu, bạn theo vòng xuyến đi vào đường Bùi Thị Xuân. Bạn di chuyển khoảng 2 km sẽ thấy đường Huyền Trân Công Chúa, tiếp tục đi thẳng là tới Làng Hương Thủy Xuân.&nbsp;Đến nay, làng nghề làm hương Thủy Xuân đã hơn 700 năm tuổi, nghề hương nơi đây đã được lưu truyền từ thời nhà Nguyễn. Trải qua nhiều biến cố lịch sử, người dân Thủy Xuân vẫn gắn bó với nghề hương. Họ gắn bó không chỉ để kiếm sống mà còn để lưu giữ truyền thống cha ông để lại. Trong chuyến&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-he-tour-da-nang-hue-lang-huong-thuy-xuan-mikazuki-tu-sai-gon-2024"><strong>Tour Du lịch Huế mùa Hè&nbsp;</strong></a>quý khách hàng&nbsp;có thể mua các sản phẩm hương trầm, hương nụ, hương quế, hương nhài, hương vòng và nụ trầm tại đây đang rất được ưa chuộng trên thị trường màng về làm quà tặng các bạn bè hoặc người thân.</em></p>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 22/07/24)</p>

<p>NGÀY 1 |&nbsp;TP.HCM – BÀ NÀ HILL – ĐÀ NẴNG (Ăn tối) (Ăn trưa tự túc).</p>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng<strong>.</strong></p>

<ul>
	<li>Đại diện công ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Đà Nẵng.</strong></li>
	<li>Khởi hành đến với&nbsp;<strong>cao nguyên Bà Nà</strong>&nbsp;nơi có khí hậu Châu Âu độc đáo và nổi tiếng với tuyến cáp treo kỷ lục mới của thế giới - Ngắm toàn cảnh thành phố Đà Nẵng từ trên cáp treo&nbsp;<em>(chi phí cáp treo tự túc).</em>&nbsp;</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-cao-nguyen-ba-na-hill-du-lich-viet.jpg" /><br />
Cao nguyên Bà Nà<br />
&nbsp;</p>

<ul>
	<li>Quý khách tự do tham quan, vui chơi giải trí tại Bà Nà với&nbsp;<strong>Công Viên Fantasy</strong>,&nbsp;<strong>Rạp chiếu phim 3D Mega 360 độ</strong>&nbsp;với công nghệ hiện đại nhất và duy nhất có ở Viêt Nam,&nbsp;<strong>Hai rạp chiếu phim 4D và 5Di</strong>,&nbsp;<strong>Xe Trượt Ống</strong>,&nbsp;<strong>Hầm rượu, Vườn hoa tình yêu</strong>,&nbsp;<strong>Bảo Tàng Sáp, chụp hình tại Cầu Vàng điểm tham quan mới siêu hot tại Bà Nà.</strong></li>
</ul>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/cong-vien-Fantasy-da-nang-du-lich-viet(1).jpg" /></strong><br />
Công viên Fantasy<br />
&nbsp;</p>

<p><strong>Trưa:&nbsp;</strong>Quý khách vui lòng tự túc bữa ăn trưa.&nbsp;</p>

<ul>
	<li>Du khách có thể tìm thấy những biểu tượng mang tính tâm linh như chùa chiền, đền đài hay tượng các đức Phật. Chắc hẳn sẽ là điểm dừng chân cho những ai mong cầu bình an và sức khỏe cho gia đình:&nbsp;<strong>Chùa Linh Ứng, Đền Lĩnh Chúa Linh Từ, Tháp Linh Phong Tự, Tượng Thích Ca Mâu Ni, Lầu Chuông, Nhà Bia, Miếu Bà, Trú Vũ Trà Quán.</strong></li>
</ul>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-chua-linh-ung-du-lich-viet.jpg" /></strong><br />
&nbsp;</p>

<p><strong>Chiều:&nbsp;</strong>Dùng cơm chiều tại nhà hàng. Nghỉ đêm&nbsp;<strong>Đà Nẵng</strong>.<br />
<strong>Tối :&nbsp;Qúy khách tham gia Lễ hội pháo hoa quốc tế Đà Nẵng 2024 (DIFF 2024)</strong>&nbsp;sẽ diễn ra trong 2 tháng, bắt đầu từ&nbsp;<strong>08-06 đến 13-07-2024</strong>; 8 đội pháo hoa góp mặt trong lễ hội sắp tới đến từ Mỹ, Pháp, Đức, Ý, Trung Quốc, Phần Lan, Ba Lan, và đội chủ nhà Việt Nam.<br />
&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tua-da-nang-phao-hoa-du-lich-viet.jpg" /><br />
&nbsp;</p>

<p><strong><em>Chủ đề DIFF 2024:</em></strong>&nbsp;Kết nối toàn cầu, Rạng rỡ Năm Châu<strong><em>.</em></strong></p>

<p>&nbsp;</p>

<p>NGÀY 2 |&nbsp;NGŨ HÀNH SƠN – HỘI AN (Ăn sáng, trưa, chiều)</p>

<p>&nbsp;</p>

<p><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đoàn<strong>&nbsp;</strong>tham quan một vòng&nbsp;<strong>bán đảo Sơn Trà</strong>…viếng&nbsp;<strong>Linh Ứng Tự</strong>&nbsp;và thưởng ngoạn vẻ đẹp của&nbsp;<strong>biển Mỹ Khê</strong>&nbsp;<em>(được đánh giá là một trong những bãi biển quyến rũ nhất hành tinh).&nbsp;</em></li>
</ul>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tua-da-nang-tham-quan-ban-dao-son-tra-du-lich-viet.jpg" /></em><br />
Bán đảo Sơn Trà<br />
&nbsp;</p>

<ul>
	<li>Tham quan&nbsp;<strong>Ngũ Hành Sơn</strong>&nbsp;- đỉnh&nbsp;<strong>Kim Sơn</strong>, với dáng núi trông như một quả chuông úp sấp. Đoàn ghé thăm&nbsp;<strong>Chùa Quan Thế Âm</strong>,&nbsp;<strong>động Quan Âm</strong>,&nbsp;<strong>Bảo tàng văn hóa Phật Giáo</strong>… ghé thăm và mua sắm quà lưu niệm tại<strong>&nbsp;làng nghề điêu khắc đá Non Nước.</strong></li>
</ul>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-ngu-hanh-son-du-lich-viet.jpg" /></strong><br />
Ngũ hành Sơn</p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa tại nhà hàng.</p>

<ul>
	<li>Tham quan&nbsp;<strong>Phố Cổ Hội An</strong>&nbsp;-&nbsp;<strong><em>di sản văn hoá thế giới</em></strong><em>với&nbsp;</em><strong>Chùa Cầu Nhật Bản, Hội Quán Phúc Kiến, Nhà Cổ Phùng Hưng&nbsp;</strong>…</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/pho-co-hoi-an-gia-tot-du-lich-viet.jpg" /><br />
Phố cổ Hội An</p>

<p><strong>Chiều:&nbsp;</strong>Dùng cơm chiều tại nhà hàng. Nghỉ đêm Đà Nẵng.</p>

<p>&nbsp;</p>

<p>NGÀY 3 |&nbsp;MIKAZUKI - HUẾ (Ăn sáng, tối) (Ăn trưa tự túc)</p>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đoàn &nbsp;khởi hành &nbsp;trải nghiệm công viên nước phong cách Nhật Bản tại&nbsp;<strong>Công viên nước Mikazuki 365&nbsp;</strong>cùng với các hoạt động vui chơi đặc sắc trong nhà và ngoài trời, thư giãn cơ thể và trí óc với phương pháp chăm sóc sức khỏe của người Nhật – tắm khoáng nóng Onsen, tự túc chi phí trải nghiệm mặc trang phục truyền thống Nhật Bản check in muôn vàn gốc sống ảo tại Mikazuki 365.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/du-lich-da-nang-cong-vien-mizuki-du-lich-viet.jpg" /><br />
Công viên nước Mikazuki 365<br />
&nbsp;</p>

<p><strong>Trưa :</strong>&nbsp;Quý khách tự túc ăn trưa, trải nghiệm ẩm thực tại Mikazuki 365.</p>

<ul>
	<li>Khởi hành đến&nbsp;<strong>Huế&nbsp;</strong>qua đường hầm Hải Vân - hầm đường bộ dài nhất Đông Nam Á.</li>
</ul>

<p><strong>Chiều:</strong>&nbsp;Qúy khách dùng cơm chiều, Nghỉ đêm ở&nbsp;<strong>Huế.</strong></p>

<p>&nbsp;</p>

<p>NGÀY 4 |&nbsp;HUẾ – ĐẠI NỘI – TP.HCM (Ăn sáng, trưa)</p>

<p>&nbsp;</p>

<p><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn</p>

<ul>
	<li>Hướng dẫn viên đưa đoàn Tham quan&nbsp;<strong>Đại Nội</strong>&nbsp;– Hoàng Thành của 13 vị vua triều Nguyễn, nơi có hơn 100 công trình kiến trúc đẹp: Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh…</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/tham-quan-dai-noi-hue-du-lich-viet.jpg" /><br />
Tham quan Đại Nội&nbsp;</p>

<ul>
	<li>Tham quan&nbsp;<strong>chùa Thiên Mụ</strong>&nbsp;–&nbsp;&nbsp;<em>ngôi chùa cổ nhất Cố đô Huế.</em>&nbsp;</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Đoàn dùng cơm trưa</p>

<ul>
	<li><strong>Làng hương Thủy Xuân:&nbsp;</strong>Check-in tại Làng nghề cổ truyền nổi tiếng và cũng là một trong những tọa độ sống ảo nổi tiếng của giới trẻ tại Huế. Ngôi làng xinh đẹp được phủ đầy cây xanh ẩn mình dưới chân đồi Vọng Cảnh nổi tiếng với hàng loạt các cơ sở làm hương “khoe sắc” xanh, đỏ, tím, vàng…</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/lang-huong-thuy-xuan-du-lich-viet.jpg" /><br />
Làng hương Thuỷ Xuân<br />
&nbsp;</p>

<ul>
	<li>Tham quan&nbsp;<strong>Lăng Khải Định&nbsp;</strong>(Ứng Lăng, lăng mộ của vua Khải Định, vị vua thứ 12 của triều Nguyễn) với lối kiến trúc độc đáo bởi sự pha trộn kiến trúc Đông Tây Kim Cổ lạ thường, với các tác phẩm nghệ thuật ghép tranh sành sứ độc đáo.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/lang-khai-dinh-viet-media-travel.jpg" /><br />
Lăng Khải Định</p>

<ul>
	<li>Hướng dẫn viên tiễn đoàn ra sân bay Huế đón chuyến bay về&nbsp; TP.HCM.</li>
	<li>Kết thúc chương trình tham quan, chia tay và hẹn gặp lại Quý khách.</li>
</ul>
', N'Thành phố Hồ Chí Minh', N'Đà Nẵng', CAST(0x0000B1F800000000 AS DateTime), CAST(0x0000B1FB00000000 AS DateTime), 20, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (32, N'Du lịch Đảo Bình Hưng', 2299000, N'Du lịch Hè - Tour Du lịch Đảo Bình Hưng - Ninh Chữ - Vườn Nho từ Sài Gòn 2024', N'<p><strong>Điểm nhấn hành trình</strong></p>

<table align="left" border="0" cellpadding="10" cellspacing="10">
	<tbody>
		<tr>
			<td><strong>Hành trình:</strong></td>
			<td><strong>Đảo Bình Hưng - Ninh Chữ - Đồng Cừu - Vườn Nho - Thưởng Thức Đặc Sản Tôm Hùm</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình:</strong></td>
			<td><strong>2 ngày 2 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành:</strong></td>
			<td><strong>Tối Thứ 3,6 hàng tuần&nbsp;</strong></td>
		</tr>
		<tr>
			<td><strong>Vận chuyển:</strong></td>
			<td><strong>Xe du lịch đời mới &amp; tàu thủy</strong></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p><em><strong>Du lịch Miền Trung - Đảo Bình Hưng - Ninh Chữ - Vườn Nho</strong>, Quý Khách sẽ tiếp tục được giới thiệu thêm một hòn đảo được người ra gọi là đảo Robinson bởi vì ở đây không gian yên lặng tỉnh mịch như một đảo hoang, khắp trên đảo là tiếng sóng vỗ vào vách đá dội lại.</em></p>

<p>&nbsp;</p>
', N'<p>Lịch khởi hành (Cập nhật 14/05/24)</p>

<p>|&nbsp;TP.HCM – CAM RANH</p>

<p><strong>Tối:</strong>&nbsp;Xe và Hướng Dẫn Viên<strong>&nbsp;Du Lịch Việt</strong>&nbsp;đón Quý khách tại điểm hẹn khởi hành đi&nbsp;<strong>Bình Hưng.</strong>&nbsp;<br />
- 20h tại Công Ty Du Lịch Việt – Số 217 Bis Nguyễn Thị Minh Khai , Quận 1 .&nbsp;<br />
- 21h00 Ngã 4 Thủ Đức – Xa Lộ Hà Nội, TP Hồ Chí Minh (không có điểm gửi xe máy)<br />
– 21h30 Ngã 4 Amata – Biên Hòa, Đồng Nai<br />
&nbsp;Đoàn khởi hành đi Bình Hưng - &nbsp;Nghỉ ngơi trên xe.</p>

<p><strong>NGÀY 1 |&nbsp;ĐẢO BÌNH HƯNG – NINH CHỮ (Ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng:</strong>&nbsp;Đến Cam Ranh.<br />
Đoàn đến&nbsp;<strong>bãi Kinh - Bình Tiên</strong>, đón tàu đến&nbsp;<strong>đảo Bình Hưng</strong>.<br />
Tham quan bãi&nbsp;<strong>Nước Ngọt</strong>&nbsp;– bãi tắm, quý khách có thể tắm suối nước ngọt vừa có thể tắm biển tại đây.&nbsp;<br />
Dừng chân tại&nbsp;<strong>Bãi Cây Me</strong>&nbsp;, tham quan&nbsp;<strong>Hang Sâu – Đá Vách</strong>&nbsp;<br />
Quý khách tự do tắm biển, lặn ngắm san hô&nbsp;<strong>–</strong>&nbsp;với làn nước trong veo, quang cảnh xung quanh thơ mộng, sở hữu những rặng san hô tuyệt đẹp cùng mực nước biển thấp và màu nước trong xanh.<br />
<strong>Trưa:</strong>&nbsp;Dùng cơm trưa hải sản trên đảo.&nbsp;<em>(trường hợp quý khách muốn dùng thêm tôm hùm, vui lòng đóng thêm phụ phí tùy theo thời giá)</em><br />
Đoàn đi tham quan một vòng trên đảo, viếng thăm&nbsp;<strong>chùa Bình Hưng</strong>,&nbsp;<strong>lăng Nam Hải</strong>, những nơi còn lưu giữ bản sắc văn hoá truyền thống cộng đồng cư dân miền biển.<br />
Quý khách tự do tắm biển.<br />
<strong>Tối: Quý khách dùng Hải sản 2 khách/con Tôm Hùm&nbsp;</strong><br />
<strong>Thực đơn tham khảo&nbsp;</strong><br />
<strong>1/ Tôm hùm hấp ( 2 nguoi/con)&nbsp;</strong><br />
<strong>2/ Bào Ngư nướng&nbsp;</strong><br />
<strong>3/ Cháo Hào&nbsp;</strong><br />
<strong>4/ cá hấp bánh tráng rau sống&nbsp;</strong><br />
<strong>5/ hào sữa nướng&nbsp;</strong><br />
<strong>6/ Cơm chiên trứng&nbsp;</strong><br />
<strong>7/ Tráng miệng, nước suối</strong></p>

<p><strong>Tối:&nbsp;</strong>Đoàn nhận phòng nghỉ ngơi tại đảo Bình Hưng&nbsp;<br />
Đoàn tự do khám phá Đảo Bình Hưng về đêm. &nbsp;&nbsp;</p>

<p><strong>NGÀY 2 |&nbsp;BÌNH HƯNG- NINH CHỮ – TP.HCM (Ăn sáng, trưa)</strong></p>

<p><strong>Sáng:</strong>&nbsp;Dùng bữa sáng.<br />
Đoàn trở về đất liền, đến&nbsp;Đồng Cừu&nbsp;dạo bước đến đồng cừu bạn sẽ có cảm giác như lạc vào nông trại cừu cổ tích ở Châu Âu. Không gian đồng cừu trải rộng mênh mông, bạt ngàn với màu xanh tươi mới của cỏ cây và trên nền xanh ấy điểm xuyến nhiều chấm trắng nhỏ xinh của những chú cừu thân thiện.&nbsp;<br />
Đoàn tham quan&nbsp;<strong>Vườn nho,&nbsp;</strong>ăn nho, uống rượu nho miễn phí. Vườn nho có tới 7 loại nho, trong đó 4 loại là nho tươi ăn quả, 3 loại được dùng để làm rượu. Hướng dẫn viên hướng dẫn cho du khách quy trình chăm sóc đến các công đoạn thu hoạch, chế biến rượu nho.<br />
<strong>Trưa:</strong>&nbsp;Đoàn dùng cơm trưa.<br />
Khởi hành về TP.HCM, kết thúc chương trình tour, chia tay và hẹn gặp lại !</p>
', N'Thành phố Hồ Chí Minh', N'Ninh Thuận', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1C200000000 AS DateTime), 45, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (33, N'Du lịch Thụy Sĩ', 70990000, N'Du lịch Đông Tây Âu mùa Thu - Séc - Slovakia - Hungary - Áo - Đức - Thụy Sĩ từ Sài Gòn 2024', N'<p><strong>Điểm nhấn hành trình</strong></p>

<table border="0" cellpadding="15" cellspacing="15">
	<tbody>
		<tr>
			<td><strong>Hành trình</strong></td>
			<td><strong>Séc - Slovakia - Hungary - Áo - Đức - Liechtenstein - Thụy Sĩ&nbsp;</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình</strong></td>
			<td><strong>10 ngày 9 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành</strong></td>
			<td><strong>26/09, 20/10/2024</strong></td>
		</tr>
		<tr>
			<td><strong>Hàng không</strong></td>
			<td><strong>Turkish Airlines</strong></td>
		</tr>
	</tbody>
</table>

<p><em><a href="https://dulichviet.com.vn/loai-hinh-du-lich/du-lich-dong-tay-au-mua-thu-sec-slovakia-hungary-ao-duc-thuy-si-tu-sai-gon-2024"><strong>Du lịch Đông Tây Âu mùa Thu - Séc - Slovakia - Hungary - Áo - Đức - Thụy Sĩ từ Sài Gòn 2024</strong></a>&nbsp;cùng&nbsp;Du Lịch Việt chúng tôi sẽ đưa&nbsp;quý khách đến với chương trình Tour Du lich Dong Tay Au mua Thu một hành trình khám phá những vẻ đẹp thơ mộng và cổ kính của Châu Âu. Khám phá Đông Tây Âu vào mùa Thu, để tận hưởng những khoảnh khắc tuyệt vời và lưu giữ những kỷ niệm đáng nhớ trong cuộc đời bạn! Hãy cùng Du Lịch Việt bước vào câu chuyện thần tiên, nơi mỗi điểm đến đều mang trong mình nét đẹp riêng biệt của mùa Thu vàng rực rỡ.&nbsp;</em></p>

<ul>
	<li><em><strong>Praha&nbsp;</strong>- Thủ đô của CH Séc, nơi mà mùa thu biến thành phố này thành một bức tranh sơn dầu sống động. Những tòa nhà cổ kính, cây cầu Charles lãng mạn, và lâu đài Praha hùng vĩ sẽ khiến bạn say mê không muốn rời.</em></li>
	<li><em><strong>Hallstatt</strong>&nbsp;- Ngôi làng cổ tích nằm bên hồ Hallstatt, Áo. Mùa thu tại đây như một bức tranh phong cảnh hoàn hảo, với những ngôi nhà nhỏ xinh xắn nằm xen giữa những ngọn núi phủ đầy sắc lá vàng, đỏ. Bạn sẽ không thể nào quên được vẻ đẹp yên bình và thơ mộng của nơi này.</em></li>
	<li><em><strong>Budapest</strong>&nbsp;- Thủ đô của Hungary, được mệnh danh là “Paris của Đông Âu”. Mùa thu ở Budapest là sự kết hợp hoàn hảo giữa những di sản kiến trúc tráng lệ và dòng sông Danube êm đềm, tạo nên một khung cảnh lãng mạn và đầy chất thơ.</em></li>
</ul>
', N'<p>Lịch khởi hành (Cập nhật 29/07/24)</p>

<p><span style="color:#1abc9c"><strong>NGÀY 1 |&nbsp;TP. HỒ CHÍ MINH - PRAHA (CỘNG HOÀ SÉC) (Ăn tối trên máy ba</strong>y)</span></p>

<p>Hướng dẫn viên Cty Cổ Phần Truyền Thông Du Lịch Việt (Viet Media Travel) đón Quý khách tại sân bay Tân Sơn Nhất – Ga đi Quốc tế, làm thủ tục đáp chuyến bay đi Praha – thủ đô cộng hòa Séc. Dùng bữa tối và nghỉ đêm trên máy bay.<br />
Chuyến bay&nbsp;<strong>TK 163</strong>&nbsp;từ TP.HCM đi Istanbul lúc&nbsp;<strong>2155 – 0435</strong>&nbsp;đến Istanbul. Quý khách tiếp tục nối chuyến&nbsp;<strong>TK 1767</strong>&nbsp;từ Istanbul đi Praha lúc&nbsp;<strong>0645 – 0825</strong>&nbsp;sáng ngày hôm sau.​​​​​​&nbsp;</p>

<p><span style="color:#1abc9c"><strong>NGÀY 2 |&nbsp;PRAHA – THAM QUAN (Ăn trưa &amp; tối nhà hàng)</strong></span></p>

<p>Đến Praha vào buổi sáng, đoàn đáp xuống sân bay quốc tế Ruzyně nằm tại Praha - thủ đô của Cộng hòa Séc là một trong những thành phố du lịch nổi tiếng nhất ở Châu Âu.&nbsp;<br />
Quý khách tham quan city tour Praha với các điểm nổi bật:</p>

<ul>
	<li><strong>Cầu Charles</strong>&nbsp;nổi tiếng, chiếc cầu đá kiểu Gothic nối liền Old Town</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-czech/ve-dep-yen-binh-cau-Charles-du-lich-viet.jpg" /><br />
<em>Cầu Charles nổi tiếng</em></p>

<ul>
	<li><strong>Nhà thờ St. Vitus</strong></li>
	<li><strong>Chợ Sapa</strong>&nbsp;– chợ lớn nhất của người Việt tại Prague.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-czech/cho-sapa-cong-hoa-sec-du-lich-viet.jpg" /><br />
<em>Chợ Sapa&nbsp;</em></p>

<ul>
	<li><strong>Lesser Town</strong>&nbsp;– được xây dựng từ năm 1357</li>
	<li>Con đường vàng<strong>&nbsp;Golden Lane*</strong></li>
	<li>Lên đồi chụp ảnh bên ngoài Lâu đài Prague* - điểm du lịch tiêu biểu nhất của thành phố. Đây là một trong những lâu đài lớn nhất thế giới và cũng là một Di sản thế giới.</li>
	<li><strong>Quảng trường Old Town</strong>&nbsp;(Staroměstské Náměstí) với Đồng hồ thiên văn (Astronomical Clock) tọa lạc ở góc phía tây nam của quảng trường.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-czech/quang-truong-Old-Town-du-lich-viet.jpg" /><br />
<em>Quảng trường Old Town</em></p>

<p>Nhận phòng khách sạn và nghỉ đêm tại&nbsp;<strong>Praha.</strong></p>

<p><span style="color:#1abc9c"><strong>NGÀY 3 |&nbsp;PRAHA – (300 Km) – BRATISLAVA (SLOVAKIA) (Ăn ba bữa)</strong></span></p>

<p>Rời Praha đoàn khởi hành đi Bratislava, thủ đô của Slovakia:&nbsp;<br />
Tham quan&nbsp;<strong>Bratislava</strong>:</p>

<ul>
	<li><strong>Lâu đài Bratislava*</strong>&nbsp;(chụp hình bên ngoài)</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-slovakia/lau-dai-Bratislava-du-lich-viet.jpg" /><br />
<em>Lâu đài Bratislava</em><br />
&nbsp;</p>

<ul>
	<li><strong>Quảng trường Hviezdoslav.</strong></li>
	<li>Phố cổ&nbsp;<strong>Bratislava</strong>.</li>
	<li><strong>Cầu UFO</strong>.</li>
	<li><strong>Tháp Novy Most</strong>, St. Martin’s Cathedral: Thánh đường kiến trúc Gothic được xây dựng từ thế kỷ 14-15.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-slovakia/thap-Novy-Most-du-lich-viet.jpg" /><br />
<em>Tháp Novy Most</em></p>

<ul>
	<li><strong>Old Town Hall:</strong>&nbsp;Toà thị chính cũ, hiện tại là bảo tàng thành phố Bratislava</li>
</ul>

<p>Nhận phòng khách sạn và nghỉ ngơi tại&nbsp;<strong>Bratislava&nbsp;</strong>hoặc lân cận.</p>

<p><span style="color:#1abc9c"><strong>NGÀY 4 |&nbsp;BRATISLAVA (SLOVAKIA) – (200 Km) – BUDAPEST (HUNGARY) (Ăn ba bữa)</strong></span></p>

<p>Sau bữa sáng đoàn rời Bratislava đến tham quan Budapest thủ đô Hungary.</p>

<p>Tham quan&nbsp;<strong>Budapest</strong>&nbsp;- Thủ đô của Hungary, được mệnh danh là “<strong>Paris của Đông Âu”</strong>. Mùa thu ở Budapest là sự kết hợp hoàn hảo giữa những di sản kiến trúc tráng lệ và dòng sông Danube êm đềm, tạo nên một khung cảnh lãng mạn và đầy chất thơ.</p>

<ul>
	<li>Tòa nhà Quốc hội&nbsp;<strong>Hungary.</strong></li>
</ul>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-hungary/toa-nha-thi-chinh-hungary-du-lich-viet.jpg" /></strong><br />
<em>Tòa nhà Quốc hội Hungary</em></p>

<ul>
	<li><strong>Cầu Chain.</strong></li>
	<li>Quảng trường Anh hùng.</li>
	<li>Lâu đài<strong>&nbsp;Buda*</strong>&nbsp;(Bên ngoài)</li>
	<li>Nhà thờ&nbsp;<strong>Matthias.</strong></li>
	<li>Pháo đài F<strong>isherman''s Bastion.</strong></li>
</ul>

<p>Nghỉ đêm tại&nbsp;<strong>Budapest</strong>&nbsp;hoặc lân cận.</p>

<p><strong><span style="color:#1abc9c">NGÀY 5 |&nbsp;BUDAPEST (HUNGARY) – (284 Km) – VIENNA (ÁO) (Ăn ba bữa)</span></strong></p>

<p>Đoàn khởi hành đến Vienna, thủ đô của Cộng hòa Áo tham quan:<br />
<strong>VIENNA:</strong></p>

<ul>
	<li><strong>Cung điện Schönbrunn*</strong>&nbsp;(chụp hình bên ngoài)</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-ao/cung-dien-Sch%C3%B6nbrunn-du-lich-viet.jpg" /><br />
<em>Cung điện Schönbrunn</em></p>

<ul>
	<li>Nhà thờ&nbsp;<strong>St. Stephen</strong>.</li>
	<li>Tòa nhà quốc hội.</li>
	<li>Nhà hát&nbsp;<strong>Vienna State Opera.</strong></li>
</ul>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-ao/nha-hat-Vienna-State-Opera-du-lich-viet.jpg" /></strong><br />
<em>Nhà hát Vienna State Opera</em></p>

<ul>
	<li>Cung điện Hofburg* (chụp hình bên ngoài)</li>
	<li>Phố mua sắm Kärntner Strasse.</li>
</ul>

<p>Quý khách nhận phòng khách sạn, nghỉ đêm tại&nbsp;<strong>Vienna</strong>&nbsp;hoặc lân cận.&nbsp;&nbsp;&nbsp;&nbsp;</p>

<p><span style="color:#1abc9c"><strong>NGÀY 6 |&nbsp;VIENNA – (288 Km) – Làng Hallstatt – (78 Km) – Salzburg (ÁO) (Ăn ba bữa)</strong></span></p>

<p>Rời Vienna đoàn khởi hành đi Hallstatt<br />
Đến tham quan Hallstatt:</p>

<ul>
	<li><strong>Hồ Hallstatt</strong>: tản bộ dạo quanh trên những con đường nhỏ quanh làng, ngắm nhìn mặt hồ tĩnh lặng được bao quanh bởi dãy Alps hùng vĩ.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-ao/ho-allstatt-du-lich-viet.jpg" /><br />
<em>Hồ Hallstatt</em></p>

<ul>
	<li><strong>Quãng trường trung tâm</strong></li>
	<li>Nhà thờ&nbsp;<strong>Evangelical</strong>&nbsp;– Nhà thờ Giáo xứ Đức Mẹ Thăng thiên</li>
</ul>

<p>Sau đó, khởi hành đến thành phố cổ&nbsp;<strong>Salzburg</strong>&nbsp;– thành phố cổ nghệ thuật của nước Áo, quê hương thiên tài âm nhạc Mozart. Nghỉ đêm tại&nbsp;<strong>Salzburg</strong>, Áo hoặc lân cận.</p>

<p><strong><span style="color:#1abc9c">NGÀY 7 |&nbsp;SALZBURG (ÁO) – (150 Km) – MUNICH (ĐỨC) (Ăn ba bữa)</span></strong></p>

<p>Quý khách khởi hành tham quan:&nbsp;<strong>Salzburg</strong></p>

<ul>
	<li>Phố cổ&nbsp;<strong>Salzburg.</strong></li>
</ul>

<p><br />
<strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-ao/pho-co-Salzburg-du-lich-viet.jpg" /></strong><br />
<em>Phố cổ Salzburg</em></p>

<ul>
	<li>Cung điện&nbsp;<strong>Mirabell.</strong></li>
	<li>Nhà thờ&nbsp;<strong>Salzburg.</strong></li>
	<li>Pháo đài&nbsp;<strong>Hohensalzburg.</strong></li>
	<li>Nhà của&nbsp;<strong>Mozart</strong>* (bên ngoài)</li>
	<li><strong>Cầu Makartsteg</strong>&nbsp;với những ổ khóa tình yêu.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-ao/cau-Makartsteg-voi-nhung-o-khoa-tinh-yeu-du-lich-viet.jpg" /><br />
<em>Cầu Makartsteg với những ổ khóa tình yêu</em></p>

<p>Sau đó, đoàn khởi hành đi Munich thành phố lớn thứ 3 của nước Đức.<br />
Tham quan M<strong>unich:</strong></p>

<ul>
	<li><strong>Tham quan New Town Hall</strong>&nbsp;(Neues Rathaus), ngắm nhìn tháp đồng hồ Rathaus - Glockenspiel</li>
	<li>Sau đó tham quan quảng trường nhà vua&nbsp;<strong>Konigsplatz</strong></li>
	<li><strong>Công viên Olympia</strong>, cổng Victory, bảo tàng xe hơi BMW, tòa thị chính,...</li>
</ul>

<p>Nghỉ đêm tại Munich, Đức hoặc lân cận.</p>

<p><span style="color:#1abc9c"><strong>NGÀY 8 |&nbsp;Munich (ĐỨC) – Vaduz (Liechtenstein) – Lucern (Thuỵ Sĩ) / 372 Km (Ăn ba bữa)</strong></span></p>

<p>Ngày hôm nay, Đoàn khởi hành đi Lucern, Thuỵ Sĩ sẽ đi ngan qua một trong nhất quốc gia nhỏ nhất trên thế giới nhưng thịnh vượng là Liechtenstein.<br />
<strong>LIECHTENSTEIN</strong></p>

<ul>
	<li><strong>Liechtenstein&nbsp;</strong>tên chính thức là Thân vương quốc Liechtenstein là một quốc gia vùng Alps nhỏ bao quanh bởi các nước không giáp biển ở Trung Âu, phía tây giáp Thụy Sĩ, phía đông giáp Áo Quốc gia này có diện tích chỉ khoảng 160 km² và dân số khoảng 39,000 người. Liechtenstein là một trong những quốc gia giàu có nhất thế giới tính theo GDP bình quân đầu người, nhờ vào nền kinh tế mạnh mẽ và đa dạng, bao gồm tài chính, công nghiệp, và dịch vụ.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/tham-quan-Liechtenstein-du-lich-viet.jpg" /><br />
<em>Liechtenstein tên chính thức là Thân vương quốc Liechtenstein</em></p>

<ul>
	<li>Nằm nép mình bên hữu ngạn sông Rhine, nơi đây được bao bọc bởi những khu rừng rậm và đỉnh núi phủ tuyết.&nbsp;<strong>Du lịch Liechtenstein</strong>, du khách như được lạc vào một thị trấn thời Trung Cổ với những tòa lâu đài, nhà thờ kiến trúc Gothic. Hoà quyện cùng các công trình kiến trúc độc đáo ấy là những dãy núi, cánh đồng cỏ màu lục bảo.</li>
</ul>

<p>Ghé tham quan chụp hình thủ đô Vaduz của<strong>&nbsp;Liechtenstein</strong></p>

<ul>
	<li><strong>VADUZ</strong>&nbsp;là thủ đô và là trung tâm hành chính của Liechtenstein, một trong những quốc gia nhỏ nhất thế giới. Vaduz nằm ở trung tâm của thung lũng sông Rhine, phía tây của Liechtenstein, và có dân số khoảng 5,500 người. Thành phố này nổi tiếng với các tòa nhà hành chính, viện bảo tàng và đặc biệt là Lâu đài Vaduz (Schloss Vaduz) - nơi cư trú của Hoàng tử Liechtenstein và gia đình hoàng gia. Lâu đài nằm trên đỉnh đồi, mang lại tầm nhìn toàn cảnh xuống thung lũng sông Rhine và thành phố bên dưới.</li>
</ul>

<p>Đoàn tiếp tục khởi hành đến Lucern, Thuỵ Sĩ. Đến nơi đoàn nhận phòng khách sạn.<br />
Nghỉ đêm tại Lucern, Thuỵ Sĩ hoặc lân cận.</p>

<p><span style="color:#1abc9c"><strong>NGÀY 9 |&nbsp;LUCERN - ZURICH - RA SÂN BAY - TP. HỒ CHÍ MINH (Ăn sáng tại khách sạn, ăn trưa nhà hàng, ăn tối trên máy bay)</strong></span></p>

<p>Đoàn khởi hành đi Lucerne là một trong những thành phố cổ xưa hấp dẫn nhất của Thụy Sỹ, nằm giữa những quả núi phủ đầy tuyết, được bao quanh bởi một hồ nước tuyệt đẹp. LUCERN</p>

<ul>
	<li>Tượng đài Sư tử -&nbsp;<strong>Lion Monument</strong>.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/tuong-su-tu-lion-du-lich-viet.jpg" /><br />
<em>Tượng đài Sư tử - Lion Monument</em></p>

<ul>
	<li>Cầu gỗ&nbsp;<strong>Chapel</strong>&nbsp;- biểu tượng của thành phố<strong>&nbsp;Lucerne.</strong></li>
	<li>Tự do mua sắm tại cửa hiệu đồng hồ&nbsp;<strong>Bucherer</strong>&nbsp;nổi tiếng của Thụy Sĩ.</li>
</ul>

<p>Quý khách tiếp tục đến với thành phố Zurich - thành phố lớn nhất của Thụy Sỹ, đồng thời là trung tâm thương mại, văn hóa chính của quốc gia này.&nbsp;<br />
ZURICH<br />
•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhà thờ&nbsp;<strong>Grossmuenster.</strong><br />
•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhà thờ&nbsp;<strong>Fraumunster&nbsp;</strong>hay còn gọi là Nhà thờ Đức bà ở Zurich.<br />
Tự do tham quan mua sắm, sau đó khởi hành ra sân bay Zurich làm thủ tục đáp chuyến bay về Việt Nam.<strong>&nbsp;Chuyến bay TK 1910 (1850 – 2250) từ Zurich đi Istanbul&nbsp;</strong></p>

<p><span style="color:#1abc9c"><strong>NGÀY 10 |&nbsp;TP. HỒ CHÍ MINH</strong></span></p>

<p>Đến Istanbul, Quý khách tiếp tục nối chuyến&nbsp;<strong>TK 162</strong>&nbsp;từ Istanbul đi Tp. Hồ Chí Minh lúc&nbsp;<strong>0220 – 1625</strong>&nbsp;đến Tp. Hồ Chí Minh chiều cùng ngày.<br />
Quý khách làm thủ tục nhập cảnh, lấy hành lý, Hướng dẫn viên Cty Du Lịch Việt chia tay Quý khách. Kết thúc chương trình du lịch Châu Âu. Cảm ơn Quý khách &amp; hẹn gặp lại Quý khách trong những hành trình sau. Trân trọng,</p>
', N'Thành phố Hồ Chí Minh', N'Thụy Sĩ', CAST(0x0000B20000000000 AS DateTime), CAST(0x0000B20900000000 AS DateTime), 10, 2)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (34, N'Du lịch Hà Nội', 8999000, N'Du lịch Hè - Tour Du lịch Hà Nội - Lào Cai - Sapa 4 ngày từ Sài Gòn 2024', N'<p><strong>Điểm nhấn hành trình</strong></p>

<table border="0" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td><strong>Hành trình</strong></td>
			<td><strong>Hà Nội - Lào Cai - Sa Pa - Bản Cát Cát - Chinh Phục Đỉnh Fansipan</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình</strong></td>
			<td><strong>4 ngày 3 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành</strong></td>
			<td><strong>&nbsp;05,12,19,26/06; 03,10,17,24,31/07; 07,14,21,28/08/2024&nbsp;</strong></td>
		</tr>
		<tr>
			<td><strong>Vận chuyển</strong></td>
			<td><strong>Xe du lịch đời mới &amp; Máy bay khứ hồi</strong></td>
		</tr>
	</tbody>
</table>

<p><em>Mùa hè đến với Sapa bạn sẽ được cảm nhận một hình ảnh mới lạ của thị trấn này và chắc nhiều du khách cũng hỏi rằng không biết Sapa có điều gì hấp dẫn mà thu hút du khách đến Sapa vào dịp hè, vậy hãy cùng&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;chúng tôi&nbsp;tìm hiểu xem Sapa mùa này có điều gì hấp dẫn bạn nhé! Ngắm nhìn hình ảnh ruộng bậc thang, Ruộng bậc thang Sapa là hình ảnh quá dỗi quen thuộc đối với những du khách khi đến với Sapa, tuy nhiên mỗi mùa mỗi tháng tại Sapa hình ảnh của những thửa ruộng bậc thang luôn có sự thay đổi một cách nhanh chóng, mỗi tháng lên Sapa một lần bạn cũng đã thấy sự thay đổi của những thửa ruộng bậc thang. Thời điểm những thửa ruộng bậc thang bắt đầu bước vào quá trình làm việc sau một kỳ nghỉ đông dài hạn. Hình ảnh những thửa ruộng bậc thang ngập tràn nước, từng dòng nước lần lượt kéo chảy xuống bậc ruộng thấp hơn, đến với Sapa vào thời điểm này bạn cũng sẽ dễ dàng bắt gặp hình ảnh của những người dân đang hăng say làm việc tô thêm nét đẹp cho những thửa ruộng bậc thang. Đến cuối mùa hè thời gian vào tháng 8 sau hai tháng ngắn ngủi bạn có thể dễ dàng nhận thấy sự chuyển mình một cách nhanh chóng của những cánh đồng lúa. Lúc này một màu xanh đã bao trùm khắp Sapa vừa là màu xanh của núi rừng và cũng vừa là màu xanh của những cánh đồng lúa. Đều được hòa quyện lại với nhau mang đến cho bạn một cảm giác thoải mái dường như bạn đã quên đi cái nóng oi cả của mùa hè.</em></p>
', N'<p><span style="color:#1abc9c"><strong>NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI - SAPA (Ăn trưa, chiều)</strong></span></p>

<p><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại&nbsp;<strong>ga quốc nội, sân bay Tân Sơn Nhất</strong>&nbsp;trước giờ bay ít nhất hai tiếng.</p>

<ul>
	<li>Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi Hà Nội.</li>
	<li>Đến sân bay&nbsp;<strong>Nội Bài</strong>, Hướng dẫn viên đón đoàn, khởi hành đến&nbsp;<strong>Lào Cai</strong>&nbsp;trên con đường cao tốc dài nhất Việt Nam - mạch nối liền giữa Hà Nội và các tỉnh Tây Bắc.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/san-bay-noi-bai-du-lich-viet.jpg" /><br />
<em>Sân Bay Nội Bài</em></p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Đoàn tiếp tục đến&nbsp;<strong>thị trấn vùng cao Sapa</strong>, tận hưởng cảnh sắc núi rừng như tranh vẽ và khám phá cuộc sống của đồng bào dân tộc ít người miền Tây Bắc.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/tua-sapa-cho-vung-cao-du-lich-viet-2023.jpg" /><br />
<em>Thị trấn vùng cao Sapa - Dân tộc H''mông</em></p>

<ul>
	<li>Thăm&nbsp;<strong>bản Cát Cát</strong>, tìm hiểu nghề dệt nhuộm của dân tộc H’Mông và trạm thủy điện Cát Cát thời Pháp – nơi có 3 dòng nước hợp nhau thành dòng suối Mường Hoa.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/ban-cat-cat-du-lich-sapa-gia-re.jpg" /><br />
<em>Bản Cát Cát</em></p>

<p><strong>Chiều:&nbsp;</strong>Dùng bữa chiều. Nghỉ đêm tại Sapa</p>

<p><span style="color:#1abc9c"><strong>NGÀY 2 |&nbsp;SAPA - FANSIPAN – HÀ NỘI (Ăn sáng, trưa, chiều)</strong></span></p>

<p><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đoàn khởi hành tham quan chinh phục&nbsp;<strong>Fansipan</strong>, ngọn núi cao nhất Việt Nam (3.143 m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn Sa Pa khoảng 9 km về phía tây nam.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/du-lich-sapa-dinh-fansipan-du-lich-viet.jpg" /><br />
<em>Đỉnh núi&nbsp;Fansipan</em></p>

<ul>
	<li>Du khách chinh phục "Nóc nhà Đông Dương" với hệ thống cáp treo Fansipan Sa Pa dài 6,2km đạt 2 kỷ lục Guinness thế giới: Cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và Cáp treo ba dây dài nhất thế giới: 6292.5m. Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung lũng Mường Hoa và rừng quốc gia Hoàng Liên từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại&nbsp;<strong>Khu du lịch tâm linh&nbsp;</strong>–&nbsp;<strong>Chùa Trình</strong>,&nbsp;<strong>Chùa Hạ</strong>&nbsp;tại ga đến&nbsp;<em>(chi phí cáp treo tự túc).</em></li>
</ul>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/thung-lung-muong-hoa-tua-sapa-mua-xuan-du-lich-viet.jpg" /></em><br />
<em>Thung lũng Mường Hoa&nbsp;</em></p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Tự do dạo phố, tham quan nhà thờ đá Sapa, tham dự đêm chợ Tình&nbsp;<em>(nếu đi vào tối thứ 7).</em></li>
</ul>

<p><strong>Tối:&nbsp;</strong>Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Sapa.</strong></p>

<p><span style="color:#1abc9c"><strong>NGÀY 3 |&nbsp;SAPA – HÀ NỘI (Ăn sáng, trưa, chiều)</strong></span></p>

<p><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đoàn trở về&nbsp;<strong>Hà Nội.</strong></li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</p>

<ul>
	<li>Tham quan&nbsp;<strong>thủ đô Hà Nội</strong>&nbsp;với:&nbsp;<strong>chùa Trấn Quốc, Hồ Tây, Hồ Trúc Bạch, Hồ Hoàn Kiếm, Đền Ngọc Sơn</strong>.</li>
</ul>

<p>&nbsp;&nbsp;<img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/tham-quan-chua-tran-quoc-du-lich-viet-2023.jpg" /><br />
<em>Đền Ngọc Sơn</em></p>

<p><strong>Tối:&nbsp;</strong>Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Hà Nội</strong>.</p>

<ul>
	<li>Quý khách có thể dạo một vòng quanh thủ đô, thưởng thức các món đặc sản: bún chả cá Lả Vọng, phở Hà Nội, búng thang, bún chả, … hoặc thưởng thức café ở phố cổ, Hồ Gươm</li>
</ul>

<p><span style="color:#1abc9c"><strong>NGÀY 4 |&nbsp;HÀ NỘI – TP.HCM (Ăn sáng, trưa)</strong></span></p>

<p><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.<br />
Hướng Dẫn Viên đón đoàn, Tham quan thủ đô<strong>&nbsp;</strong>với:&nbsp;<strong>Phủ Chủ Tịch, ao cá, nhà sàn Bác Hồ, Chùa Một Cột, Bảo Tàng Hồ Chí Minh.</strong><br />
<em>(<strong>Lăng Chủ tịch Hồ Chí Minh</strong>&nbsp;sẽ tạm ngừng đón đồng bào và du khách vào viếng từ ngày&nbsp;<strong>10/06/2024</strong>&nbsp;đến hết ngày&nbsp;<strong>14/08/2024</strong>&nbsp;để thực hiện các công việc duy tu định kỳ...)</em>&nbsp;<br />
Tham quan&nbsp;<strong>Văn Miếu-Quốc Tử Giám, chùa Trấn Quốc, Hồ Tây, Hồ Trúc Bạch, Hồ Hoàn Kiếm.</strong><br />
<strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Đoàn tự do đi chợ, mua sắm đặc sản về làm quà cho người thân, gia đình.</li>
	<li>Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về&nbsp; TP.HCM.</li>
	<li>Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.</li>
</ul>
', N'Thành phố Hồ Chí Minh', N'Hà Nội', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1C900000000 AS DateTime), 30, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (35, N'Du lịch Quảng Ngãi', 1999000, N'Du lịch Quảng Ngãi - Đảo Lý Sơn - Đảo Bé - Vương Quốc Tỏi từ Sài Gòn', N'<p>Điểm nhấn hành trình</p>

<table border="0" cellpadding="15" cellspacing="15">
	<tbody>
		<tr>
			<td><strong>Hành trình</strong></td>
			<td><strong>Quảng Ngãi - Đảo Lý Sơn - Đảo Bé - Vương Quốc Tỏi</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình</strong></td>
			<td><strong>3 ngày 2 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành</strong></td>
			<td><strong>24/05; 10,17,24/09</strong></td>
		</tr>
		<tr>
			<td><strong>Vận chuyển</strong></td>
			<td><strong>Xe du lịch &amp; Máy Bay</strong></td>
		</tr>
	</tbody>
</table>

<p><em>Du lịch Quảng Ngãi - Đảo Lý Sơn - Đảo Bé - Vương Quốc Tỏi từ Sài Gòn 2022 .&nbsp;<a href="http://dulichviet.com.vn/du-lich-quang-ngai"><strong>Du lịch Quảng Ngãi</strong></a>- Lý Sơn được mệnh danh là Vương Quốc Tỏi, là hòn ngọc giữa biển khơi, thiên đường của lữ khách. Ai đã một lần đến Lý Sơn đều vấn vương như nhớ một chuyện tình. Bạn đã từng một lần đến với đất đảo? Dù có hay chưa, huyện đảo tiền tiêu này cũng luôn ngóng chờ bạn khám phá. Lý Sơn cách đất liền 16 hải lí (25.48 km), là hòn đảo duy nhất của Quảng Ngãi với nhiều tiềm năng về du lịch với các địa danh như: Chùa Hang, Chùa Đục, Mù Cu, Suối Chình, Âm Linh Tự, Đình Làng, Miếu Bà, nhà trưng bày đội Hoàng Sa Bắc Hải năm xưa… Đều được nhà nước xếp hạng là di tích lịch sử cấp tỉnh và cấp quốc gia. Bên cạnh đó, với nhiều đặc sản riêng biệt được người dân khai thác từ Biển Đông như: Cá, Mực, Ốc đủ loại, Đồn Đột, Hải Sâm, cua Hoàng Đế…</em></p>
', N'<p><span style="color:#1abc9c"><strong>NGÀY 1 |&nbsp;TP.HCM – SÂN BAY CHU LAI - ĐẢO LÝ SƠN (Ăn trưa, chiều)</strong></span></p>

<p><strong>Sáng:</strong>&nbsp;Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất ba tiếng.</p>

<ul>
	<li>Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi Lý Sơn. &nbsp;&nbsp; &nbsp;Đến sân bay Chu Lai, Hướng dẫn viên đón đoàn khởi hành đến Cảng Sa Kỳ, hướng dẫn viên làm thủ tục cho đoàn lên tàu ra đảo Lý Sơn.&nbsp;</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Dùng bữa trưa. Đoàn về nhận phòng nghỉ ngơi .</p>

<ul>
	<li>Đoàn tiếp tục &nbsp;tham quan danh lam thắng cảnh đẹp bậc nhất tại đảo đó là: Chùa Hang hay còn gọi là “Thiên khổng thạch tự “ nôm na là chùa nằm trong hang ,nó được hình thành vô cùng độc đáo do quá trình phun trào núi lửa và quá trình xâm thực nước biển năm xưa tạo thành, trước chùa là 1 khung cảnh đầy thơ mộng với hàng cây Bàng Vuông cổ thụ hàng trăm năm, bãi biển là dãy cát san hô dài trắng xóa nước trong như thạch .</li>
	<li>Đoàn tham quan Cột Cờ Chủ Quyền nằm trên đỉnh núi Thới Lới, ở đây chúng ta có thể chiêm ngưỡng vẻ đẹp toàn cảnh của đảo Lý Sơn. &nbsp; &nbsp; &nbsp; &nbsp;</li>
	<li>Điểm tham quan tiếp theo trên đào là &nbsp;Hang Câu, &nbsp;là một hang động to nằm dưới vách núi của đỉnh Thới Lới, bên trên vách núi có đàn hải âu tung cách và &nbsp;khi chiều về quý khách sẽ được chiêm ngưỡng ánh hoàng hôn tuyệt đẹp ,và &nbsp;trước hang là bãi cát san hô dài với làn nước trong xanh, chúng kết hợp với nhau tạo nên một khung cảnh thơ mộng và tuyệt đẹp. &nbsp; &nbsp;</li>
</ul>

<p><strong>Chiều:</strong>&nbsp;Dùng bữa chiều. Nghỉ đêm tại Lý Sơn</p>

<ul>
	<li>Tự do khám phá đảo buổi tối.</li>
</ul>

<p><span style="color:#1abc9c"><strong>NGÀY 2 |&nbsp;KHÁM PHÁ ĐẢO BÉ VÀ PHÍA TÂY ĐẢO LỚN (Ăn sáng, trưa, chiều)</strong></span></p>

<p><strong>Sáng:</strong>&nbsp;Dùng bữa sáng với món đặc sản trên đào&nbsp;</p>

<ul>
	<li>Hướng dẫn viên đưa quý khách đến với Đảo Bé, nơi đây được mệnh danh là Maldives của Việt Nam tại đây quý khách có thể thoải mái tắm biển dưới làn nước trong xanh và cùng nhau khám phá rạn san hô tuyệt đẹp của đảo, bãi cát trắng mịn kết hợp với hàng dừa cao ngút tạo nên một vẻ đẹp hoang sơ vô cùng đẹp.</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Dùng bữa trưa. Đoàn về nhận phòng nghỉ ngơi&nbsp;</p>

<ul>
	<li>Hướng dẫn viên tiếp tục đưa đoàn đi tham quan khám phá đảo Lý Sơn với các địa danh sau: bắt đầu tham quan điểm đầu tiên đó là : nhà trưng bày Hải Đội Hoàng Sa Bắc Hải, là nơi lưu giữ hơn hàng trăm hiện vật của những hùng binh năm xưa thể hiện chủ quyền biển đảo với hai quần đảo Trường Sa và Hoàng Sa.</li>
	<li>Đoàn tham quan ngôi chùa thứ hai đó là: Chùa Đục, là ngôi chùa vô cùng độc đáo của đảo &nbsp;nằm trên đỉnh núi Giáng Tiền. Thạch Cổng Tò Vò, là nơi có cấu tạo địa chất rất độc đáo, về chiều cảnh hoàng hôn buông xuống tạo nên một khung cảnh đẹp như tranh vẻ, sẽ làm cho du khách vô cùng thích thú.</li>
</ul>

<p><strong>Chiều:</strong>&nbsp;Dùng bữa chiều. Nghỉ đêm tại Lý Sơn</p>

<ul>
	<li>Tự do khám phá đảo buổi tối.</li>
</ul>

<p><span style="color:#1abc9c"><strong>NGÀY 3 |&nbsp;LÝ SƠN – CẢNG SA KỲ - CHU LAI – HỒ CHÍ MINH (Ăn sáng, trưa)</strong></span></p>

<p><strong>Sáng:</strong>&nbsp;Dùng bữa sáng với món đặc sản trên đào</p>

<ul>
	<li>Quý khách tự do nghỉ ngơi tại khách sạn hoặc mua sắm đặc sản địa phương về làm quà cho gia đình, người thân.</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Đoàn trả phòng lên tàu về lại cảng Sa Kỳ&nbsp;</li>
	<li>Hướng dẫn viên tiễn đoàn ra sân bay Chu Lai &nbsp;đón chuyến bay về TP.HCM.</li>
	<li>Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.</li>
</ul>
', N'Thành phố Hồ Chí Minh', N'Quảng Ngãi', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1E100000000 AS DateTime), 24, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (36, N'Du lịch Nha Trang', 2799000, N'Du lịch Nha Trang Hè - Tháp Bà Ponagar - Chùa Long Sơn - Winwonders từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Nha Trang - Vinwonders - Tháp Bà Ponagar - Nhà Thờ Đá - Vườn Nho Ninh Chữ</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>3 ngày 2 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Tối thứ 4,6 hàng tuần&nbsp;</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Di chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Xe du lịch đời mới&nbsp;</strong></span></span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><strong><a href="https://dulichviet.com.vn/du-lich-nha-trang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><span style="color:#3498db">Du lịch Nha Trang&nbsp;</span></a></strong>- Thành phố biển Nha Trang nổi tiếng với những cảnh quan thiên nhiên đẹp “mê hoặc” lòng người, hàng năm thu hút hàng trăm ngàn du khách cả trong và ngoài nước đến thăm quan nghỉ dưỡng. Nếu bạn đang tìm kiếm một chuyến du lịch đúng nghĩa nghỉ dưỡng thì Tour du lịch Nha Trang là sự lựa chọn tuyệt vời dành cho bạn. Đến với Thành phố biển Nha Trang bạn sẽ được thăm quan ngắm cảnh với rất nhiều những danh lam thắng cảnh nổi tiếng, được thử trải nghiệm câu tôm trên thuyền khi mặt trời đã ngả bóng,... Được thưởng thức nhiều món ăn hấp dẫn, cùng khí hậu mát mẻ,... Hứa hẹn đây sẽ là một kỳ nghỉ đầy thú vị và ý nghĩa dành cho bạn.</em></span></span></span></span></span></p>
</div>
', N'<p><span style="color:#1abc9c"><strong>NGÀY 1 |&nbsp;TP.HCM – PHAN THIẾT – NHA TRANG (Ăn sáng, trưa, chiều)</strong></span></p>

<p><strong>Sáng</strong>: Xe và Hướng Dẫn Viên Du Lịch Việt đón Quý khách tại điểm hẹn.<br />
- 5h30 Sáng tại Công Ty Du Lịch Việt – Số 217 Bis Nguyễn Thị Minh Khai , Quận 1 .&nbsp;<br />
- 6h00 : Nhà Văn Hóa Thanh Niên – Số 4 Phạm Ngọc Thạch, Quận 1&nbsp;<br />
-7h00 Ngã 4 Thủ Đức – Xa Lộ Hà Nội, TP Hồ Chí Minh (không có điểm gửi xe máy)<br />
– Ngã 4 Amata – Biên Hòa, Đồng Nai<br />
Khởi hành đi Nha Trang. Dùng bữa sáng tại ngã ba Dầu Giây.<br />
Đoàn tiếp tục lộ trình đến Phan Thiết.<br />
Hành trình trên quốc lộ 1A, khi đến đoạn giáp ranh Bình Thuận - Ninh Thuận, Quý khách chiêm ngưỡng cảnh đẹp mê hồn của biển Cà Nà với làn nước trong xanh, những bãi cát trải dài quanh co uốn lượn.<br />
<strong>Trưa</strong>: Dùng cơm trưa<br />
Đoàn đến Nha Trang tham quan.&nbsp;<br />
<strong>Chùa Long Sơn</strong>: ngôi chùa nổi tiếng nhất Nha Trang. Đỉnh đồi là bức tượng Kim Thân Phật tổ (còn gọi là tượng Phật trắng) ngồi thuyết pháp, tượng cao 21m, đài sen làm đế cao 7m.&nbsp;<br />
<strong>Nhà thờ đá (Nhà thờ Chánh tòa Kitô Vua)</strong>&nbsp;với nét kiến trúc độc đáo mang đậm phong cách Pháp.<br />
<strong>Chiều:</strong>&nbsp;nhận phòng. Dùng cơm chiều với món đặc sản nem Nha Trang.&nbsp;<br />
<strong>Tối:&nbsp;</strong>Tự do dạo biển, nghỉ đêm khách sạn tại Nha Trang.</p>

<p><span style="color:#1abc9c"><strong>NGÀY 2 |&nbsp;NHA TRANG – VINWONDERS/ BÙN KHOÁNG NÓNG (Ăn sáng, trưa) (Ăn tối tự túc)</strong></span></p>

<p><strong>Sáng:</strong>&nbsp;Dùng bữa sáng.&nbsp;<br />
<strong>Tháp Bà Ponagar</strong>: một công trình có quy mô lớn nhất và có vai trò quan trọng trong lịch sử nghệ thuật kiến trúc tôn giáo Chăm.<br />
<strong>Đoàn tham quan Mô hình nuôi chim yến</strong>, Quý khách sẽ được tận mắt<br />
chứng kiến quy trình nuôi, thu hoạch và chế biến tổ yến. Quý khách sẽ thưởng thức trà yến miễn phí&nbsp;<br />
<strong>Trưa:</strong>&nbsp;Dùng cơm trưa.<br />
Quý khách có thể tự do chọn một trong hai lựa chọn sau:</p>

<ul>
	<li><strong><em><u>Lựa chọn 1</u></em></strong><strong>: KDL Suối Khoáng Nha Trang I.resort&nbsp;</strong>– Massage cơ thể với hệ thống thủy lưc zaccuzi, ngâm mình trong&nbsp;<strong>Hồ Khoáng Nóng</strong>,&nbsp;<strong>Tắm Bùn</strong>…&nbsp;<em>(chi phí tự túc).</em></li>
	<li><strong><em><u>Lựa chọn 2:&nbsp;</u></em></strong>&nbsp;Quý khách khởi hành tham quan Vinpearl Harbour, tại đây du khách có thể tham gia vào những sự kiện, lễ hội Quốc tế bùng nổ suốt ngày đêm với sự xuất hiệncủa nhiều siêu sao thế giới và Việt Nam.</li>
</ul>

<p>Du khách đồng thời có thể trải nghiệm mua sắm 24tại BẾN CẢNG MUA SẮM và BẾN CẢNG ẨM THỰC của đa quốc gia.&nbsp;<em>(chi phí tự túc).</em></p>

<ul>
	<li><strong><em><u>Lựa chọn 3</u></em></strong><strong>:&nbsp;</strong>Quý khách khởi hành tham quan&nbsp;<strong>Vinwonders&nbsp;</strong><em>(chi phí tự túc).</em></li>
	<li><strong>Trò ch</strong><strong>ơi ngoài trời:</strong>&nbsp;đu quay cảm giác mạnh, đu quay dây văng, đu quay thú nhún, đu quay con voi, tàu lượn siêu tốc, đu quay vòng xoay, xe đạp bay, tàu hải tặc, thành phố vui nhộn, thú nhún, xiếc thú (3 xuất/ngày).</li>
	<li><strong>Trò ch</strong><strong>ơi trong nhà:</strong>&nbsp;phim bốn chiều, xe đụng, vườn cổ tích, thiên đường trẻ em, siêu thị game, phòng karaoke…</li>
	<li><strong>Khu thuỷ cung Vinpearlland</strong>&nbsp;với diện tích trên 3,400m2, là đại dương thu nhỏ với hơn 300 loài cá đẹp, quý hiếm và lạ mắt.</li>
	<li><strong>Khu công viên nước với các tr</strong><strong>ò ch</strong><strong>ơi cảm giác mạnh:</strong>&nbsp;khu trò chơi mạo hiểm, khu trò chơi dành cho trẻ em, hồ tạo sóng, dòng sông lười, khu trò chơi gia đình mạo hiểm…</li>
</ul>

<p><strong>Tối:</strong>&nbsp;Quý khách&nbsp;<strong>TỰ TÚC ĂN TỐI.</strong><br />
Nghỉ đêm tại Nha Trang. Quý khách tự do dạo phố, chợ đêm hoặc thưởng thức&nbsp;<strong>Hải sản</strong>&nbsp;tại&nbsp;<strong>Khu Tháp Bà&nbsp;</strong><em>(chi phí tự túc).</em></p>

<p><span style="color:#1abc9c"><strong>NGÀY 3 |&nbsp;NHA TRANG – NINH CHỮ – TP.HCM (Ăn sáng, trưa)</strong></span></p>

<p><strong>Sáng:</strong>&nbsp;Dùng bữa sáng.&nbsp;<br />
Đoàn làm thủ tục trả phòng khởi hành về Ninh Chữ.&nbsp;<br />
Đoàn đến&nbsp;<strong>Đồng Cừu</strong>&nbsp;dạo bước đến đồng cừu bạn sẽ có cảm giác như lạc vào nông trại cừu cổ tích ở Châu Âu. Không gian đồng cừu trải rộng mênh mông, bạt ngàn với màu xanh tươi mới của cỏ cây và trên nền xanh ấy điểm xuyến nhiều chấm trắng nhỏ xinh của những chú cừu thân thiện.&nbsp;<br />
Quý khách tham quan&nbsp;<strong>Vườn Nho tại Phan Rang</strong>. Đoàn thoải mái chụp ảnh và check – in tại vườn nho. Trải nghiệm hái nho tại vườn chọn những quả nho ngon về làm quà cho ngườithân, quý khách tự do mua sắm đặc sản tại Phan Rang<br />
Trưa : Dùng cơm trưa.&nbsp;<br />
Đoàn khởi hành về Sài Gòn.&nbsp;<br />
Về đến TP.HCM – Chia tay và hẹn gặp lại Quý khách.</p>
', N'Thành phố Hồ Chí Minh', N'Nha Trang', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1E100000000 AS DateTime), 24, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (37, N'Du lịch Nha Trang - Đà Lạt', 6599000, N'Du lịch Nha Trang - Đà Lạt 5 ngày 4 đêm dịp Lễ 2/9 từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:118.992px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Nha Trang - Dốc Lết - Tắm Khoáng - Vinwonders - Đà Lạt - Đồi Chè Cầu Đất - Đà Lạt View</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>5 ngày 4 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>27,28,29,30/04/2024</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Vận chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Xe du lịch đời mới</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
		</tr>
	</tbody>
</table>

<div style="padding:0px; text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><em><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-nha-trang-da-lat-5-ngay-4-dem-dip-le-304-tu-sai-gon-2024" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Du lịch Nha Trang - Đà Lạt 5 ngày 4 đêm dịp Lễ 30/4 từ Sài Gòn 2024</strong></a>&nbsp;-&nbsp;hãy cùng gia đình và bạn bè tận hưởng cảm giác vi vu trên những cung đường&nbsp;đẹp nhất Việt Nam. Tận hưởng không khí tại 2 thành phố du lịch nổi tiếng là Nha Trang và Đà Lạt.&nbsp;Nha Trang thành phố biển náo nhiệt bậc nhất Việt Nam.&nbsp;Với những bãi&nbsp;biển xanh cát trắng trải dài&nbsp;và những thắng cảnh đặc sắc.&nbsp;<a href="https://dulichviet.com.vn/tour-du-lich-le-304-15" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Tour Lễ 30/4</strong>&nbsp;</a>du khách còn được lên thăm Đà Lạt thành phố ngàn hoa….Đà Lạt mang một vẻ đẹp say đắm&nbsp;lòng người.&nbsp;<a href="https://dulichviet.com.vn/" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Du Lịch Việt</strong></a>&nbsp;hứa hẹn sẽ mang đến cho du khách một kỳ nghỉ trọn vẹn và đáng nhớ.</em></span></span></span></span></div>
</div>
', N'<p><strong>NGÀY 1 |&nbsp;TP.HCM – PHAN THIẾT– NHA TRANG (Ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng:&nbsp;</strong>Xe và Hướng Dẫn Viên Du Lịch Việt đón Quý khách tại điểm hẹn.</p>

<ul>
	<li>Khởi hành đi Nha Trang. Dùng bữa sáng tại ngã ba Dầu Giây.</li>
	<li>Đoàn tiếp tục lộ trình đến Phan Thiết.</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng cơm trưa</p>

<ul>
	<li>Hành trình trên quốc lộ 1A, khi đến đoạn giáp ranh Bình Thuận - Ninh Thuận, Quý khách chiêm ngưỡng cảnh đẹp mê hồn của biển Cà Nà với làn nước trong xanh, những bãi cát trải dài quanh co uốn lượn.</li>
</ul>

<p><strong>Chiều:&nbsp;</strong>Đến Nha Trang, nhận phòng. Dùng cơm chiều.<br />
<strong>Tối:&nbsp;</strong>Tự do dạo biển, nghỉ đêm khách sạn tại Nha Trang.</p>

<p><strong>NGÀY 2 |&nbsp;NHA TRANG – DỐC LẾT – VINWONDERS (Ăn sáng, trưa) (Ăn tối tự túc)</strong></p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng. Khởi hành đi&nbsp;<strong>Dốc Lết</strong>&nbsp;<strong>–</strong>&nbsp;một trong những bãi tắm đẹp nhất miền trung.&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Nha-Trang/bai-bien-doc-let-du-lich-viet.jpg" /><br />
<em>Bãi biển Dốc Lết</em></p>

<ul>
	<li>Tắm biển, thưởng thức hải sản tươi sống (<em>chi phí tự túc).</em>&nbsp;</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.<br />
Về lại&nbsp;<strong>Nha Trang.&nbsp;</strong>Quý khách có thể tự do chọn một trong hai lựa chọn sau:</p>

<ul>
	<li><strong><em><u>Lựa chọn 1</u></em></strong><strong>: KDL Suối Khoáng I.resort&nbsp;</strong>– với những dịch vụ “<strong>Ôn Tuyền Thủy Liệu Pháp</strong>”, ngâm mình trong&nbsp;<strong>hồ khoáng nóng</strong>,&nbsp;<strong>tắm bùn</strong>…(<em>chi phí tự túc).</em></li>
</ul>

<p>&nbsp;</p>

<p><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Nha-Trang/tam-bun-du-lich-viet.jpg" /></em><br />
<em>Hồ khoáng nóng tắm bùn</em></p>

<ul>
	<li><strong><em><u>Lựa chọn 2</u></em></strong><strong>:&nbsp;</strong>&nbsp;Quý khách khởi hành tham quan&nbsp;<strong>Vinwonders&nbsp;</strong>(<em>chi phí tự túc).</em></li>
	<li><strong>Trò ch</strong><strong>ơi ngoài trời:</strong>&nbsp;đu quay cảm giác mạnh, đu quay dây văng, đu quay thú nhún, đu quay con voi, tàu lượn siêu tốc, đu quay vòng xoay, xe đạp bay, tàu hải tặc, thành phố vui nhộn, thú nhún, xiếc thú (3 xuất/ngày).</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Nha-Trang/du-quay-day-vang-du-lich-viet.jpg" /><br />
<em>Du quay dây văng</em></p>

<ul>
	<li><strong>Trò ch</strong><strong>ơi trong nhà:</strong>&nbsp;phim bốn chiều, xe đụng, vườn cổ tích, thiên đường trẻ em, siêu thị game, phòng karaoke…</li>
	<li><strong>Khu thuỷ cung Vinpearland</strong>&nbsp;với diện tích trên 3,400m2, là đại dương thu nhỏ với hơn 300 loài cá đẹp, quý hiếm và lạ mắt.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Nha-Trang/khu-thuy-cung-vinpearland-du-lich-viet.jpg" /><br />
<em>Khu thuỷ cung Vinpearland</em></p>

<ul>
	<li><strong>Khu công viên nước với các tr</strong><strong>ò ch</strong><strong>ơi cảm giác mạnh:</strong>&nbsp;khu trò chơi mạo hiểm, khu trò chơi dành cho trẻ em, hồ tạo sóng, dòng sông lười, khu trò chơi gia đình mạo hiểm…</li>
</ul>

<p><strong>Tối:&nbsp;</strong>Quý khách&nbsp;<strong>TỰ TÚC ĂN TỐI.</strong><br />
Tự do dạo phố biển. Nghỉ đêm tại Nha Trang.</p>

<p><strong>NGÀY 3 |&nbsp;NHA TRANG – THÁP BÀ PONAGAR – ĐÀ LẠT (Ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng:&nbsp;</strong>Quý khách dùng bữa sáng<br />
Tham quan thành phố Nha Trang:</p>

<ul>
	<li><strong>Tháp Bà Ponagar</strong>: một công trình có quy mô lớn nhất và có vai trò quan trọng trong lịch sử nghệ thuật kiến trúc tôn giáo Chăm.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Nha-Trang/thap-ba-ponagar-du-lich-nha-trang-du-lich-viet.jpg" /><br />
<em>Tháp Bà Ponagar: một công trình có quy mô lớn nhất</em></p>

<ul>
	<li><strong>Chùa Long Sơn</strong>: ngôi chùa nổi tiếng nhất Nha Trang. Đỉnh đồi là bức tượng Kim Thân Phật tổ (còn gọi là tượng Phật trắng) ngồi thuyết pháp, tượng cao 21m, đài sen làm đế cao 7m.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Nha-Trang/chua-long-son-tour-nha-trang-du-lich-viet.jpg" /><br />
<em>Chùa Long Sơn</em></p>

<p>Mua sắm tại Chợ Đầm<br />
<strong>Trưa:&nbsp;</strong>Ăn trưa, trả phòng.&nbsp;</p>

<ul>
	<li>Khởi hành đi&nbsp;<strong>Đà Lạt</strong>, du khách đi theo con đường mới ngang qua&nbsp;<strong>Thành Cổ Diên Khánh</strong>, nhà máy&nbsp;<strong>nước khoáng Đảnh Thạnh</strong>,<strong>&nbsp;làng dân tộc Kờ Tu</strong>, ngoạn cảnh thiên nhiên và những Đồi Thông.&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/lang-dan-toc-co-tu-du-lich-viet.jpg" /><br />
<em>Làng dân tộc Kờ Tu</em></p>

<p><strong>Chiều:&nbsp;</strong>Đến Đà Lạt nhận phòng. Ăn tối, tự do khám phá Đà lạt.</p>

<p><strong>NGÀY 4 |&nbsp;ĐÀ LẠT – ĐỒI CHÈ CẦU ĐẤT - NHÀ THỜ DON BOSCO (Ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng:</strong>&nbsp; Dùng bữa sáng.</p>

<ul>
	<li>Tham quan&nbsp;<strong>Đồi Chè Cầu Đất (Cầu Đất Farm)&nbsp;</strong>với độ cao trên 1.650 m so với mặt nước biển nên khi hậu mát mẻ, khung cảnh vừa yên bình vừa hung vĩ với bạt ngàn đồi chè hiện ngay trước mắt. Diện tích rộng trên 220 ha, đồi chè Cầu Đất được đánh giá là địa điểm check-in hoành tráng và chất hàng đầu tại Đà Lạt, với điểm nhấn là những chiếc&nbsp;<strong>“tua bin điện gió”</strong>&nbsp;trắng mới toanh hòa mình vào thảm trà xanh tươi tắn.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/du-lich-da-lat-doi-che-cau-dat-du-lich-viet(1).jpg" /><br />
<em>Đòi chè cầu đất</em></p>

<ul>
	<li>Dừng chân tại&nbsp;<strong>Phindeli Cầu Đất Farm</strong>, điểm check-in view điện gió – đồi trà, nổi bật với những toa tàu đỏ mang những nét cổ điển hoặc nhâm nhi một ly cà phê, thưởng ngoạn cảnh ngọn đồi xanh mát. (chi phí tự túc)</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/du-lich-da-lat-phin-deli-du-lich-viet.jpg" /><br />
<em>Phindeli Cầu Đất Farm</em></p>

<ul>
	<li>Viếng thăm chùa&nbsp;<strong>Linh Phước (Chùa Ve Chai)</strong>&nbsp;là một công trình kiến trúc khảm sành đặc sắc của thành phố Đà Lạt với hình ảnh con rồng dài 49 m được làm bằng 12.000 vỏ chai bia.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/chua-linh-phuoc-du-lich-viet(1).jpg" /><br />
<em>Chùa Linh Phước</em></p>

<ul>
	<li>Đoàn đến với&nbsp;<strong>Đà Lạt View Cafe,&nbsp;</strong>với hình ảnh&nbsp;<strong>Cổng trời thứ 2</strong>&nbsp;phá cách, độc đáo. Quý khách có thể thưởng thức một ly café thơm ngon, chụp ngay vài bức hình checkin trên chiếc cầu tình duyên màu đỏ bắt ngang qua rừng thông tuyệt đẹp để khoe với bạn bè, người thân.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/da-lat-View-Cafe-du-lich-viet-2024.jpg" /><br />
<em>Đà Lạt view cafe</em></p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Tham quan nhà thờ&nbsp;<strong>Don Bosco&nbsp;</strong>với nét kiến trúc đậm chất Châu Âu cổ điển, dễ thấy nhất là những cột trụ khổng lồ, dãy hành lang trải dài, đường nét trạm khắc tinh xảo, mái chóp nhọn,…</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/nha-tho-Don-Bosco-du-lich-viet.jpg" /><br />
<em>Nhà thờ Don Bosco</em><br />
&nbsp;</p>

<ul>
	<li><strong>Ga Đà Lạt</strong>, nhà ga cổ nhất Đông Dương còn sót lại ở Việt Nam. Quý khách tự do chiêm ngưỡng những đầu máy xe lửa cổ cùng những kiến trúc độc đáo đến từ thập niên 90.</li>
	<li><strong>Quảng trường Lâm Viên</strong>&nbsp;với tuyệt tác kiến trúc bằng kính: Bông Hoa Dã Quỳ và Nụ Hoa Atiso.</li>
</ul>

<p><strong>Tối:&nbsp;</strong>Dùng cơm tối.&nbsp;</p>

<ul>
	<li>Tự do dạo phố núi, và mua sắm đặc sản tại chợ đêm Đà Lạt.<strong>&nbsp;</strong>Nghỉ đêm tại&nbsp;<strong>Đà Lạt</strong></li>
</ul>

<p><strong>NGÀY 5 |&nbsp;ĐÀ LẠT – TP. HỒ CHÍ MINH (Ăn sáng, trưa)</strong></p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng, trả phòng, đoàn tham quan&nbsp;<strong>mua sắm tại Chợ Đà Lạt.&nbsp;</strong></p>

<ul>
	<li>Khởi hành đến&nbsp;<strong>Mê Linh coffee Garden</strong>, một không gian được thiết kế mở. Quý khách có thể vừa thưởng thức hương vị cà phê chồn đặc trưng&nbsp;<em>(chi phí tự túc)</em>, vừa có một tầm nhìn trọn vẹn về cảnh sắc Đà Lạt 360 độ.</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Khởi hành về TP.HCM, đến Bảo Lộc dùng cơm trưa.&nbsp;</p>

<ul>
	<li>Đến TP.HCM. Kết thúc chuyến đi, chia tay đoàn và hẹn gặp lại Quý khách.</li>
</ul>
', N'Thành phố Hồ Chí Minh', N'Đà Lạt', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1E300000000 AS DateTime), 24, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (38, N'Du lịch Cần Thơ', 4299000, N'Du lịch miền Tây Hè - Mỹ Tho - Châu Đốc - Cần Thơ - Cà Mau - Bạc Liêu - Sóc Trăng từ Sài Gòn 2024', N'<p><strong>Điểm nhấn hành trình</strong></p>

<table align="left" border="0" cellpadding="10" cellspacing="10">
	<tbody>
		<tr>
			<td><strong>Hành trình:</strong></td>
			<td><strong>Mỹ Tho - Châu Đốc - Cần Thơ - Cà Mau - Năm Căn - Đất Mũi - Bạc Liêu - Sóc Trăng</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình:</strong></td>
			<td><strong>4 ngày 3 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành:</strong></td>
			<td><strong>Thứ 2,5,7 hàng tuần</strong></td>
		</tr>
		<tr>
			<td><strong>Vận chuyển:</strong></td>
			<td><strong>Xe du lịch đời mới</strong></td>
		</tr>
	</tbody>
</table>

<p><em><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-tien-giang"><strong>Du lịch Mỹ Tho</strong></a>&nbsp;- Xuôi về Miền Tây, Du Khách có dịp trải nghiệm thú vị khi hòa mình vào cuộc sống miệt vườn, thưởng thức những món ăn đặc sản đậm đà hương vị của vùng đồng bằng cây ngọt trái lành. Đến Cần Thơ, vùng đất mệnh danh là “Tây Đô”, lên thuyền du ngoại chợ nổi Cái Răng, trực tiếp trải nghiệm nét văn hóa độc đáo trên sông nước. Ghé Sóc Trăng, thăm Chùa Dơi hơn 400 năm tuổi, vừa chiêm ngưỡng lối kiến trúc Khơmer độc đáo vừa nghe kể về đàn dơi huyền bí trụ ngụ trong khuôn viên chùa. Đặt chân đến Đất Mũi, vùng đất cuối cùng của Tổ quốc, đứng trên đài quan sát, Du Khách sẽ thu vào tầm mắt khung cảnh rừng mắm, rừng đước xanh rì nối nhau, trải dài ngút ngàn, tiếp giáp với mây trời. Đến Bạc Liêu, khám phá miền quê hương của chàng Công Tử tiêu tiền như nước, nghe nhắc lại những giai thoại nức tiếng gần xa trong quá khứ về sự xa hoa. Ngoài ra, Du khách còn được tìm hiểu về điệu Dạ Cổ Hoài Lang, thăm những di tích lịch sử, điểm du lịch sinh thái và đặc biệt là những điểm du lịch tâm linh gắn liền với cảnh quan và các câu chuyện cổ xưa. Nhanh tay đặt tour&nbsp;<a href="https://dulichviet.com.vn/du-lich-mien-tay-he-my-tho-chau-doc-can-tho-ca-mau-bac-lieu-soc-trang-tu-sai-gon-2024"><strong>Du lịch miền Tây Hè - Mỹ Tho - Châu Đốc - Cần Thơ - Cà Mau - Bạc Liêu - Sóc Trăng từ Sài Gòn 2024</strong></a>&nbsp;tại&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;chúng tôi đi và cảm nhận nhé..</em></p>
', N'<p><strong>NGÀY 1 |&nbsp;TP.HCM – MỸ THO - CHÂU ĐỐC (Ăn sáng, trưa, tối)</strong></p>

<p><strong>Sáng: 06h00:&nbsp;</strong>Xe và Hướng Dẫn Viên&nbsp;<strong>Công Ty Du Lị</strong><strong>ch Việ</strong><strong>t</strong>&nbsp;đón Quý khách tại điểm hẹn.<br />
Bắt đầu chương trình tour miền tây 1 ngày Mỹ Tho – Bến Tre (cách thành phố Hồ Chí Minh khoảng 80km). Đến Mỹ Tho Quý khách dừng chân tham quan:</p>

<ul>
	<li><strong>Chùa Vĩnh Tràng</strong>&nbsp;– đây là một ngôi chùa nổi tiếng ở Nam Bộ, được xếp hạng di tích lịch sử cấp quốc gia). Sau đó quý khách lên thuyền tham quan những bè nuôi cá nổi trên sông Cưủ Long bằng thuyền lớn, tìm hiểu nghề nuôi cá của dân địa phương. Thuyền đi ngang qua cầu Rạch Miễu (là một cây cầu dây văng nối liền 2 tỉnh Tiền Giang và Bến Tre).</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/My-Tho/du-lich-my-tho-tet-am-lich-chua-vinh-trang-du-lich-viet.jpg" /></p>

<ul>
	<li><strong>Qua cù lao Thới Sơn</strong>&nbsp;(hay còn gọi là cồn Lân) du khách tản bộ trên đường làng, tham quan tìm hiểu cuộc sống của người dân địa phương, vườn cây ăn trái, thưởng thức các loại trái cây theo mùa và nghe “Đờn ca tài tử” – một nét đặc trưng của người dân Nam Bộ.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/My-Tho/cu-lao-thoi-son-du-lich-viet(1).jpg" /><br />
Cù lao&nbsp; Thới Sơn</p>

<p>Tiếp đến quý khách sẽ được ghé thăm trang trại nuôi ong mật, thưởng thức trà mật ong chanh.<br />
Sau đó, quý khách sẽ được trải nghiệm hương vị của miền tây khi ngồi trên xuồng ba lá len lỏi vào rạch nhỏ ngắm nhìn 2 hàng dừa nước thiên nhiên và phong cảnh đơn sơ của miệt vườn.</p>

<ul>
	<li><strong>Tham quan trại nuôi cá sấu, rắn</strong>,... Cơ sở sản xuất hàng thủ công mỹ nghệ được làm bằng dừa.</li>
</ul>

<p><strong>12h00</strong>: Đoàn dùng bữa trưa ngay tại miệt vườn với đặc sản là đặc sản miệt vườn. Sau bữa trưa quý khách nghỉ ngơi, thư giãn trên những chiếc võng hoặc đạp xe đạp dạo quanh đường làng tận hưởng cảnh đẹp của vùng đất xứ dừa hay thú vị hơn là dành thời gian tham quan trại nuôi cá sấu và câu cá sấu.<br />
<strong>Buổi chiều</strong>: Quý khách trở lại tàu thưởng thức đặc sản dừa Xiêm Bến Tre miễn phí sau đó về lại bến tàu Mỹ Tho, sau&nbsp; đó quý khách lên xe khởi hành đi Châu Đốc. Trên đường ngắm cảnh cầu Mỹ Thuận, cây cầu nổi tiếng nhất miền tây. Hành trình đưa quý khách đi dọc miền tây qua các địa danh nổi tiếng…Đến thành phố Châu Đốc nhận phòng khách sạn, dùng cơm tối tại nhà hàng.</p>

<p><strong>NGÀY 2 |&nbsp;NÚI SAM - TRÀ SƯ – CẦN THƠ (Ăn sáng, trưa, tối)</strong></p>

<p><strong>Buổi sáng</strong>: Quý khách ăn sáng tại khách sạn.&nbsp;<br />
Sau đó xe và hướng dẫn viên đưa đoàn vào núi Sam viếng miếu&nbsp;<strong>Bà Chúa Xứ,</strong><strong>&nbsp;lăng Thoại Ngọc Hầu, chùa Tây An Cổ Tự…</strong></p>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Chau-Doc/mieu-ba-chua-xu-nui-sam-chau-doc-du-lich-viet.jpg" /></strong><br />
Chùa Bà&nbsp;</p>

<ul>
	<li>Đoàn xuống núi tiếp tục đến&nbsp;<strong>rừng tràm Trà Sư</strong>&nbsp;tham quan hệ sinh thái rừng tràm ngập nước tuyệt đẹp. Check in bến nước Trà Sư với nhiều tiểu cảnh xinh đẹp, chụp ảnh cầu Kiều bắt qua sông vào rừng Trà Trà Sư. Hướng dẫn đưa quý khách đến thăm cầu Tre Vạn Bước xuyên rừng tràm với khung cảnh tuyệt đẹp. Tại đây quý khách được tận mắt xem những chú chim dạn dĩ kiếm mồi trên những đám bèo màu xanh. những đàn cò, diệt, trích lượng lờ, ríu rít trên những tán tràm xanh, và dưới những đám bèo xanh lơ dưới mặt nước. Đò đưa quý khách đi một vòng vào lung tràm xanh mướt giữa rừng rộng bằng kích thước một sân bóng lớn, quý khách tha hồ check in, chụp ảnh.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Chau-Doc/du-lich-chau-doc-dip-le-30-4-du-lich-viet(2).jpg" /><br />
Rừng Tràm Trà&nbsp; Sư</p>

<ul>
	<li>Tàu tiếp tục đưa quý khách đến con đường độc đạo giữa rừng tràm đến trạm dừng chân tiếp theo, đi bộ trên đường đất giữa rừng tràm săn những bức ảnh đẹp, chụp ảnh cây cầu bắt ngang qua bờ kênh. Tàu đưa quý khách về lại bến đò kết thúc chuyến tham quan rừng tràm Trà Sư.</li>
</ul>

<p><strong>Buổi chiều</strong>: Xe đưa quý khách khởi hành đi&nbsp;<strong>Cần Thơ</strong>, dừng chân tham quan trại cá sấu Long Xuyên nghỉ ngơi.</p>

<ul>
	<li>Đến Cần thơ quý khách nhận phòng và dùng cơm tối trên nhà hàng du thuyền Ninh Kiều thưởng thức các món đặc sản miền tây và nghe những làn điệu đàn ca tài tử mượt mà trên dòng sông Hậu thơ mộng… Tàu cập bến quý khách tự do khám phá phố Tây Đô về đêm, chợ đêm Ninh Kiều, phố ẩm thực, check in cầu tình yêu Ninh Kiều…</li>
</ul>

<p><strong>NGÀY 3 |&nbsp;SÓC TRĂNG - MŨI CÀ MAU (Ăn sáng, trưa, tối)</strong></p>

<p><strong>Buổi sáng</strong>: 05h30 quý khách đi chợ nổi Cái Răng đây là chợ nổi duy nhất đông đúc và nổi tiếng nhất miền tây còn được bảo tồn – Chuyên mua bán trao đổi hàng hóa trên sông, đặc biệt các loại rau, củ, quả và trái cây bốn mùa, ghé tham quan cơ sở làm hủ tiếu và các loại khô đặc sản miền tây.</p>

<ul>
	<li>Quý khách về khách sạn dùng điểm tâm sáng, trả phòng. Sau đó quý khách lên xe đi Cà Mau. Đoàn đến&nbsp;<strong>Sóc Trăng viếng chùa Som Rong</strong>&nbsp;– Ngôi chùa cổ hơn 300 tuổi có kiến trúc đẹp nhất hiện nay.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Soc-Trang/chua-sam-rong-du-lich-viet.jpg" /><br />
Sóc Trăng&nbsp; viếng chùa Som Rong</p>

<ul>
	<li>Quý khách dừng chân dùng cơm trưa tại nhà hàng ở Cà Mau. Sau đó tiếp tục hành trình khám phá mũi Cà Mau.</li>
</ul>

<p><strong>Buổi chiều</strong>, quý khách vào khám phá khu dự trữ sinh quyển&nbsp;<strong>Mũi Cà Mau</strong>&nbsp;– Ngắm cảnh hệ sinh thái rừng ngập mặn phong phú nơi có những bãi bồi rừng tràm, rừng đước bạt ngàn.</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ca-Mau/pano-bieu-tuong-ca-mau-du-lich-viet.jpg" /><br />
&nbsp;</p>

<ul>
	<li>Quý khách sẽ được tận mắt ngắm cảnh và chụp ảnh lưu niệm tại mốc tọa độ Quốc gia – GPS 0001, Panô biểu tượng Mũi Cà Mau – Hình con thuyền rẽ sóng ra khơi, cột mốc đường Hồ Chí Minh điểm cuối Cà Mau, cột cờ đất mũi Cà Mau. Xe đưa quý khách về thành phố Cà Mau ăn tối, nhận phòng nghỉ ngơi.</li>
	<li>Tối tự do khám phá ẩm thực Cà Mau.</li>
</ul>

<p><strong>NGÀY 4 |&nbsp;CÀ MAU – BẠC LIÊU – SÀI GÒN (Ăn sáng, trưa)</strong></p>

<p><strong>Buổi sáng</strong>: Quý khách ăn sáng, trả phòng, sau đó lên xe khởi hành về Bạc Liêu:</p>

<ul>
	<li>Viếng nhà thờ Tắc Sậy - Giá Rai Bạc Liêu</li>
	<li>Viếng mộ Cha Trương Bữu Diệp</li>
	<li>Nhà Công Tử Bạc Liêu</li>
	<li>Check in nhà hát ba nón lá bạc Liêu.</li>
</ul>

<p>Sau đó xe đưa quý khách về ngã bảy Hậu Giang dùng cơm trưa với các món đặc sản, sau đó lên xe về TP.HCM. Trên đường về tham quan phim trường&nbsp;<strong>Căn Nhà Màu Tím – Quý khách có 45 phút tự do tham quan&nbsp;</strong><em>(Vé vào cổng căn nhà màu tím quý khách tự túc)</em><br />
<strong>Buổi chiều</strong>: Quý khách tiếp tục hành trình về lại Tp.HCM. dừng chân nghỉ ngơi tại trạm dừng chân chân Cái Bè Tiền Giang<br />
Về đến TP.HCM, đưa Quýkhách về điểm đón ban đầu. Chia tay Quý khách và hẹn gặp lại.</p>
', N'Thành phố Hồ Chí Minh', N'Cần Thơ', CAST(0x0000B1E500000000 AS DateTime), CAST(0x0000B1E800000000 AS DateTime), 24, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (39, N'Du lịch Úc', 41990000, N'Du lịch Úc mùa Thu - Sydney - Melbourne 6N5Đ từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:118.992px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Sydney - Blue Mountains - Melbourne - Ballarat</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>6 ngày 5 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>15/09; 06,20/10/2024</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Thời gian bay</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">JQ 62 (22:40 - 11:20+1)-JQ 63 (15:15 - 21:05)&nbsp;</span></strong></span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><strong><em>Du lịch Úc mùa Thu&nbsp;</em></strong><em>n</em><em>hững ngày Hè nóng bức qua đi, “Nàng Thu” của xứ sở chuột túi đang đến với sắc màu vàng, cam rực rỡ nhưng không kém phần lãng mạn làm say đắm bao người.&nbsp;<strong>Mùa thu nước Úc</strong>&nbsp;chính là vẻ đẹp khiến cả thế giới lay động. Mùa Thu ở Úc diễn ra từ tháng 3 đến tháng 5, đây là thời điểm lý tưởng để đến và tham quan đất nước này. Úc được biết đến là một trong những địa điểm du lịch đẹp nhất thế giới, đặc biệt là trong mùa Thu với nhiều cảnh quan độc đáo và đầy màu sắc. Dưới đây là một số điểm đến đẹp nhất của mùa thu ở Úc,&nbsp;Blue Mountains&nbsp;khu vực núi lớn ở New South Wales, nơi có những cánh rừng xanh thẳm và những thác nước lớn, tạo nên một khung cảnh đẹp mê hồn mùa thu có bầu không khí mát mẻ và khô ráo, là thời điểm lý tưởng để khám phá các vùng đất mới và tham gia vào các hoạt động ngoài trời..</em></span></span></span></span></span></p>
</div>
', N'<p><strong>NGÀY 1 |&nbsp;TẬP TRUNG TẠI SÂN BAY TÂN SƠN NHÂT - SYDNEY</strong></p>

<p>Quý khách tập trung tại sân bay Tân Sơn Nhất – Ga đi Quốc Tế, HDV công ty Du Lịch Việt giúp quý khách làm thủ tục hàng không đáp chuyến bay&nbsp;<strong>JQ 62 (22:40 - 11:20+1)</strong>&nbsp;đi Sydney. Nghỉ đêm trên máy bay.</p>

<p><strong>NGÀY 2 |&nbsp;SYDNEY – CITY TOUR (Trên máy bay, Ăn trưa, tối)</strong></p>

<p>Đến Sydney, Quý khách làm thủ tục nhập cảnh. Sau đó, Xe và HDV đưa đoàn tham quan:</p>

<ul>
	<li><strong>Ghế ngồi Bà Macquaries&nbsp;</strong>nơi du khách có thể lưu lại những hình ảnh &nbsp;đẹp nhất về thành phố biển Sydney.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/ghe-Macquaries-du-lich-tet-am-lich-du-lich-viet.jpg" /><br />
<em>Du lich Thu tham quan Ghế ngồi Bà Macquaries</em></p>

<ul>
	<li>Chụp ảnh lưu niệm bên ngoài tại<strong>&nbsp;Sydney Opera House&nbsp;</strong>với hình dáng đặc biệt nhưng&nbsp; những chiếc vỏ<strong>&nbsp;</strong>sò nằm chồng lên nhau. Đây là một trong những kỳ quan về kiến trúc nổi tiếng trên thế giới.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/Sydney-Opera-House-viet-media-travel.jpg" /><br />
<em>Tour Úc&nbsp;mùa Thu 2024 -&nbsp;</em><em>Chụp ảnh lưu niệm bên ngoài tại<strong>&nbsp;Sydney Opera House</strong></em></p>

<ul>
	<li><strong>Cầu cảng Sydney Harbour Bridge&nbsp;</strong>được đưa vào sử&nbsp; dụng từ năm &nbsp;1932 với hình dáng như&nbsp; một chiếc móc áo bằng sắt khổng lồ.</li>
</ul>

<p>Quý khách dùng cơm trưa tại nhà hàng, Sau đó tiêp tục tham quan:</p>

<ul>
	<li><strong>Khu The Rocks –&nbsp;</strong>khu phố cổ của Sydney: nơi giao thoa giữa phong cách cổ và hiện đại</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/khu-the-rock-pho-co-sydney-du-lich-viet.jpg" /><br />
<em><strong>Khu The Rocks –&nbsp;</strong>khu phố cổ của Sydney</em></p>

<ul>
	<li><strong>Angle Place&nbsp;-&nbsp;</strong>một hẻm nhỏ trung tâm thương mại Sydney với 120 lồng chim trống rỗng treo phía trên là sáng tạo của nghệ sĩ Michael Thomas Hillvào năm 2009 tác phẩm sắp đặt này còn có tên gọi là “Bài ca bị lãng quên” trở thành một nét kiến trúc cực kỳ đặc sắc không thể thiếu của &nbsp;con đường.</li>
	<li><strong>Cầu cảng tình yêu Darling Harbour –&nbsp;</strong>trung tâm giải trí quan trọng nhất của Sydney, được mệnh danh là New York của Châu Đại Dương.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/cau-cang-tinh-yeu-Darling-Harbour-du-lich-viet-2024.jpg" /><br />
<em>Tour du lịch Úc&nbsp;mùa Thu 2024 tham quan Cầu cảng tình yêu Darling Harbour</em><br />
&nbsp;</p>

<p>Quý khách dùng bữa tối tại nhà hàng<strong>.&nbsp;</strong>Sau đó Xe và HDV đưa quý khách &nbsp;về khách sạn nghỉ ngơi.<br />
Sau khi dùng cơm tối ở nhà hàng địa phương. Đoàn về khách sạn nhận phòng nghỉ ngơi hoặc tự do khám phá thành phố về đêm.&nbsp;<br />
<strong><em>Hay đoàn có thể đăng ký tham gia những chương trình sau (chi phí tự túc):</em></strong></p>

<ul>
	<li><strong>Bảo tàng sáp Madame Tussauds</strong>&nbsp;nằm tại Darling Harbour, bảo tàng là một bộ sưu tập lớn những pho tượng của các nhân vật nổi tiếng nước Úc và Thế giới, những nhân vật chính trị…</li>
	<li><strong>Sealife Aquarium</strong>&nbsp;nằm ở phía đông cảng Darling (Darling Harbour), và &nbsp;phía bắc của cầu Pyrmont. Có khoảng 6,000 con cá và sinh vật dưới nước thuộc hơn 650 loại khác nhau. Aquarium (Bể cá) này tạo lại môi trường sống của nhiều vùng khác nhau ở nước Úc, như sông ngòi phía Nam (Southern rivers), sông phía Bắc (Northern rivers), cá nàng tiên (mermaid lagoon), đại dương phía Nam (Southern Ocean), đại dương phía Bắc…</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/Sealife-Aquarium-du-lich-viet.jpg" /><br />
&nbsp;</p>

<ul>
	<li><strong>Sydney Tower Eye</strong>&nbsp;là nơi bản cần phải đến nếu bạn muốn ngắm toàn cảnh Sydney từ trên cao! Với tháp hình trụ, bạn có thể chiêm ngưỡng 360 độ Sydney, từ những bãi cát vàng, đến núi Blue Mountain. Khi đi &nbsp;trên tháp bạn sẽ có dây bảo hiểm, các thành được bao bọc kính giúp bạn có cảm giác tuyệt nhất!</li>
</ul>

<p><strong>NGÀY 3 |&nbsp;SYDNEY - BLUE MOUNTAINS (Ăn ba bữa)</strong></p>

<p>Đoàn dùng điểm tâm tại khách sạn. Sau đó, xe cùng HDV đưa Đoàn khởi hành đi tham quan:</p>

<ul>
	<li><strong>Vườn thú Sydney</strong>&nbsp;với hơn 4.000 loài động vật bao gồm các loài động vật quý hiếm và có nguy cơ tuyệt chủng trên thế giới. Quý khách có thể ngắm nhìn, chụp ảnh cùng với những chú Kangaroos, gấu túi Koala…</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/tham-quan-vuon-thu-hoang-da-du-lich-viet.jpg" /><br />
<em>Vườn thú Sydney</em></p>

<ul>
	<li><strong>Blue moutains</strong>&nbsp;- di sản thế giới, nơi còn lưu giữ nguyên vẹn những nét hoang sơ từ thời thổ dân sinh sống.&nbsp;<strong>Blue Mountains</strong>&nbsp;nổi tiếng với ngọn núi&nbsp;<strong>Three Sisters</strong>&nbsp;hay còn gọi là núi&nbsp;<strong>Ba Chị Em</strong>&nbsp;hùng vĩ.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/Blue-moutain-du-lich-viet.jpg" /><br />
<em>Blue Moutains</em><br />
&nbsp;</p>

<ul>
	<li><strong>Trải nghiệm tàu kéo Scenic World</strong>&nbsp;- Quý khách sẽ có cơ hội khám phá ngắm nhìn toàn cảnh Blue Mountains. Tại Scenic Skyway, du &nbsp;khách sẽ đi giữa ngọn vách đá và chiêm ngưỡng các tán rừng nhiệt đới qua sàn kính.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/trai-nghiem-tau-keo-Scenic-World-du-lich-viet.jpg" /><br />
<em>Trải nghiệm tàu kéo Scenic World</em></p>

<p>Đoàn dùng bữa tối tại nhà hàng địa phương. Sau đó, đoàn về khách sạn nhận phòng nghỉ ngơi hoặc tự do khám phá thành phố về đêm.</p>

<p><strong>NGÀY 4 |&nbsp;SYDNEY - MELBOURNE (Ăn ba bữa)</strong></p>

<p>Đoàn dùng điểm tâm tại khách sạn. Sau đó, xe cùng HDV đưa Đoàn ra sân bay, đáp chuyến bay&nbsp;<strong>JQ 509 (09:10 - 10:45)</strong>&nbsp;khởi hành đi Melbourne, thành phố lớn thứ hai của nước Úc. Đến nơi, Đoàn tham quan những &nbsp;thắng cảnh đẹp của thành phố như:</p>

<ul>
	<li><strong>Quảng trường Federation</strong>&nbsp;là trung tâm cộng đồng và không gian công cộng chính của Melbourne. Với tên gọi thân mật là “Quảng trường Fed”, quảng trường này nằm tại trung tâm của Melbourne và cạnh đó là Nhà ga Flinders Street.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/quang-truong-Federation-du-lich-viet.jpg" /><br />
<em>Tour Úc&nbsp;mùa Thu tham quan Quảng trường Federation</em></p>

<ul>
	<li><strong>Nhà ga Flinders</strong>&nbsp;- Biểu tượng lâu đời của Melbourne.</li>
	<li><strong>Yarra River Walk</strong>&nbsp;– Đoàn có thể tản bộ trên cung đường, ngắm toàn cảnh thành phố, các dãy nhà trọc trời, ngắm đường ray xe lửa trên cao, gần đó là bãi cỏ và hồ ở Royal Botanic Gardens.</li>
	<li><strong>Khu phố nghệ thuật Arts Precinct</strong>&nbsp;sẽ cho du khách có cái nhìn toàn &nbsp;cảnh về văn hóa của tầng lớp thượng lưu Melbourne. Arts Precinct có Nhà triển lãm tranh, Trung tâm nghệ thuật Victoria, Phòng hòa nhạc Melbourne, Nhà hát và Viện Bảo tàng nghệ thuật biểu diễn.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/khu-pho-nghe-thuat-du-lich-viet.jpg" /><br />
<em>Khu phố nghệ thuật Arts Precinct</em></p>

<ul>
	<li><strong>Nhà thờ ST. Patrick</strong>&nbsp;– đây là nhà thờ cao nhất và lớn nhất ở Úc, xây dựng trong giai đoạn 1858 – 1940. Được xây từ đá xanh và sa thạch, nhà thờ là ví dụ hàng đầu của lối kiến trúc Gothic-revival.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/nha-tho-ST_-Mary-du-lich-viet.jpg" /><br />
<em>Nhà thờ ST. Patrick – đây là nhà thờ cao nhất và lớn nhất ở Úc</em></p>

<ul>
	<li><strong>Queen Victoria Market</strong>&nbsp;– Chợ Nữ hoàng Victoria là một trong những &nbsp;khu chợ trời lớn nhất ở Nam Bán Cầu và chắc chắn là chợ thú vị nhất ở Melbourne, chỉ đóng cửa mỗi thứ Hai và thứ Tư.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/Queen-Victoria-Building-du-lich-uc-du-lich-viet.jpg" /><br />
<em>Queen Victoria Market – Chợ Nữ hoàng Victoria</em></p>

<ul>
	<li><strong>Vườn bách thảo hoàng gia</strong>&nbsp;– Royal Bontanic Gardens - là một trong &nbsp;những điểm du lịch hàng đầu của khu công viên xanh mở rộng về phía Nam sông Yarra. Được đánh giá là một trong những vườn bách thảo tốt nhất thế giới, nơi đây thu hút 1,5 triệu du khách mỗi năm.</li>
</ul>

<p>Xe đưa Đoàn đi ăn tối ở nhà hàng địa phương, sau đó về khách sạn nhận phòng và tự do nghỉ ngơi.</p>

<p><strong>NGÀY 5 |&nbsp;MELBOURNE – BALLARAT (Ăn ba bữa)</strong></p>

<p>Đoàn dùng bữa sáng ở khách sạn. Xe đón đoàn đi tham quan:</p>

<ul>
	<li><strong>Trang trại Anne Winery</strong>&nbsp;chuyên chế biến rượu nho hảo hạng, Đoàn sẽ được nếm thử rượu nho đặc sản của Úc.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/trang-trai-Anne-Winery-du-lich-viet.jpg" /><br />
<em>Trang trại Anne Winery chuyên chế biến rượu nho hảo hạng</em></p>

<p>Đoàn dùng bữa trưa tại nhà hàng địa phương, sau đó tham quan:</p>

<ul>
	<li><strong>Khu Sovereign Hill, thành phố Ballarat</strong>&nbsp;- bảo tàng ngoài trời hay "bảo tàng sống" độc nhất vô nhị của nước Úc, với những căn nhà thiết kế theo kiến trúc thế kỷ 18, hàng trăm người Úc trong những trang phục thời xưa đang tái hiện hoạt động thường ngày của Ballarat thời ấy.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/Khu-Sovereign-Hill-du-lich-viet.jpg" /><br />
<em>Khu Sovereign Hill, thành phố Ballarat</em></p>

<ul>
	<li><strong>Bảo tàng vàng – Gold Museum</strong>, là nơi thu thập, lưu trữ và phân tích nhiều mẫu vật và di sản lịch sử trong những thập kỉ khai thác vàng rầm rộ khắp thị trấn Ballarat. Bảo tàng vốn là một phần của Hiệp hội Bảo tàng Đồi Sovereign và hoạt động song song với điểm du lịch đồi mỏ vàng Sovereign.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-uc/bao-tang-vang-du-lich-viet.jpg" /><br />
<em>Bảo tàng vàng – Gold Museum, là nơi lưu trữ và phân tích nhiều mẫu vật và di sản lịch sử</em></p>

<p>Đoàn ăn tối tại nhà hàng ở địa phương. Sau đó, đoàn về khách sạn nhận phòng và nghỉ ngơi.</p>

<p><strong>NGÀY 6 |&nbsp;MELBOURNE - TP.HCM (Ăn sáng)</strong></p>

<p>Quý khách dùng điểm tâm sáng tại khách sạn và trả phòng. Xe đưa đoàn ra sân bay đáp chuyến bay&nbsp;<strong>JQ 63 (15:15 - 21:05)&nbsp;</strong>về lại Việt Nam. Đến phi trường Tân Sơn Nhất – TP. HCM, sau khi làm thủ tục nhập cảnh Việt Nam &amp; nhận lại hành lý cá nhân. Trưởng đoàn Du lịch Việt chia tay Quý khách. Kết thúc chuyến tham quan.</p>
', N'Thành phố Hồ Chí Minh', N'Úc', CAST(0x0000B1FD00000000 AS DateTime), CAST(0x0000B20200000000 AS DateTime), 10, 2)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (40, N'Du lịch Buôn Ma Thuột', 4299000, N'Du lịch Buôn Ma Thuột - Pleiku - Kon Tum khu du lịch Măng Đen từ Sài Gòn giá tốt 2024', N'<p>Điểm nhấn hành trình</p>

<table border="0" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td><strong>Hành trình</strong></td>
			<td><strong>Buôn Ma Thuột - Pleiku - Kon Tum khu du lịch Măng Đen</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình</strong></td>
			<td><strong>4 ngày 3 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành</strong></td>
			<td><strong>Thứ 5 hàng tuần</strong></td>
		</tr>
		<tr>
			<td><strong>Vận chuyển</strong></td>
			<td><strong>Xe Du Lịch Đời Mới&nbsp;</strong></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p><em><strong><a href="https://dulichviet.com.vn/du-lich-buon-ma-thuot">Du lịch Buôn Ma Thuột</a></strong>-&nbsp;<strong>Tour Buôn Ma Thuột - Pleiku - Kon Tum khu&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot">du lịch Măng Đen</a>&nbsp;từ Sài Gòn giá tốt 2024</strong>. Nổi tiếng với vẻ đẹp hoang dại của vùng đất đại ngàn, với thác nước trắng xóa và hồ nước đẹp mênh mang trong ánh nắng hoàng hôn, đến với Buôn Mê Thuột, du khách sẽ được khám phá thác D’ray Nur, tham quan Buôn Đôn, ngắm nhìn không gian kiến trúc độc đáo mang đậm bản sắc của dân tộc Tây Nguyên và tận hưởng không gian cà phê đặc sắc, nhâm nhi những ly cà phê đậm đà, thơm ngon vào hàng bậc nhất. Thăm biển hồ T’Nưng – đôi mắt Pleiku, với những hàng thông cổ thụ tuyệt đẹp, cánh đồng chè trải dài xanh ngát. Viếng Đức mẹ Măng Đen, nơi được mệnh danh là Đà lạt thứ 2. Khu&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot"><strong>Du lich Mang Den</strong></a>&nbsp;được phát triển du lịch mạnh mẽ như người anh em Đà Lạt của mình, nhưng ai đi&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot"><strong>Tour Du lịch Măng Đen</strong></a>&nbsp;rồi thì sẽ khó mà quên được.&nbsp;<a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot"><strong>Tour Măng Đen</strong></a>&nbsp;nằm ở độ cao 1200 mét so với mực nước biển, được bao quanh bởi các dãy núi và sở hữu hệ thực vật rừng nguyên sinh đa dạng. Bên cạnh đó, thị trấn Măng Đen cũng có nền khí hậu miền núi ôn hòa mát dịu quanh năm và canh quan đẹp đẽ nên được ví như là Đà Lạt của vùng Bắc Tây Nguyên.</em></p>
', N'<p><strong>NGÀY 1 |&nbsp;TP.HỒ CHÍ MINH – THÁC DRAY NUR – BUÔN MA THUỘT (ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng:&nbsp;Xe và Hướng Dẫn Viên Du Lịch Việt đón Quý khách tại điểm hẹn khởi hành đi Buôn Ma Thuột.</strong></p>

<ul>
	<li>Trên đường, đoàn nghe thuyết minh về các địa danh nổi tiếng đi ngang qua như Đồng Xoài, Sóc Bom Bo, Bù Đăng và cảnh núi rừng hùng vĩ.</li>
</ul>

<p><strong>Trưa: Dùng cơm trưa.</strong></p>

<ul>
	<li>Đoàn dừng chân tham quan thác&nbsp;<strong>D’ray Nur</strong>&nbsp;với vẻ đẹp thơ mộng và bí ẩn của ngọn thác hùng vĩ nhất Tây Nguyên.</li>
</ul>

<p>&nbsp;</p>

<p><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot" target="_top"><img alt="Thác D''Ray Nur" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Buon-Ma-Thuot/du-lich-buon-ma-thuot-tham-quan-thac-d''ray-nur-du-lich-viet.jpg" /></a><br />
<em>Thác D''ray Nur</em></p>

<ul>
	<li>Đoàn tiếp tục hành trình đến&nbsp;<strong>TP. Buôn Ma Thuột.</strong></li>
</ul>

<p><strong>Tối: Dùng cơm tối. Nghỉ đêm tại Buôn Ma Thuột.</strong></p>

<ul>
	<li>Quý khách tự do nghỉ ngơi tại khách sạn hoặc dạo phố núi, thưởng thức đặc sản “ly cà phê Ban Mê”, mua sắm tại chợ đêm.</li>
</ul>

<p><strong>NGÀY 2 |&nbsp;BUÔN MA THUỘT – PLEIKU – CHÙA MINH THÀNH (ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng: Dùng bữa sáng.</strong></p>

<ul>
	<li>Đoàn tham quan&nbsp;<strong>Buôn Ðôn</strong>, nơi chung sống của cộng đồng các sắc tộc: Ê Ðê, M’nông, Gia rai, Lào, Thái, Quý khách được dịp trải nghiệm cảnh sinh hoạt của buôn làng, thưởng thức những món ăn đặc sản của vùng Tây Nguyên trù phú (chi phí tự túc) và đặc biệt là được ngắm ngôi nhà dài hàng trăm mét của đồng bào Tây Nguyên.</li>
	<li>Quý khách trải nghiệm cảm giác thú vị với cái lắc lư nghiêng ngã của&nbsp;<strong>cầu treo Buôn Đôn</strong>, với chiếc cầu treo dài trên 100m bắc ngang lưng chừng những rặng si già vượt qua dòng sông dữ đến ốc đảo Ea Nô, với bãi tắm tiên, hệ thống nhà hàng, nhà nghỉ ...</li>
	<li>Tham quan&nbsp;<strong>nhà sàn cổ</strong>&nbsp;được xây dựng theo kiến trúc Lào đã tồn tại trên 120 năm, tham quan&nbsp;<strong>mộ Vua săn voi “KhunJuNốp”</strong>&nbsp;và nghe chuyện kể về Vua săn voi.</li>
</ul>

<p><strong>Trưa: Đoàn dùng cơm trưa.</strong></p>

<ul>
	<li>Đoàn khởi hành đi Pleiku. Tham quan&nbsp;<strong>Biển hồ T’Nưng – Đôi mắt Pleiku</strong>&nbsp;làm say đắm lòng người bởi vẻ đẹp hoang sơ, thơ mộng của hồ tự nhiên đẹp nhất tại Tây Nguyên.</li>
</ul>

<p><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot" target="_top"><img alt="" id="Biển Hồ T''Nưng" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Buon-Ma-Thuot/du-lich-buon-ma-thuot-tham-quan-bien-ho-t''nung-du-lich-viet.jpg" /></a><br />
<em>Biển hồ T’Nưng – Đôi mắt Pleiku</em><br />
&nbsp;</p>

<ul>
	<li>Đoàn ghé thăm&nbsp;<strong>Chùa Minh Thành</strong>, với kiến trúc mang hơi thở của xứ&nbsp;<strong>Phù Tang</strong>&nbsp;cùng những mái chóp uốn cong điển hình. Sau những chặng đường dài, Quý khách như được xua tan mọi căng thẳng, mệt nhọc khi được trải nghiệm không khí nhẹ nhàng, bình yên của chốn bồng lai tiên cảnh.</li>
</ul>

<p><strong>Tối: Đoàn dùng cơm tối. Nghỉ đêm tại Pleiku.</strong></p>

<p><strong>NGÀY 3 |&nbsp;KHU DU LỊCH MĂNG ĐEN – CẦU TREO KONKLOR (ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng: Dùng bữa sáng.</strong></p>

<ul>
	<li>Đoàn khởi hành đến&nbsp;<strong>Măng Đen</strong>&nbsp;– nơi được ví như&nbsp;<strong>Đà Lạt</strong>&nbsp;thứ 2 trên đỉnh Trường Sơn hùng vỹ.</li>
	<li>Tại đây, Quý khách tham quan: Nét hoang sơ, thơ mộng của&nbsp;<strong>hồ Đăk Ke</strong>, lạc lối trong khu rừng thần tiên với không gian lành lạnh, tiếng chim ríu rít và tiếng thác đổ của&nbsp;<strong>thác Pa Sỹ</strong>, được bao bọc bởi cả một mảng cây xanh xung quanh.</li>
	<li>Viếng thăm khu hành hương&nbsp;<strong>Đức Mẹ Măng Đen</strong>, nơi nổi tiếng linh thiêng, đón hàng trăm lượt du khách mỗi ngày.</li>
</ul>

<p><strong>Trưa: Dùng cơm trưa.&nbsp;</strong></p>

<ul>
	<li>Tham quan&nbsp;<strong>Thành phố Kon Tum</strong>, với&nbsp;<strong>Cầu treo Konklor</strong>, cây cầu dây văng nổi bật sắc cam, nối liền hai bờ Đăkbla. Ngắm nhìn nhà rông Kon Klor, mang đậm kiến trúc Ba Na và văn hóa truyền thống Tây Nguyên.&nbsp;</li>
</ul>

<p><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-buon-ma-thuot-pleiku-kon-tum-khu-du-lich-mang-den-tu-sai-gon-gia-tot" target="_top"><img alt="" id="Cầu treo Konklor" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Buon-Ma-Thuot/tour-buon-ma-thuot-di-qua-cau-treo-konklor-du-lich-viet.jpg" /></a><br />
<em>Cầu treo Konklor</em></p>

<ul>
	<li>Ghé thăm&nbsp;<strong>Nhà thờ Chính Tòa (Nhà thờ gỗ)</strong>&nbsp;với tuổi đời hơn 100 năm, được xây dựng năm 1913 theo phương pháp thủ công, kết hợp giữa phong cách Roman và kiểu nhà sàn truyền thống của người Bana nơi đây.</li>
	<li>Đoàn trở về&nbsp;<strong>Pleiku</strong>, tham quan&nbsp;<strong>Biển Hồ chè</strong>&nbsp;với hàng thông cổ thụ tuyệt đẹp và cánh đồng chè trải dài xanh ngát.</li>
</ul>

<p><strong>Tối: Đoàn dùng cơm tối. Nghỉ đêm tại Pleiku.</strong></p>

<p><strong>NGÀY 4 |&nbsp;PLEIKU – BUÔN MA THUỘT – TP. HCM (ăn sáng, trưa)</strong></p>

<p><strong>Sáng:</strong>&nbsp; Dùng bữa sáng.</p>

<ul>
	<li>Đoàn khởi hành về thành phố cao nguyên&nbsp;<strong>Buôn Ma Thuột</strong>.&nbsp;</li>
	<li>Đoàn checkin&nbsp;<strong>“Song tượng Thịnh vượng”</strong>&nbsp;– biểu tượng thủ phủ 5 tỉnh Tây Nguyên, được biết đến là công trình điểm nhấn mới nhất ở Buôn Ma Thuột. Biểu tượng hình ảnh đàn voi, dấu ấn đặc trưng của văn hoá núi rừng với chú voi đầu đàn hùng dũng đang bước chân về vùng đất mới, trù phú, ấm no và hạnh phúc</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Dùng cơm trưa tại nhà hàng ở&nbsp;<strong>Buôn Ma Thuột</strong>.</p>

<ul>
	<li>Đoàn tiếp tục hành trình về TP.HCM, kết thúc chuyến đi, chia tay đoàn và hẹn gặp lại Quý khách.</li>
</ul>
', N'Thành phố Hồ Chí Minh', N'Buôn Ma Thuột', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1E200000000 AS DateTime), 24, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (41, N'Du lịch Thanh Hóa', 7999000, N'Du lịch mùa Thu - Tour Du lịch Thanh Hóa - Pù Luông - Vịnh Hạ Long - Yên Từ từ Sài Gòn 2024', N'<p><strong>Điểm nhấn hành trình</strong></p>

<table border="0" cellpadding="15" cellspacing="15">
	<tbody>
		<tr>
			<td><strong>Hành trình</strong></td>
			<td><strong>Pù Luông – Vịnh Hạ Long – Yên Tử - Tràng An - Bái Đính - Ninh Bình</strong></td>
		</tr>
		<tr>
			<td><strong>Lịch trình</strong></td>
			<td><strong>4 ngày 3 đêm</strong></td>
		</tr>
		<tr>
			<td><strong>Khởi hành</strong></td>
			<td><strong>07,21/10; 04,18/11; 02,16/12/2022</strong></td>
		</tr>
	</tbody>
</table>

<p><em>Du lịch mùa Thu - Tour Du lịch Thanh Hóa - Pù Luông - Vịnh Hạ Long - Yên Từ từ Sài Gòn 2022. Không cần phải đi đến những vùng đất Tây Bắc xa xôi, chỉ cần tới Pù Luông Thanh Hóa, bạn đã có thể đắm chìm trong một thiên nhiên hoang sơ của núi rừng, hít thở bầu không khí trong lành mát dịu và chiêm ngưỡng tất cả nét đẹp dung dị hòa quyện với mây trời.&nbsp;Pù Luông trong tiếng Thái là đỉnh núi cao nhất. Khu bảo tồn thiên nhiên Pù Luông thuộc hai huyện Bá Thước và Quan Hóa, cách thành phố Thanh Hóa 130 km về phía Tây Bắc. Với diện tích hơn 17.600 ha cùng hệ động thực vật phong phú, Pù Luông gây ấn tượng với du khách bằng vẻ đẹp hoang sơ của những khu rừng rậm nguyên sinh, những thửa ruộng bậc thang cùng với cuộc sống yên bình của đồng bào dân tộc miền núi. Đây là điểm du lịch hấp dẫn dành cho những ai yêu thiên nhiên và muốn khám phá những vùng đất mới.</em></p>
', N'<p><strong>NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI – YÊN TỬ (Ăn trưa, chiều)</strong></p>

<p>Sáng:&nbsp; Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất ba tiếng.</p>

<ul>
	<li>Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Hà Nội</strong>.</li>
	<li>Đến sân bay&nbsp;<strong>Nội Bài</strong>, Hướng dẫn viên đón đoàn khởi hành đến&nbsp;<strong>Hạ Long</strong>, trên đường dừng chân tham quan&nbsp;<strong>núi Yên Tử</strong>&nbsp;- ngọn núi cao 1068 m so với mực nước biển, một thắng cảnh thiên nhiên còn lưu giữ hệ thống các di tích lịch sử văn hóa gắn với sự ra đời, hình thành và phát triển của thiền phái Trúc Lâm Yên Tử, được mệnh danh là&nbsp;<strong>“đất tổ Phật giáo Việt Nam”</strong>.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Yen-Tu/du-lich-yen-tu-mua-thu-du-lich-viet.jpg" /><br />
&nbsp;</p>

<p><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.<br />
Quý khách lên núi bằng cáp treo&nbsp;<em>(chi phí cáp treo tự túc),&nbsp;</em>tham quan&nbsp;<strong>chùa Hoa Yên, Bảo Tháp, Trúc Lâm Tam Tổ, Hàng Tùng 700 tuổi</strong>…xuống núi tham quan&nbsp;<strong>Thiền Viện Trúc Lâm&nbsp;</strong>với quả cầu Như Ý nặng 6 tấn được xếp kỷ lục guiness Việt Nam.<br />
Đoàn khởi hành về thành phố Hạ Long.<br />
<strong>Chiều:&nbsp;</strong>Dùng bữa chiều. Nghỉ đêm tại Hạ Long.<br />
Quý khách tự do dạo phố, mua sắm tại chợ đêm hoặc tham gia khu&nbsp;<strong>Sunworld Hạ Long Park</strong>&nbsp;với tất cả khu trò chơi trong nhà, ngoài trời hoành tráng có các khu Công viên Rồng, Cáp treo Nữ Hoàng vòng quay Sun wheel…<em>(chi phí tự túc).</em></p>

<p><strong>NGÀY 2 |&nbsp;VỊNH HẠ LONG – NINH BÌNH – CHÙA BÁI ĐÍNH (Ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng</strong>: Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đoàn xuống thuyền ngoạn cảnh&nbsp;<strong>Vịnh Hạ Long</strong>&nbsp;– Di sản thiên nhiên thế giới với hàng ngàn đảo đá có hình dạng kỳ vị - chiêm ngưỡng vẻ đẹp trau chuốt, lộng lẫy của động&nbsp;<strong>Thiên Cung</strong>, vẻ đẹp siêu nhiên của hòn&nbsp;<strong>Đỉnh Hương, Gà Chọi, Chó Đá</strong>…</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/du-lich-ha-long-mua-thu-thien-cung-du-lich-viet.jpg" /></p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Khởi hành đi&nbsp;<strong>Ninh Bình</strong>, nơi có&nbsp;<strong>danh thắng Tràng An</strong>&nbsp;nơi được UNESCO công nhận là di sản hỗn hợp văn hóa và thiên nhiên của thế giới.</li>
	<li>Tham quan&nbsp;<strong>chùa Bái Đính</strong>&nbsp;– ngôi chùa có nhiều kỷ lục nhất Việt Nam (ngôi chùa có diện tích rộng nhất – Tượng Phật bằng đồng lớn nhất Việt Nam).</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Chua-Bai-Dinh/du-lich-mua-thu-tham-quan-chua-bai-dinh-du-lich-viet.jpg" /></p>

<p><strong>Tối:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Ninh Bình.</strong></p>

<ul>
	<li>Quý khách có thể tự do dạo phố, thưởng thức các món đặc sản Ninh Binh như thịt dê núi, ốc núi, nem Yên Mạc, cơm cháy,...​​​​​​&nbsp;</li>
</ul>

<p><strong>NGÀY 3 |&nbsp;TRÀNG AN – PÙ LUÔNG (Ăn sáng, trưa, chiều)</strong></p>

<p>Sáng:&nbsp; Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Đoàn xuôi thuyền đi dọc theo suối giữa cánh đồng lúa thăm&nbsp;<strong>Khu du lịch Tràng An</strong>&nbsp;nơi những dải đá vôi, thung lũng và những sông ngòi đan</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Trang-An/du-lich-mua-thu-trang-an-du-lich-viet.jpg" /><br />
&nbsp;</p>

<ul>
	<li>xen tạo nên một không gian huyền ảo, kỳ bí, quý khách đi đò thăm&nbsp;<strong>Hang sáng, Hang tối, Hang nấu rượu</strong>&nbsp;và tìm hiểu văn hóa lịch sử nơi đây.</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Khởi hành đi&nbsp;<strong>Pù Luông</strong>, trên đường đi, đoàn sẽ chiêm ngưỡng những thửa ruộng bậc thang đặc trưng của núi rừng Tây Bắc, ngắm nhìn khu bảo tồn thiên nhiên Pù Luông hùng vĩ và nguyên sơ.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Thanh-Hoa/du-lich-pu-luong-mua-thu-du-lich-viet.jpg" /><br />
&nbsp;</p>

<p><strong>Tối:</strong>&nbsp; Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Pù Luông.</strong></p>

<p><strong>NGÀY 4 |&nbsp;PÙ LUÔNG – THÁC HIÊU – TP.HCM (Ăn sáng, trưa)</strong></p>

<p>Sáng: Dùng bữa sáng tại khách sạn.</p>

<ul>
	<li>Đoàn khám phá&nbsp;<strong>Pù Luông</strong>, xuyên qua những cánh đồng ruộng bậc thang, băng qua con suối đến với&nbsp;<strong>Chợ Phiên Phố Đoàn</strong>&nbsp;để hiểu thêm về cuộc sống của người dân địa phương, tham quan&nbsp;<strong>Thác Hiêu, Guồng Quay Nước.</strong></li>
</ul>

<p><br />
<strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Thanh-Hoa/du-lich-pu-luong-guong-quay-nuoc-du-lich-viet.jpg" /></strong><br />
<br />
<strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Đoàn khởi hành về Hà Nội, Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về TP.HCM.</li>
	<li>Kết thúc chuyến tham quan, chia tay đoàn và hẹn gặp lại.</li>
</ul>
', N'Thành phố Hồ Chí Minh', N'Thanh Hóa', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1E200000000 AS DateTime), 24, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (42, N'Du lịch Đà Lạt', 4399000, N'Du lịch Đà Lạt Lễ 2/9 - Thiền Viện Trúc Lâm - Nhà Thờ Đon Bosco từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Hành trình</span></strong></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Đà Lạt View - Thiền Viện Trúc Lâm - Đồi Chè Cầu Đất - Nhà Thờ Don Bosco</span></strong></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Lịch trình</span></strong></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">3 ngày 2 đêm</span></strong></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Khởi hành</span></strong></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>27,28,29,30/04/2024</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Vận chuyển</span></strong></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Xe du lịch đời mới</span></strong></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><a href="https://dulichviet.com.vn/du-lich-da-lat" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear; font-weight:bold"><span style="color:#3498db">Du lịch Đà Lạt</span></a>&nbsp;cùng&nbsp;<a href="https://dulichviet.com.vn/" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Du Lịch Việt</strong></a>&nbsp;sẽ đưa quý khách đến với thành phố nổi tiếng bậc nhất Việt Nam với sự thơ mộng và lãng mạn đặc trưng của mình. Đà Lạt được ví như một Paris thu nhỏ với view đẹp, thu hút lượng khách du lịch lớn mỗi năm trải nghiệm, khám phá. Du lịch Đà Lạt hẳn là ai cũng muốn tìm và ngắm những địa điểm view đẹp. Đà Lạt là một địa điểm du lịch, nghỉ dưỡng lý tưởng được đông đảo lượng khách du lịch đổ về hằng năm. Được thiên nhiên ưu ái ban cho Đà Lạt cảnh quan thơ mộng trữ tình với rừng núi hùng vỹ, xanh bạt ngàn. Còn gì tuyệt vời hơn khi vừa có chuyến nghỉ dưỡng đúng nghĩa vừa lưu lại được những kỉ niệm của cả chuyến đi.Thật thú vị đúng không nào hãy nhanh tay đặt Tour&nbsp;<strong><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-da-lat-le-304-thien-vien-truc-lam-nha-tho-don-bosco-tu-sai-gon-2024" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Du lịch Đà Lạt Lễ 30/4 - Thiền Viện Trúc Lâm - &nbsp;Nhà Thờ Đon Bosco từ Sài Gòn 2024</a>&nbsp;&nbsp;</strong>tại Du Lịch Việt chúng tôi đi và cảm nhận nhiều hơn..&nbsp;</em></span></span></span></span></span></p>
</div>
', N'<p><strong>NGÀY 1 |&nbsp;TP.HCM – THIỀN VIỆN TRÚC LÂM - ĐÀ LẠT (ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng:</strong>&nbsp; Xe và Hướng Dẫn Viên<strong>&nbsp;Du Lịch Việt</strong>&nbsp;đón Quý khách tại điểm hẹn khởi hành đi&nbsp;<strong>Đà Lạt</strong>.&nbsp;</p>

<ul>
	<li>Đoàn dùng bữa sáng tại&nbsp;<strong>Ngã Ba Dầu Dây</strong>. Đoàn tiếp tục khởi hành đến&nbsp;<strong>TP. Đà Lạt</strong>.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/nga-ba-dau-giay-du-lich-viet(1).jpg" /><br />
<em>Ngã ba Dầu Dây</em></p>

<p><strong>Trưa:</strong>&nbsp; Dùng cơm trưa tại nhà hàng<strong>.</strong></p>

<ul>
	<li>Tham quan&nbsp;<strong>Thiền Viện Trúc Lâm</strong>, đi cáp treo qua đồi<strong>&nbsp;</strong>Rôbin&nbsp;<em>(chi phí tự túc),</em>&nbsp;ngắm cảnh rừng thông,&nbsp;<strong>hồ Tuyền Lâm, núi Phượng Hoàng</strong>&nbsp;từ trên cao.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/thien-vien-truc-lam-da-lat-du-lich-viet.jpg" /><br />
<em>Thiền viện Trúc Lâm</em><br />
&nbsp;</p>

<p><strong>Tối:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>Dùng cơm tối, nhận phòng nghỉ ngơi</p>

<ul>
	<li>Quý khách tự túc dạo thành phố&nbsp;<strong>Đà Lạt</strong>&nbsp;về đêm, ngắm cảnh&nbsp;<strong>Hồ Xuân Hương</strong>, thưởng thức hương vị cà phê phố núi&nbsp;<em>(chi phí tự túc).</em>&nbsp;Nghỉ đêm khách sạn tại&nbsp;<strong>Đà Lạt</strong>.</li>
</ul>

<p><strong>NGÀY 2 |&nbsp;ĐỒI CHÈ CẦU ĐẤT – ĐÀ LẠT VIEW ( Ăn sáng, trưa, chiều)</strong></p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</p>

<ul>
	<li>Tham quan&nbsp;<strong>Đồi Chè Cầu Đất (Cầu Đất Farm)&nbsp;</strong>với độ cao trên 1.650 m so với mặt nước biển nên khi hậu mát mẻ, khung cảnh vừa yên bình vừa hung vĩ với bạt ngàn đồi chè hiện ngay trước mắt. Diện tích rộng trên 220 ha, đồi chè Cầu Đất được đánh giá là địa điểm check-in hoành tráng và chất hàng đầu tại Đà Lạt, với điểm nhấn là những chiếc&nbsp;<strong>“tua bin điện gió”</strong>&nbsp;trắng mới toanh hòa mình vào thảm trà xanh tươi tắn.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/doi-che-cau-dat-tour-da-lat-du-lich-viet.jpg" /><br />
<em>Đồi chè Cầu Đất</em></p>

<ul>
	<li>Dừng chân tại&nbsp;<strong>Phindeli Cầu Đất Farm</strong>, điểm check-in view điện gió – đồi trà, nổi bật với những toa tàu đỏ mang những nét cổ điển hoặc nhâm nhi một ly cà phê, thưởng ngoạn cảnh ngọn đồi xanh mát. (chi phí tự túc)</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/du-lich-da-lat-phin-deli-du-lich-viet.jpg" /><br />
<em>Phindeli Cầu Đất Farm</em></p>

<ul>
	<li>Viếng thăm chùa&nbsp;<strong>Linh Phước (Chùa Ve Chai)</strong>&nbsp;là một công trình kiến trúc khảm sành đặc sắc của thành phố Đà Lạt với hình ảnh con rồng dài 49 m được làm bằng 12.000 vỏ chai bia.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/chua-linh-phuoc-chua-ve-chai-du-lich-viet.jpg" /><br />
<em>Chùa Linh Phước</em></p>

<ul>
	<li>Đoàn đến với&nbsp;<strong>Đà Lạt View Cafe,&nbsp;</strong>với hình ảnh&nbsp;<strong>Cổng trời thứ 2</strong>&nbsp;phá cách, độc đáo. Quý khách có thể thưởng thức một ly café thơm ngon, chụp ngay vài bức hình checkin trên chiếc cầu tình duyên màu đỏ bắt ngang qua rừng thông tuyệt đẹp để khoe với bạn bè, người thân.</li>
</ul>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</p>

<ul>
	<li>Tham quan nhà thờ&nbsp;<strong>Don Bosco&nbsp;</strong>với nét kiến trúc đậm chất Châu Âu cổ điển, dễ thấy nhất là những cột trụ khổng lồ, dãy hành lang trải dài, đường nét trạm khắc tinh xảo, mái chóp nhọn,…</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/don-bosco-du-lich-viet.jpg" /><br />
<em>Nhà thờ Don Bosco</em></p>

<ul>
	<li><strong>Ga Đà Lạt</strong>, nhà ga cổ nhất Đông Dương còn sót lại ở Việt Nam. Quý khách tự do chiêm ngưỡng những đầu máy xe lửa cổ cùng những kiến trúc độc đáo đến từ thập niên 90.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/ga-da-lat-du-lich-viet(1).jpg" /><br />
<em>Ga Đà Lạt</em></p>

<ul>
	<li><strong>Quảng trường Lâm Viên</strong>&nbsp;với tuyệt tác kiến trúc bằng kính: Bông Hoa Dã Quỳ và Nụ Hoa Atiso.&nbsp;</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Lat/quang-truong-lam-vien-du-lich-viet.jpg" /><br />
<em>Quảng trường Lâm Viên</em></p>

<p><strong>Tối:&nbsp;</strong>Dùng cơm tối.&nbsp;</p>

<ul>
	<li>Tự do dạo phố núi, và mua sắm đặc sản tại chợ đêm Đà Lạt.<strong>&nbsp;</strong>Nghỉ đêm tại&nbsp;<strong>Đà Lạt</strong>.&nbsp;</li>
</ul>

<p><strong>NGÀY 3 |&nbsp;ĐÀ LẠT – TP.HCM (ăn sáng, trưa)</strong></p>

<p><strong>Sáng:&nbsp;</strong>Dùng bữa sáng, trả phòng.</p>

<ul>
	<li>Khởi hành đến&nbsp;<strong>Mê Linh coffee Garden</strong>, một không gian được thiết kế mở. Quý khách có thể vừa thưởng thức hương vị cà phê chồn đặc trưng (chi phí tự túc), vừa có một tầm nhìn trọn vẹn về cảnh sắc Đà Lạt 360 độ.</li>
</ul>

<p><strong>Trưa:</strong>&nbsp;Khởi hành về TP.HCM, đến Bảo Lộc dùng cơm trưa.&nbsp;</p>
', N'Thành phố Hồ Chí Minh', N'Đà Lạt', CAST(0x0000B1DF00000000 AS DateTime), CAST(0x0000B1E100000000 AS DateTime), 24, 1)
INSERT [dbo].[Tour] ([id], [Name], [Gia], [TieuDe], [MoTa], [LichTrinh], [DiemKhoiHanh], [DiemDen], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [Loai_Tour_id]) VALUES (43, N'Du lịch Đức', 57990000, N'Du lịch Hè - Tour Châu Âu Đức - Áo - Hungary - Slovakia - Séc từ Sài Gòn 2024', N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.328px">
	<tbody>
		<tr>
			<td style="width:158.664px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Frankfurt - Munich - Hallstatt - Vienna - Budapest - Bratislava - Prague - Nuremberg - Rothenburg OB Der Tauber - Frankfurt&nbsp;</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>9 ngày 8 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>15/05, 12/06, 10/07, 14/08, 11/09, 16/10/2</strong></span></span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em>Điểm nổi bật</em></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em>-&nbsp;</em><em>Khách sạn 4 sao suốt hành trình - Quý khách sẽ được trải nghiệm hàng không 5 sao.<br />
- Frankfurt: là một thành phố sôi động, nơi giao thoa giữa hiện đại và lịch sử, nằm giữa lòng nước Đức<br />
- Munich: là thành phố lớn nhất miền nam nước Đức và nổi tiếng với lễ hội bia hàng năm Oktoberfest.<br />
- Vienna: quê hương của các nhà soạn nhạc thiên tài Schubert và Johans Strauss.<br />
- Budapest: Budapest là thủ đô của Hungary và cũng là một trong những thành phố du lịch tuyệt vời nhất ở Châu Âu.<br />
- Bratislava: thủ đô của Slovakia – thủ đô duy nhất trên thế giới nằm giáp ranh giới của cả 3 nước Áo – Hungary – Slovakia.<br />
- Prague: là thành phố lớn nhất và là thủ đô của cộng hoà Séc và được mệnh danh là “trái tim bé bỏng” của châu Âu. Chợ Sapa: chợ lớn nhất của người Việt tại Prague.<br />
- Nuremberg: là trung tâm kinh tế - chính trị lớn của vùng Bayern nói riêng và nước Đức&nbsp;</em></span></span></span></span></span></p>
</div>
', N'<p><strong>NGÀY 1 |&nbsp;TP. HCM - FRANKFURT - CITY TOUR (Trên máy bay, Ăn Tối)</strong></p>

<p>Quý khách tập trung tại sân bay. HDV đón quý khách tại Ga Quốc tế sân bay Tân Sơn Nhất, làm thủ tục đáp chuyến bay đi. Ăn nhẹ và nghỉ ngơi trên máy bay. Đến sân bay Quốc Tế Frankfurt, đoàn khởi hành&nbsp;<strong>tham quan</strong><strong>&nbsp;Frankfurt</strong>&nbsp;- được mệnh danh là xứ sở nhất định phải đến một lần trong đời với bất kì ai có dịp đặt chân tới châu Âu:</p>

<ul>
	<li><strong>Nhà hát Opera</strong>&nbsp;ở Frankfurt là một trong những công trình kiến trúc độc đáo của Đức. Ngày nay, nó được biết đến với tên gọi là Opera Alt.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/nha-hat-opera-Alt-du-lich-viet.jpg" /><br />
Nhà hát Opera</p>

<ul>
	<li><strong>Main Tower</strong>&nbsp;- một tòa nhà cao nhất tại Frankfurt.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/toa-nha-Main-Tower-du-lich-viet.jpg" /><br />
Main Tower - một toà nhà cao nhất tại Frankfurt</p>

<ul>
	<li><strong>Bức tượng đồng tiền Euro</strong>&nbsp;khổng lồ được bao quanh bởi 12 ngôi sao &nbsp;màu vàng.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/bieu-tuong-chung-cua-chau-au-du-lich-viet.jpg" /><br />
Bức tượng đồng tiền Euro</p>

<p>Xe đưa đoàn dùng bữa tối tại nhà hàng địa phương, quý khách trở về khách sạn nghỉ ngơi.</p>

<p><strong>NGÀY 2 |&nbsp;FRANKFURT - MUNICH (Ăn ba bữa)</strong></p>

<p>Đoàn dùng bữa sáng tại khách sạn. Đoàn khởi hành đến&nbsp;<strong>thành phố Munich (393km)</strong>&nbsp;và dùng bữa trưa. Đoàn di chuyển tham quan Munich với các công trình tiêu biểu như:</p>

<ul>
	<li><strong>Allianz Arena</strong>&nbsp;<em>(chụp ảnh bên ngoài)&nbsp;</em>là sân nhà của 2 đội bóng: Bayern Munich và TSV 1860. Với lối kiến trúc đẳng cấp, ấn tượng.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/san-van-dong-Allianz-Arena-du-lich-viet.jpg" /><br />
Sân vận động Allianz Arena</p>

<ul>
	<li><strong>Sân vận động Olympic (Olympic park Munich)</strong>&nbsp;Nằm trên khoảng đất rộng 3 km2, sân vận động được xây dựng để phục vụ cho Olympic Munich vào năm 1972</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/san-van-dong-Olympic-park-Munich-du-lich-viet.jpg" /><br />
Sân vận động Olympic&nbsp;<strong>(Olympic park Munich)</strong></p>

<ul>
	<li>Đến thăm&nbsp;<strong>thế giới BMW Welt&nbsp;</strong>- khu quần thể BMW đặt tại thành phố Munich, nước Đức, người ta phần nào thấy được đẳng cấp cũng như lịch sử của hãng xe danh tiếng xứ Bavaria.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/tham-quan-the-gioi-BMW-Welt-du-lich-viet.jpg" /><br />
Đến thăm&nbsp;<strong>thế giới BMW Welt</strong></p>

<ul>
	<li><strong>Marienplatz (Quảng trường Đức Mẹ)</strong>&nbsp;là quảng trường chính của nội thành München và là tâm điểm của khu vực dành riêng cho người đi bộ.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/quang-truong-duc-me-Marienplatz-du-lich-viet.jpg" /><br />
<strong>Marienplatz (Quảng trường Đức Mẹ)</strong></p>

<ul>
	<li><strong>Tòa thị chính New Town Hall</strong>&nbsp;là một công trình kiến trúc tiêu biểu của thành phố Munich.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/toa-thi-chinh-New-Town-Hall-du-lich-viet.jpg" /><br />
<strong>Tòa thị chính New Town Hall</strong>&nbsp;<br />
&nbsp;</p>

<ul>
	<li><strong>Stachusplatz</strong>&nbsp;– quảng trường lớn ở trung tâm Munich.</li>
</ul>

<p>Đoàn tham quan mua sắm tại Munich.<br />
Ăn tối và trở về khách sạn nghỉ ngơi.</p>

<p><strong>NGÀY 3 |&nbsp;MUNICH - HALLSTATT - VIENNA (Ăn ba bữa)</strong></p>

<p>Đoàn ăn sáng tại khách sạn và khởi hành về&nbsp;<strong>thị trấn Hallstatt (207km</strong>) tham quan:</p>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/thi-tran-Hallstatt-du-lich-viet.jpg" /><br />
<strong>Thị trấn Hallstatt</strong></p>

<ul>
	<li>Dạo quanh<strong>&nbsp;</strong>hồ,<strong>&nbsp;</strong>tản bộ trên&nbsp;<strong>những con đường nhỏ quanh làng, ngắm&nbsp; nhìn mặt hồ tĩnh lặng được bao quanh bởi dãy Alps hùng vĩ</strong>.</li>
	<li>Chụp hình tại&nbsp;<strong>Quảng trường trung tâm Marktplatz&nbsp;</strong>hay còn gọi là Quảng trường Chợ trung tâm tại Hallstatt là một địa điểm đẹp nhất tại thị trấn đã được vinh danh là Di sản Thế giới bởi UNESCO - Hallstatt. Nơi đây là một quảng trường được bao lại bởi những ngôi nhà nhỏ xinh xắn rực rỡ màu sắc. Ở trung tâm quảng trường là bức tượng Chúa Ba Ngôi tinh xảo,&nbsp;<strong>Khu thị trấn cổ</strong>.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-duc/quang-truong-trung-tam-Marktplatz-du-lich-viet.jpg" /><br />
Quảng trường trung tâm&nbsp;<strong>Marktplatz</strong></p>

<p>Đoàn di chuyển về&nbsp;<strong>Vienna – thủ đô nước Áo (284km)</strong>&nbsp;dùng bữa tối, nhận phòng khách sạn và nghỉ ngơi.</p>

<p><strong>NGÀY 4 |&nbsp;VIENNA – BUDAPEST (Ăn ba bữa)</strong></p>

<p>Đoàn dùng bữa sáng tại khách sạn và khởi hành tham quan:</p>

<ul>
	<li><strong>Cung điện mùa hè Schonbrunn&nbsp;</strong><em>(chụp ảnh bên ngoài)&nbsp;</em>là một trong những cung điện quan trọng nhất về văn hóa ở Áo và được UNESCO công &nbsp;nhận là di sản văn hóa thế giới.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-ao/cung-dien-mua-he-Schonbrunn-du-lich-viet.jpg" /><br />
Cung điện mùa hè<strong>&nbsp;Shonbrunn</strong></p>

<ul>
	<li><strong>Nhà thờ St. Stephen</strong>&nbsp;- biểu tượng của nước Áo.</li>
	<li><strong>Nhà hát Opera</strong>&nbsp;quốc gia Vienna State Opera House. Vở diễn opera đầu tiên của nhà hát Opera Quốc Gia Vienna là vở Don Giovanni. Vở diễn này do thiên tài âm nhạc Mozart sáng tác vào ngày 25 tháng 5 năm 1869. Với sự &nbsp;xuất hiện của nhạc trưởng&nbsp;<strong>Gustav Mahler</strong>&nbsp;– một nhạc trưởng tài ba thời bấy giờ.</li>
</ul>

<p><img alt="" src="https://dulichviet.com.vn/images/bandidau/AU-UC-MY-CA/du-lich-ao/Vienna-Opera-House-du-lich-viet.jpg" /><br />
Nhà hát Opera</p>

<p>Đoàn dùng bữa trưa và khởi hành về&nbsp;<strong>thủ đô Hungary - Budapest (244km)</strong>&nbsp;tham quan:</p>

<ul>
	<li><strong>St. Stephen''s Basilica</strong>&nbsp;là nhà thờ Công giáo La Mã lớn nhất Budapest được đặt tên theo vị Vua đầu tiên của Hungary</li>
	<li><strong>Tòa nhà quốc hội Hungary và sông Danube</strong><strong>.</strong></li>
	<li><strong>Pháo đài ngự phủ Fisherman''s Bastion</strong>&nbsp;– kiến trúc bất hủ của Hungary</li>
	<li>Ngắm nhìn toàn bộ phong cảnh bên kia của bờ Pest&nbsp;<strong>với tòa nhà quốc &nbsp;hội, cầu dây xích, đảo Margaret</strong>&nbsp;ở trên sông.</li>
	<li><strong>Quảng trường Anh Hùng</strong><strong>.</strong></li>
</ul>

<p>Đoàn ăn tối và nghỉ đêm tại khách sạn.&nbsp;</p>

<p><strong>NGÀY 5 |&nbsp;BUDAPEST – BRATISLAVA – PRAGUE (Ăn ba bữa)</strong></p>

<p>Đoàn ăn sáng tại khách sạn sau đó di chuyển về&nbsp;<strong>Bratislava – thủ đô nước Slovakia (201km)</strong>&nbsp;tham quan:</p>

<ul>
	<li><strong>Nhà thờ Xanh - The Blue Church hay còn gọi là Church of St. Elizabeth.</strong></li>
	<li><strong>Cổng St Michael</strong>&nbsp;là cánh cổng duy nhất được bảo tồn từ thời trung cổ và &nbsp;là một trong những di tích lâu đời nhất của thành phố Bratislava.</li>
</ul>

<p>Đoàn ăn trưa và di chuyển về&nbsp;<strong>Prague – thủ đô Budapest (335km)</strong>&nbsp;tham quan:</p>

<ul>
	<li><strong>Cầu Karl (tiếng Séc: Karlův most)</strong>, còn gọi là Cầu Charles là một cây cầu có ý nghĩa lịch sử quan trọng tại Prague.</li>
</ul>

<p>Đoàn ăn tối và nghỉ đêm tại Prague.</p>

<p><strong>NGÀY 6 |&nbsp;PRAGUE – NUREMBERG (Ăn ba bữa)</strong></p>

<p>Đoàn ăn sáng tại khách sạn. Sau đó tiếp tục tham quan Prague với các công trình kiến trúc:</p>

<ul>
	<li><strong>Lâu đài Prague</strong>, viên ngọc quý của đất nước Séc, là một trong những điểm đến đáng chú ý nhất và quan trọng nhất trong thành phố.</li>
	<li><strong>Đồng hồ thiên văn (Astronomical Clock)&nbsp;</strong>nổi tiếng, vì đây là đồng hồ xưa cũ nhất thế giới hiện còn chạy. Đồng hồ này được đặt ở đây vào năm 1,410. Lúc đó nó là đồng hồ xưa cũ hạng 3 trên thế giới.</li>
</ul>

<p>Đoàn ăn trưa và di chuyển về&nbsp;<strong>Nuremberg (298km)</strong>.<br />
Đến nơi đoàn dùng bữa tôi tại nhà hàng địa phương và nhận phòng khách sạn nghỉ ngơi.</p>

<p><strong>NGÀY 7 |&nbsp;NUREMBERG - ROTHENBURG OB DER TAUBER - FRANKFURT (Ăn ba bữa)</strong></p>

<p>Đoàn ăn sáng tại khách sạn. Sau đó tham quan Nuremnerg với các công trình kiến trúc:</p>

<ul>
	<li><strong>Lâu đài Nuremberg</strong>&nbsp;là một lâu đài cổ kính với tầm nhìn tuyệt vời ra khắp thành phố.</li>
	<li><strong>Các khu phố cổ Numremberg</strong></li>
	<li><strong>Cầu Hangman''s Bridge</strong></li>
</ul>

<p>Đoàn dùng bữa trưa và di chuyển về&nbsp;<strong>Rothenburg:</strong>&nbsp;thị trấn lãng mạn nhất nước Đức.&nbsp;<strong>"Rothenburg trên sông Tauber"</strong>&nbsp;là cái tên mà người ta hay gọi để chỉ thị trấn đáng yêu này, nơi mà mỗi năm đón vô số du khách du lịch trên thế giới đổ về.<br />
Thị trấn đẹp như tranh với 42 cổng vào với các con đường, ngõ hẽm quanh co, cổ kính, xung quanh là những ngôi nhà mái đỏ, bao xung quanh thị trấn là lớp tường đá dày khiến ngôi làng như một pháo đài.<br />
Đoàn di chuyển về&nbsp;<strong>Frankfurt (119km)&nbsp;</strong>dùng bữa tối tại nhà hàng địa phương. Đoàn nhận phòng khách sạn và nghỉ đêm tại Frankfurt.</p>

<p><strong>NGÀY 8 |&nbsp;FRANKFURT - TP.HCM (Ăn sáng, trưa)</strong></p>

<p>Quý khách dùng bữa sáng tại khách sạn và trả phòng. Đoàn khởi hành tiếp tục tham quan Frankfurt với các công trình tiêu biểu như:</p>

<ul>
	<li><strong>Quảng trường Romerberg</strong>, là một không gian công cộng ở Frankfurt, &nbsp;Đức, nằm ở phía trước khu phức hợp tòa nhà Rome.</li>
	<li><strong>Nhà thờ St. Paul, Paulskirche</strong>&nbsp;- một nhà thờ Tin lành cũ, được sử dụng làm hội trường quốc gia, Frankfurt, Đức.</li>
	<li>Đoàn tham quan mua sắm tại các con phố mua sắm lớn nhất nước Đức&nbsp; như:&nbsp;<strong>Die Zeil, Goethestrasse</strong>.</li>
</ul>

<p>Đoàn dùng bữa trưa và khởi hành ra sân bay Frankfurt làm thủ tục đáp chuyến &nbsp;bay về VN.</p>

<p><strong>NGÀY 9 |&nbsp;TP.HCM</strong></p>

<p>Đến sân bay Tân Sơn Nhất, kết thúc chuyến tham quan. Chia tay và hẹn gặp lại Quý khách!</p>
', N'Thành phố Hồ Chí Minh', N'Đức', CAST(0x0000B20000000000 AS DateTime), CAST(0x0000B20900000000 AS DateTime), 10, 2)
SET IDENTITY_INSERT [dbo].[Tour] OFF
SET IDENTITY_INSERT [dbo].[TrangThai] ON 

INSERT [dbo].[TrangThai] ([id_TrangThai], [TenTrangThai]) VALUES (1, N'Chưa xác nhận')
INSERT [dbo].[TrangThai] ([id_TrangThai], [TenTrangThai]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TrangThai] ([id_TrangThai], [TenTrangThai]) VALUES (3, N'Đang diễn ra')
INSERT [dbo].[TrangThai] ([id_TrangThai], [TenTrangThai]) VALUES (4, N'Đã hoàn thành')
INSERT [dbo].[TrangThai] ([id_TrangThai], [TenTrangThai]) VALUES (5, N'Đã hủy')
SET IDENTITY_INSERT [dbo].[TrangThai] OFF
ALTER TABLE [dbo].[ChiTiet_DatTour]  WITH CHECK ADD FOREIGN KEY([DatTour_id])
REFERENCES [dbo].[DatTour] ([id])
GO
ALTER TABLE [dbo].[ChiTiet_DatTour]  WITH CHECK ADD  CONSTRAINT [FK__ChiTiet_D__Tour___4D94879B] FOREIGN KEY([Tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
ALTER TABLE [dbo].[ChiTiet_DatTour] CHECK CONSTRAINT [FK__ChiTiet_D__Tour___4D94879B]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK__DanhGia__Tour_id__4E88ABD4] FOREIGN KEY([Tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK__DanhGia__Tour_id__4E88ABD4]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK__DanhGia__User_id__628FA481] FOREIGN KEY([User_id])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK__DanhGia__User_id__628FA481]
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD FOREIGN KEY([User_id])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD  CONSTRAINT [FK_DatTour_TrangThai] FOREIGN KEY([id_TrangThai])
REFERENCES [dbo].[TrangThai] ([id_TrangThai])
GO
ALTER TABLE [dbo].[DatTour] CHECK CONSTRAINT [FK_DatTour_TrangThai]
GO
ALTER TABLE [dbo].[Image_Tour]  WITH CHECK ADD  CONSTRAINT [FK__Image_Tou__Tour___5165187F] FOREIGN KEY([Tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
ALTER TABLE [dbo].[Image_Tour] CHECK CONSTRAINT [FK__Image_Tou__Tour___5165187F]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[PhanCong_HuongDanVien]  WITH CHECK ADD FOREIGN KEY([HuongDanVien_id])
REFERENCES [dbo].[HuongDanVien] ([id])
GO
ALTER TABLE [dbo].[PhanCong_HuongDanVien]  WITH CHECK ADD  CONSTRAINT [FK__PhanCong___Tour___5441852A] FOREIGN KEY([Tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
ALTER TABLE [dbo].[PhanCong_HuongDanVien] CHECK CONSTRAINT [FK__PhanCong___Tour___5441852A]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([DatTour_id])
REFERENCES [dbo].[DatTour] ([id])
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK__Tour__Loai_Tour___5629CD9C] FOREIGN KEY([Loai_Tour_id])
REFERENCES [dbo].[Loai_Tour] ([id])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK__Tour__Loai_Tour___5629CD9C]
GO
USE [master]
GO
ALTER DATABASE [QuanLyTour] SET  READ_WRITE 
GO
