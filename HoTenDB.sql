USE [HoTenDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20/06/2021 3:08:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 20/06/2021 3:08:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Name] [nvarchar](200) NULL,
	[UnitCost] [int] NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 20/06/2021 3:08:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (1, N'IPHONE', N'Made in USA')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (2, N'SAMSUNG', N'Made in Korea')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (3, N'OPPO', N'Made in China')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (1, 1, N'iPhone 12 64GB', 20390000, 200, N'https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-violet-1-600x600.jpg', N'Màn hình 6.1", Chip Apple A14 BionicRAM 4 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (2, 1, N'iPhone 12 Pro Max 128GB', 31990000, 150, N'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', N'Màn hình 6.7", Chip Apple A14 BionicRAM 6 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (6, 1, N'iPhone 12 Pro Max 512GB', 41490000, 156, N'https://cdn.tgdd.vn/Products/Images/42/228744/iphone-12-pro-max-vang-new-600x600-600x600.jpg', N'Màn hình 6.7", Chip Apple A14 BionicRAM 6 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (7, 1, N'iPhone 12 Pro 512GB', 36490000, 123, N'https://cdn.tgdd.vn/Products/Images/42/228739/iphone-12-pro-xanh-duong-new-600x600-600x600.jpg', N'Màn hình 6.1", Chip Apple A14 BionicRAM 6 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (8, 1, N'iPhone 12 Pro Max 256GB', 35490000, 178, N'https://cdn.tgdd.vn/Products/Images/42/228743/iphone-12-pro-max-vang-new-600x600-1-600x600.jpg', N'Màn hình 6.7", Chip Apple A14 BionicRAM 6 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (13, 1, N'iPhone 12 Pro 256GB', 28890000, 205, N'https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-xam-new-600x600-600x600.jpg', N'Màn hình 6.1", Chip Apple A14 BionicRAM 6 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (14, 1, N'iPhone 12 Pro 128GB', 28490000, 222, N'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-bac-new-600x600-600x600.jpg', N'Màn hình 6.1", Chip Apple A14 BionicRAM 6 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (15, 1, N'iPhone 12 256GB', 25490000, 111, N'https://cdn.tgdd.vn/Products/Images/42/228737/iphone-12-den-new-600x600-600x600.jpg', N'Màn hình 6.1", Chip Apple A14 BionicRAM 4 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (16, 1, N'iPhone 12 128GB', 23990000, 100, N'https://cdn.tgdd.vn/Products/Images/42/228736/iphone-12-violet-1-600x600.jpg', N'Màn hình 6.1", Chip Apple A14 BionicRAM 4 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (17, 2, N'Samsung Galaxy S21 5G', 18990000, 200, N'https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-tim-600x600.jpg', N'Màn hình 6.2", Chip Exynos 2100 RAM 8 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (18, 2, N'Samsung Galaxy A02', 2370000, 156, N'https://cdn.tgdd.vn/Products/Images/42/228999/samsung-galaxy-a02-xanhduong-600x600-600x600.jpg', N'Màn hình 6.5", Chip MediaTek MT6739W RAM 3 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (19, 2, N'Samsung Galaxy M51', 8990000, 256, N'https://cdn.tgdd.vn/Products/Images/42/217536/samsung-galaxy-m51-trang-new-600x600-600x600.jpg', N'Màn hình 6.7", Chip Snapdragon 730RAM 8 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (20, 2, N'Samsung Galaxy Z Fold2 5G', 50000000, 185, N'https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-vang-dong-600x600.jpg', N'Màn hình Chính 7.59" & Phụ 6.23", Chip Snapdragon', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (21, 2, N'Samsung Galaxy Z Fold2 5G Đặc Biệt', 50000000, 289, N'https://cdn.tgdd.vn/Products/Images/42/232668/samsung-galaxy-z-fold-2-vang-600x600-600x600.jpg', N'Màn hình Chính 7.59" & Phụ 6.23", Chip Snapdragon', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (22, 2, N'Samsung Galaxy Note 20 Ultra 5G Trắng', 32990000, 158, N'https://cdn.tgdd.vn/Products/Images/42/230867/samsunggalaxynote20ultratrangnew-600x600-600x600.jpg', N'Màn hình 6.9", Chip Exynos 990RAM 12 GB, ROM 256GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (23, 2, N'Samsung Galaxy Note 20 Ultra 5G', 32990000, 186, N'https://cdn.tgdd.vn/Products/Images/42/225063/sam-sung-note-20-ultra-vang-dong-600x600.jpg', N'Màn hình 6.9", Chip Exynos 990RAM 12 GB, ROM 256GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (24, 2, N'Samsung Galaxy S21 Ultra 5G 256GB', 28990000, 173, N'https://cdn.tgdd.vn/Products/Images/42/234308/samsung-galaxy-s21-ultra-256gb-den-600x600-1-600x600.jpg', N'Màn hình 6.8", Chip Exynos 2100RAM 12GB, ROM 256GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (25, 2, N'Samsung Galaxy S21 Ultra 5G 128GB', 25990000, 299, N'https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', N'Màn hình 6.8", Chip Exynos 2100RAM 12 GB,ROM 128GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (26, 3, N'OPPO A93', 5990000, 143, N'https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-trang-14-600x600.jpg', N'Màn hình 6.43", Chip MediaTek Helio P95RAM 8 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (27, 3, N'OPPO Reno5', 8690000, 197, N'https://cdn.tgdd.vn/Products/Images/42/220438/oppo-reno5-trang-600x600-1-600x600.jpg', N'Màn hình 6.43", Chip Snapdragon 720GRAM 8 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (28, 3, N'OPPO Find X3 Pro 5G', 26990000, 200, N'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-black-001-1-600x600.jpg', N'Màn hình 6.7", Chip Snapdragon 888, RAM 12 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (29, 3, N'OPPO Reno5 5G', 10990000, 150, N'https://cdn.tgdd.vn/Products/Images/42/233460/oppo-reno5-5g-thumb-600x600.jpg', N'Màn hình 6.43", Chip Snapdragon 765GRAM 8 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (30, 3, N'OPPO Reno4 Pro', 10490000, 324, N'https://cdn.tgdd.vn/Products/Images/42/223497/oppo-reno4-pro-trang-600x600.jpg', N'Màn hình 6.5", Chip Snapdragon 720GRAM 8 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (31, 3, N'OPPO Reno5 Marvel', 8720000, 119, N'https://cdn.tgdd.vn/Products/Images/42/236024/oppo-reno5-marvel-thumb-600x600-600x600.jpg', N'Màn hình 6.43", Chip Snapdragon 720GRAM 8 GB', 1)
INSERT [dbo].[Product] ([ID], [CategoryID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status]) VALUES (32, 3, N'OPPO A94', 7690000, 257, N'https://cdn.tgdd.vn/Products/Images/42/234316/oppo-a94-black-thumb-600x600-1-600x600.jpg', N'Màn hình 6.43", Chip MediaTek Helio P95RAM 8 GB', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (2, N'Toi', N'123', 1)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (5, N'PhanQuan', N'PhanQuan', 0)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (6, N'AnhTrai', N'123', 0)
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (12, N'1', N'1', 0)
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
