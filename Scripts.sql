CREATE DATABASE BookStore
GO
USE [BookStore]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 1/15/2024 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 1/15/2024 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](100) NULL,
	[Diachi] [nvarchar](150) NULL,
	[Dienthoai] [nvarchar](15) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 1/15/2024 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](100) NULL,
	[MaCD] [int] NULL,
	[MaNXB] [int] NULL,
	[Dongia] [decimal](10, 2) NULL,
	[Hinh] [nvarchar](100) NULL,
	[Ngaycapnhat] [datetime] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (5, N'Tin học')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (6, N'Kinh tế')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (12, N'Khoa học cơ bản')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (20, N'Mỹ thuật')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (21, N'Nghệ thuật')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (22, N'Âm nhạc')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (27, N'Nghệ thuật sống')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (29, N'Giới tính & sinh lý')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD]) VALUES (33, N'Du lịch')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (1, N'Nhà xuất bản Trẻ', N'161 Lý Chính Thắng - Q3, Tp.HCM', N'08.9316212')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (2, N'Nhà xuất bản Giáo Dục', N'15 Nguyễn Huệ - Q1, Tp.HCM', N'08.1232345')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (3, N'Nhà xuất bản Kim đồng', N'55 Quang Trung, Hà Nội', N'04.944730')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (4, N'Nhà xuất bản Đại học quốc gia', N'03 Công trường Quốc tế - Q3, Tp.HCM', N'087242181')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (5, N'Nhà xuất bản Văn hóa nghệ thuật', N'HCM', NULL)
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (6, N'Nhà xuất bản Thể dục Thể thao', N'48 Nguyễn Đình Chiểu - Q1, Tp.HCM (Chi nhánh)', N'08.8298378')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (7, N'Nhà xuất bản Phụ nữ', N'16 Alexandre De Rhodes - Q1, Tp.HCM (Chi nhánh)', N'08.8294459')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (8, N'Nhà xuất bản Phương đông', N'', N'')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (9, N'Nhà xuất bản Tổng hợp Tp.HCM', N'62 Nguyễn Thị Minh Khai - Q1, Tp.HCM', N'08.8225340')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [Diachi], [Dienthoai]) VALUES (11, N'Nhà xuất bản TTXVN', N'126 Nguyễn Thị Minh - Q3, Tp.HCM', N'0908256402')
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (29, N'Giáo Trình Lý Thuyết Tài Chính - Tiền Tệ ', 6, 5, CAST(23000.00 AS Decimal(10, 2)), N'KT0006.jpg', CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (33, N'Lập Trình Mạng Trên Windows ', 5, 3, CAST(16800.00 AS Decimal(10, 2)), N'TH001.jpg', CAST(0x0000AE7F00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (9, N'Cấu Trúc Máy Vi Tính', 5, 1, CAST(30000.00 AS Decimal(10, 2)), N'Cautrucmaytinh.jpg', CAST(0x0000AE7D00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (10, N'Chuyện Kể Về Những Nhà Khoa Học Trái Đất Và Thiên Văn Nổi Tiếng Thế Giới (Tái Bản Có Bổ Sung)', 12, 7, CAST(25000.00 AS Decimal(10, 2)), N'caosuvietnam.jpg', CAST(0x0000AE6B00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (12, N'Marketing Du Lịch (Sách Hướng Dẫn Du Lịch Việt Nam)', 33, 5, CAST(27000.00 AS Decimal(10, 2)), N'Marketingdulich.jpg', CAST(0x0000AE7000000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (30, N'Cán Bộ Quản Lý Trong Sản Xuất Công Nghiệp', 6, 4, CAST(25000.00 AS Decimal(10, 2)), N'KT0001.jpg', CAST(0x0000AE7D00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (31, N'Tin Học Văn Phòng - Microsoft Word 2000 ', 5, 3, CAST(16800.00 AS Decimal(10, 2)), N'TH004.jpg', CAST(0x0000AE7D00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (13, N'Nghiệp Vụ Lễ Tân Khách Sạn', 33, 3, CAST(24000.00 AS Decimal(10, 2)), N'Nghiepvuletan.jpg', CAST(0x0000AE6B00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (7, N'Cao Su Việt Nam Thực Trạng Và Giải Pháp Phát Triển', 6, 4, CAST(18000.00 AS Decimal(10, 2)), N'caosuvietnam.jpg', CAST(0x0000AE7D00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (8, N'Kiến Trúc Máy Tính', 5, 1, CAST(30000.00 AS Decimal(10, 2)), N'Kientrucmaytinh.jpg', CAST(0x0000AE7800000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (16, N'Phạm Duy - Đưa Em Tìm Động Hoa Vàng (Tập 2)', 22, 1, CAST(26000.00 AS Decimal(10, 2)), N'Phamduy.jpg', CAST(0x0000AE7800000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (15, N'Tìm Hiểu Văn Hóa Của Người Trung Quốc - Nhật Bản - Hàn Quốc', 33, 2, CAST(40000.00 AS Decimal(10, 2)), N'Vanhoatrungquoc.jpg', CAST(0x0000AE7800000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (17, N'Hát Nữa Đi Em - 100 Ca Khúc Trữ Tình Được Yêu Thích Nhất ', 22, 3, CAST(42000.00 AS Decimal(10, 2)), N'Hatnuadiem.jpg', CAST(0x0000AE6E00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (18, N'Huyền Thoại Mẹ (Tuyển Tập Các Ca Khúc Về Mẹ)', 22, 4, CAST(24500.00 AS Decimal(10, 2)), N'Huyenthoaime.jpg', CAST(0x0000AE7000000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (19, N'Như Đã Dấu Yêu (80 Ca Khúc Được Yêu Thích)', 22, 5, CAST(40000.00 AS Decimal(10, 2)), N'Nhudadauyeu.jpg', CAST(0x0000AE7000000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (14, N'Alô Việt Nam - Cẩm Nang Dịch Vụ - Giải Trí Thành Phố Hồ Chí Minh (Tập 1)', 33, 5, CAST(26500.00 AS Decimal(10, 2)), N'aloVietnam.jpg', CAST(0x0000AE7200000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (20, N'Tuyển Tập 101 Ca Khúc Việt Nam Quê Hương Tôi - Giai Điệu Tổ Quốc', 22, 11, CAST(50000.00 AS Decimal(10, 2)), N'101Cakhuc.jpg', CAST(0x0000AE7300000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (23, N'Tin Học Ứng Dụng: Thành Thạo Oracle 9i - Quản Trị Cơ Sở Dữ Liệu (Tập 1) ', 5, 4, CAST(21000.00 AS Decimal(10, 2)), N'TH006.jpg', CAST(0x0000AE7300000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (32, N'Adobe Photoshop 6.0 ', 5, 4, CAST(21000.00 AS Decimal(10, 2)), N'TH005.jpg', CAST(0x0000AE7B00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (35, N'Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu ', 5, 7, CAST(25000.00 AS Decimal(10, 2)), N'TH002.jpg', CAST(0x0000AE7B00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (22, N'Thủ Thuật Lập Trình Visual Basic 6 ', 5, 3, CAST(18000.00 AS Decimal(10, 2)), N'TH008.jpg', CAST(0x0000AE7C00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (24, N'Mạng Máy Tính Và Hệ Thống Bảo Mật ', 5, 3, CAST(23000.00 AS Decimal(10, 2)), N'KT0007.jpg', CAST(0x0000AE7C00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (27, N'Điều Chỉnh Một Số Chính Sách Kinh Tế Ở Trung Quốc (Giai Đoạn 1992 - 2010)', 6, 3, CAST(21000.00 AS Decimal(10, 2)), N'KT0004.jpg', CAST(0x0000AE6E00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (25, N'Tư Duy Chiến Lược (Quản Lý - Tại Sao? Thế Nào?', 6, 4, CAST(18000.00 AS Decimal(10, 2)), N'KT0003.jpg', CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (26, N'Quản Lý Dự Án (Quản Lý - Tại Sao? Thế Nào?) ', 6, 3, CAST(61000.00 AS Decimal(10, 2)), N'KT0002.jpg', CAST(0x0000AE6E00000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (28, N'Phong Cách Quản Lý Kinh Doanh Hiện Đại ', 6, 4, CAST(61000.00 AS Decimal(10, 2)), N'KT0005.jpg', CAST(0x0000B0B100000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (1, N'Con tôi đi học và kết bạn', 27, 2, CAST(30000.00 AS Decimal(10, 2)), N'con-toi-di-hoc.jpg', CAST(0x0000AE7100000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (2, N'Kỹ năng chăm sóc bé - khi con giận dỗi', 20, 3, CAST(20000.00 AS Decimal(10, 2)), N'khi-con-gian-doi.jpg', CAST(0x0000AE9000000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (3, N'Xua tan đi mọi rắc rối', 27, 3, CAST(19000.00 AS Decimal(10, 2)), N'xuatan.jpg', CAST(0x0000AE3800000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (5, N'Tại sao đàn ông nói dối, đàn bà nói nhiều', 29, 7, CAST(26000.00 AS Decimal(10, 2)), N'Noidoi-noinhieu.jpg', CAST(0x0000AED300000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (6, N'Để trở thành người phụ nữ mạnh mẽ', 21, 7, CAST(24000.00 AS Decimal(10, 2)), N'Phunumanhme.jpg', CAST(0x0000AF0100000000 AS DateTime))
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaCD], [MaNXB], [Dongia], [Hinh], [Ngaycapnhat]) VALUES (4, N'Đàn ông cũng khóc', 29, 5, CAST(185000.00 AS Decimal(10, 2)), N'Danongcungkhoc.gif', CAST(0x0000AE2E00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Sach] OFF
/****** Object:  Index [PK_CHUDE]    Script Date: 1/15/2024 9:15:51 AM ******/
ALTER TABLE [dbo].[ChuDe] ADD  CONSTRAINT [PK_CHUDE] PRIMARY KEY NONCLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_NHAXUATBAN]    Script Date: 1/15/2024 9:15:51 AM ******/
ALTER TABLE [dbo].[NhaXuatBan] ADD  CONSTRAINT [PK_NHAXUATBAN] PRIMARY KEY NONCLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SACH]    Script Date: 1/15/2024 9:15:51 AM ******/
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [PK_SACH] PRIMARY KEY NONCLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_SACH_RELATIONS_CHUDE] FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChuDe] ([MaCD])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_SACH_RELATIONS_CHUDE]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_SACH_RELATIONS_NHAXUATB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_SACH_RELATIONS_NHAXUATB]
GO
