USE [QLSV]
GO
INSERT [dbo].[DKMH] ([maLopHP], [maSV], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'MLHP01', N'01', 3, 50, 2)
INSERT [dbo].[DKMH] ([maLopHP], [maSV], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'MLHP03', N'03', 9, 100, 4)
INSERT [dbo].[DKMH] ([maLopHP], [maSV], [DiemThi], [PhanTramThi], [id_dk]) VALUES (N'MLHP02', N'02', 6, 60, 6)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (123, 2, 6)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (213, 6, 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (312, 4, 10)
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML01', N'k55kmt')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML02', N'k56kmt')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML03', N'k57kmt')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML04', N'k58kmt')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'ML05', N'k59kmt')
GO
INSERT [dbo].[SinhVien] ([maSV], [hoten], [NgaySinh]) VALUES (N'01', N'Le Trung', CAST(N'2004-10-08' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoten], [NgaySinh]) VALUES (N'02', N'Thu Thao', CAST(N'1996-05-26' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoten], [NgaySinh]) VALUES (N'03', N'Hoang Thanh', CAST(N'1975-03-08' AS Date))
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'ML01', N'03', N'Lop Pho')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'ML03', N'02', NULL)
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'ML04', N'01', N'Lop Truong')
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'MK01', N'Tai Chinh')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'MK02', N'Dien')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'MK03', N'Tu Nhien')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM01', N'Toan', N'MK01')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM02', N'Van', N'MK03')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM03', N'Vat Ly', N'MK02')
GO
INSERT [dbo].[GiaoVien] ([maGV], [hoten], [NgaySinh], [maBM]) VALUES (N'MGV01', N'Nguyen A', CAST(N'1980-08-20' AS Date), N'BM01')
INSERT [dbo].[GiaoVien] ([maGV], [hoten], [NgaySinh], [maBM]) VALUES (N'MGV02', N'Le Thi B', CAST(N'1976-09-15' AS Date), N'BM02')
INSERT [dbo].[GiaoVien] ([maGV], [hoten], [NgaySinh], [maBM]) VALUES (N'MGV03', N'Le Van C', CAST(N'1890-12-12' AS Date), N'BM03')
GO
INSERT [dbo].[GVCN] ([maLop], [maGV], [HK]) VALUES (N'ML01', N'MGV01', 1)
GO
INSERT [dbo].[MonHoc] ([maMon], [TenMon]) VALUES (N'MM01', N'Tieng Anh')
INSERT [dbo].[MonHoc] ([maMon], [TenMon]) VALUES (N'MM02', N'Toan Cao Cap')
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'MLHP01', N'KMT', N'1', N'MM01', N'MGV02')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'MLHP02', N'KTM', N'2', N'MM02', N'MGV03')
GO
