CREATE DATABASE [dbbook]
GO
USE [dbbook]
GO
--/****** Object:  StoredProcedure [dbo].[Sp_Product_List_Of_Category]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP PROCEDURE [dbo].[Sp_Product_List_Of_Category]
--GO
--/****** Object:  StoredProcedure [dbo].[Sp_Product_List]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP PROCEDURE [dbo].[Sp_Product_List]
--GO
--/****** Object:  StoredProcedure [dbo].[Sp_Product_Details]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP PROCEDURE [dbo].[Sp_Product_Details]
--GO
--/****** Object:  StoredProcedure [dbo].[Sp_Catagory_Details]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP PROCEDURE [dbo].[Sp_Catagory_Details]
--GO
--ALTER TABLE [dbo].[tbl_order] DROP CONSTRAINT [FK__tbl_order__order__5BE2A6F2]
--GO
--ALTER TABLE [dbo].[tbl_order] DROP CONSTRAINT [FK__tbl_order__order__5AEE82B9]
--GO
--ALTER TABLE [dbo].[tbl_oderdetail] DROP CONSTRAINT [FK__tbl_oderd__od_fk__59FA5E80]
--GO
--ALTER TABLE [dbo].[tbl_oderdetail] DROP CONSTRAINT [FK__tbl_oderd__od_fk__59063A47]
--GO
--ALTER TABLE [dbo].[tbl_customer] DROP CONSTRAINT [FK__tbl_custo__cus_a__5812160E]
--GO
--ALTER TABLE [dbo].[tbl_cart] DROP CONSTRAINT [FK__tbl_cart__cart_f__571DF1D5]
--GO
--ALTER TABLE [dbo].[tbl_cart] DROP CONSTRAINT [FK__tbl_cart__cart_f__5629CD9C]
--GO
--ALTER TABLE [dbo].[tbl_book] DROP CONSTRAINT [FK__tbl_book__book_f__5535A963]
--GO
--ALTER TABLE [dbo].[tbl_book] DROP CONSTRAINT [FK__tbl_book__book_f__5441852A]
--GO
--ALTER TABLE [dbo].[tbl_book] DROP CONSTRAINT [FK__tbl_book__book_f__534D60F1]
--GO
--ALTER TABLE [dbo].[tbl_avtofcus] DROP CONSTRAINT [avtofcusFK]
--GO
--ALTER TABLE [dbo].[tbl_avtofbook] DROP CONSTRAINT [avtofbookFK]
--GO
--ALTER TABLE [dbo].[tbl_account] DROP CONSTRAINT [FK__tbl_accou__acc_r__5070F446]
--GO
--/****** Object:  Index [UQ__tbl_acco__136121E130E91A03]    Script Date: 1/18/2021 12:46:08 PM ******/
--ALTER TABLE [dbo].[tbl_account] DROP CONSTRAINT [UQ__tbl_acco__136121E130E91A03]
--GO
--/****** Object:  Table [dbo].[tbl_status]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_status]
--GO
--/****** Object:  Table [dbo].[tbl_role]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_role]
--GO
--/****** Object:  Table [dbo].[tbl_publisher]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_publisher]
--GO
--/****** Object:  Table [dbo].[tbl_order]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_order]
--GO
--/****** Object:  Table [dbo].[tbl_oderdetail]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_oderdetail]
--GO
--/****** Object:  Table [dbo].[tbl_customer]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_customer]
--GO
--/****** Object:  Table [dbo].[tbl_cart]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_cart]
--GO
--/****** Object:  Table [dbo].[tbl_book]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_book]
--GO
--/****** Object:  Table [dbo].[tbl_avtofcus]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_avtofcus]
--GO
--/****** Object:  Table [dbo].[tbl_avtofbook]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_avtofbook]
--GO
--/****** Object:  Table [dbo].[tbl_author]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_author]
--GO
--/****** Object:  Table [dbo].[tbl_account]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_account]
--GO
--/****** Object:  View [dbo].[view_Category_List]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP VIEW [dbo].[view_Category_List]
--GO
--/****** Object:  Table [dbo].[tbl_category]    Script Date: 1/18/2021 12:46:08 PM ******/
--DROP TABLE [dbo].[tbl_category]
--GO
--/****** Object:  Table [dbo].[tbl_category]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category](
	[cate_id] [int] IDENTITY(1,1) NOT NULL,
	[cate_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_Category_List]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- add view
create view [dbo].[view_Category_List]
as
select * from tbl_category

GO
/****** Object:  Table [dbo].[tbl_account]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_account](
	[acc_id] [int] IDENTITY(1,1) NOT NULL,
	[acc_username] [nvarchar](20) NOT NULL,
	[acc_password] [nvarchar](200) NOT NULL,
	[acc_role_fk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[acc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_author]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_author](
	[au_id] [int] IDENTITY(1,1) NOT NULL,
	[au_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[au_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_avtofbook]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_avtofbook](
	[avtofbook_id] [int] NOT NULL,
	[avtofbook_img] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[avtofbook_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_avtofcus]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_avtofcus](
	[avtofcus_id] [int] NOT NULL,
	[avtofcus_img] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[avtofcus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_book]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_book](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[book_name] [nvarchar](200) NULL,
	[book_description] [nvarchar](max) NULL,
	[book_price] [int] NULL,
	[book_fk_auid] [int] NULL,
	[book_fk_puid] [int] NULL,
	[book_fk_cateid] [int] NULL,
	[book_quantity] [int] NULL,
	[book_img] [nvarchar](max) NULL,
	[book_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_cart]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cart](
	[cart_fk_cusid] [int] NOT NULL,
	[cart_fk_bookid] [int] NOT NULL,
	[cart_book_amount] [int] NULL,
 CONSTRAINT [cart_PK] PRIMARY KEY CLUSTERED 
(
	[cart_fk_cusid] ASC,
	[cart_fk_bookid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customer](
	[cus_id] [int] IDENTITY(1,1) NOT NULL,
	[cus_name] [nvarchar](50) NOT NULL,
	[cus_phone] [nvarchar](12) NOT NULL,
	[cus_address] [nvarchar](200) NOT NULL,
	[cus_acc_fk] [int] NULL,
	[cus_mail] [nchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_oderdetail]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_oderdetail](
	[od_fk_orderid] [int] NOT NULL,
	[od_fk_bookid] [int] NOT NULL,
	[od_book_amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[od_fk_orderid] ASC,
	[od_fk_bookid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_order]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_fk_cusid] [int] NULL,
	[order_time] [datetime] NULL,
	[order_stt_fk] [int] NULL,
	[order_address] [nvarchar](max) NULL,
	[order_isPaid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_publisher]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_publisher](
	[pu_id] [int] IDENTITY(1,1) NOT NULL,
	[pu_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[pu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_role]    Script Date: 1/18/2021 12:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](20) NULL,
	[role_description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_status]    Script Date: 1/18/2021 12:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_status](
	[stt_id] [int] IDENTITY(1,1) NOT NULL,
	[stt_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[stt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_account] ON 

INSERT [dbo].[tbl_account] ([acc_id], [acc_username], [acc_password], [acc_role_fk]) VALUES (1, N'admin', N'gFuYE2Bpl7A=', 1)
INSERT [dbo].[tbl_account] ([acc_id], [acc_username], [acc_password], [acc_role_fk]) VALUES (2, N'shipper', N'gFuYE2Bpl7A=', 2)
INSERT [dbo].[tbl_account] ([acc_id], [acc_username], [acc_password], [acc_role_fk]) VALUES (3, N'user', N'gFuYE2Bpl7A=', 3)
INSERT [dbo].[tbl_account] ([acc_id], [acc_username], [acc_password], [acc_role_fk]) VALUES (4, N'nghiadang666', N'DmfKFC4xWAEhPNGDSlAlDA==', 3)
INSERT [dbo].[tbl_account] ([acc_id], [acc_username], [acc_password], [acc_role_fk]) VALUES (5, N'nhannguyen', N'4ZohyaJo+4N1kVyVGE62Ig==', 3)
INSERT [dbo].[tbl_account] ([acc_id], [acc_username], [acc_password], [acc_role_fk]) VALUES (6, N'user666', N'bjMjd4APyrI=', 3)
SET IDENTITY_INSERT [dbo].[tbl_account] OFF
SET IDENTITY_INSERT [dbo].[tbl_author] ON 

INSERT [dbo].[tbl_author] ([au_id], [au_name]) VALUES (1, N'Baird T. Spalding')
INSERT [dbo].[tbl_author] ([au_id], [au_name]) VALUES (2, N'Paulo Coelho')
INSERT [dbo].[tbl_author] ([au_id], [au_name]) VALUES (3, N'Nelle Harper Lee')
INSERT [dbo].[tbl_author] ([au_id], [au_name]) VALUES (9, N'Jeffrey Howard Archer')
SET IDENTITY_INSERT [dbo].[tbl_author] OFF
SET IDENTITY_INSERT [dbo].[tbl_book] ON 

INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (1, N'Hành trình về Phương Đông', N'Hành trình về phương Đông (Journey to the East) là cuốn sách do giáo sư Baird T. Spalding ghi chép lại cuộc du khảo cùng đoàn khoa học gia Hoàng gia Anh – những người giỏi và danh giá nhất Đại học Oxford danh tiếng đến vùng đất Ấn Độ và các vùng lân cận để khám phá thế giới huyền bí không giải thích hay chứng minh được bằng khoa học thực nghiệm...', 78000, 1, 2, 15, 200, N'hanhtrinhvephuongdong.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (2, N'Nhà giả kim', N'Nhà giả kim (tiếng Bồ Đào Nha: O Alquimista) là một cuốn sách được xuất bản lần đầu ở Brasil năm 1988 và là cuốn sách nổi tiếng nhất của nhà văn Paulo Coelho. Nó được dịch ra 67 ngôn ngữ và bán ra tới 65 triệu bản (Theo thống kê ngày 19.5.2008), trở thành một trong những quyển sách bán chạy nhất mọi thời đại. Đây là một câu chuyện thúc giục độc giả theo đuổi giấc mơ của mình...', 69000, 2, 1, 13, 200, N'nha-gia-kim.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (3, N'Giết con chim nhại', N'Giết con chim nhại (nguyên tác tiếng Anh: To Kill a Mockingbird) là cuốn tiểu thuyết của Harper Lee; đây là cuốn tiểu thuyết rất được yêu chuộng, thuộc loại bán chạy nhất thế giới với hơn 10 triệu bản. Cuốn tiểu thuyết được xuất bản vào năm 1960 và đã giành được giải Pulitzer cho tác phẩm hư cấu năm 1961. Nội dung tiểu thuyết dựa vào cuộc đời của nhiều bạn bè và họ hàng tác giả, nhưng tên nhân vật đã được thay đổi. Tác giả cho biết hình mẫu nhân vật Jean Louise "Scout" Finch, người dẫn truyện, được xây dựng dựa vào chính bản thân mình.', 108000, 3, 1, 13, 200, N'giet-con-chim-nhai.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (9, N'lol7', N'lol7', 3000, 1, 1, 10, 300, N'lol7.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (11, N'Hai Thế Giới', N'Hai số phận (có tên gốc tiếng Anh là: Kane and Abel) là một cuốn tiểu thuyết được sáng tác vào năm 1979 bởi nhà văn người Anh Jeffrey Archer. Tựa đề Kane and Abel dựa theo câu chuyện của anh em: Cain và Abel trong Kinh Thánh Cựu Ước.
Tác phẩm được xuất bản tại Anh Quốc vào năm 1979 và tại Hoa Kỳ vào tháng 2 năm 1980, cuốn sách phổ biến thành công trên thế giới. Sách đạt danh hiệu sách bán chạy nhất theo danh sách của tờ New York Times và năm 1985 nó được đưa lên chương trình truyền hình miniseries của CBS với tên là Kane & Abel bắt đầu với Peter Strauss vai Rosnovski và Sam Neill vai Kane.', 89000, 9, 1, 13, 190, N'hai-the-gioi.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (16, N'bố già', N'Tiểu thuyết của Mario Puzo', 124000, 3, 1, 13, 20, N'bo-gia.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (17, N'Ong trum cuoi cung', N'Ông trùm cuối cùng', 144000, 2, 2, 10, 20, N'ong-trum-cuoi-cung.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (18, N'Kinh te vi mo', N'Kinh tế học vĩ mô', 144000, 9, 2, 14, 20, N'cach-nen-kinh-te-van-hanh.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (19, N'Luat Bo Gia', N'Luật bố già - Mario Puzo', 144000, 3, 2, 15, 20, N'luat-bo-gia.jpg', 1)
INSERT [dbo].[tbl_book] ([book_id], [book_name], [book_description], [book_price], [book_fk_auid], [book_fk_puid], [book_fk_cateid], [book_quantity], [book_img], [book_status]) VALUES (20, N'Elon Musk', N'Elon Musk & SpaceX', 150000, 3, 2, 14, 20, N'elon-musk-tesla.jpg', 1)
SET IDENTITY_INSERT [dbo].[tbl_book] OFF
SET IDENTITY_INSERT [dbo].[tbl_category] ON 

INSERT [dbo].[tbl_category] ([cate_id], [cate_name]) VALUES (10, N'Thriller book')
INSERT [dbo].[tbl_category] ([cate_id], [cate_name]) VALUES (11, N'Encyclopedia')
INSERT [dbo].[tbl_category] ([cate_id], [cate_name]) VALUES (13, N'Novel')
INSERT [dbo].[tbl_category] ([cate_id], [cate_name]) VALUES (14, N'Comic')
INSERT [dbo].[tbl_category] ([cate_id], [cate_name]) VALUES (15, N'Reference book')
SET IDENTITY_INSERT [dbo].[tbl_category] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

INSERT [dbo].[tbl_customer] ([cus_id], [cus_name], [cus_phone], [cus_address], [cus_acc_fk], [cus_mail]) VALUES (1, N'Nghia Dang', N'0364956694', N'Thu Duc, TP.HCM', 3, N'vannghiadang79@gmail.com                                                                                                                                                                                ')
INSERT [dbo].[tbl_customer] ([cus_id], [cus_name], [cus_phone], [cus_address], [cus_acc_fk], [cus_mail]) VALUES (2, N'Tuan Nhan', N'0547327432', N'Thu Duc, TP.HCM', 2, N'vannghiadang79@gmail.com                                                                                                                                                                                ')
INSERT [dbo].[tbl_customer] ([cus_id], [cus_name], [cus_phone], [cus_address], [cus_acc_fk], [cus_mail]) VALUES (3, N'đặng văn nghĩa', N'0364956649', N'ktx dhqg khu b', 4, N'vannghiadang79@gmail.com                                                                                                                                                                                ')
INSERT [dbo].[tbl_customer] ([cus_id], [cus_name], [cus_phone], [cus_address], [cus_acc_fk], [cus_mail]) VALUES (4, N'nhan', N'0827571386', N'581 kha vạn cân', 5, N'vannghiadang79@gmail.com                                                                                                                                                                                ')
INSERT [dbo].[tbl_customer] ([cus_id], [cus_name], [cus_phone], [cus_address], [cus_acc_fk], [cus_mail]) VALUES (5, N'đặng văn nghĩa', N'0364956649', N'ktx dhqg khu b, Di An, Binh Duong', 6, N'vannghiadang79@gmail.com                                                                                                                                                                                ')
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
INSERT [dbo].[tbl_oderdetail] ([od_fk_orderid], [od_fk_bookid], [od_book_amount]) VALUES (23, 17, 1)
INSERT [dbo].[tbl_oderdetail] ([od_fk_orderid], [od_fk_bookid], [od_book_amount]) VALUES (23, 20, 1)
INSERT [dbo].[tbl_oderdetail] ([od_fk_orderid], [od_fk_bookid], [od_book_amount]) VALUES (25, 18, 1)
INSERT [dbo].[tbl_oderdetail] ([od_fk_orderid], [od_fk_bookid], [od_book_amount]) VALUES (25, 19, 1)
INSERT [dbo].[tbl_oderdetail] ([od_fk_orderid], [od_fk_bookid], [od_book_amount]) VALUES (27, 16, 3)
INSERT [dbo].[tbl_oderdetail] ([od_fk_orderid], [od_fk_bookid], [od_book_amount]) VALUES (27, 18, 1)
INSERT [dbo].[tbl_oderdetail] ([od_fk_orderid], [od_fk_bookid], [od_book_amount]) VALUES (27, 20, 1)
INSERT [dbo].[tbl_oderdetail] ([od_fk_orderid], [od_fk_bookid], [od_book_amount]) VALUES (28, 20, 1)
SET IDENTITY_INSERT [dbo].[tbl_order] ON 

INSERT [dbo].[tbl_order] ([order_id], [order_fk_cusid], [order_time], [order_stt_fk], [order_address], [order_isPaid]) VALUES (23, 1, CAST(N'2021-01-14T21:42:43.000' AS DateTime), 3, N'Thu Duc, TP.HCM', 1)
INSERT [dbo].[tbl_order] ([order_id], [order_fk_cusid], [order_time], [order_stt_fk], [order_address], [order_isPaid]) VALUES (25, 4, CAST(N'2021-01-14T21:48:29.000' AS DateTime), 1, N'581 kha vạn cân', 0)
INSERT [dbo].[tbl_order] ([order_id], [order_fk_cusid], [order_time], [order_stt_fk], [order_address], [order_isPaid]) VALUES (27, 1, CAST(N'2021-01-14T22:51:02.000' AS DateTime), 2, N'Thu Duc, TP.HCM', 0)
INSERT [dbo].[tbl_order] ([order_id], [order_fk_cusid], [order_time], [order_stt_fk], [order_address], [order_isPaid]) VALUES (28, 1, CAST(N'2021-01-17T19:04:32.000' AS DateTime), 3, N'Thu Duc, TP.HCM', 1)
SET IDENTITY_INSERT [dbo].[tbl_order] OFF
SET IDENTITY_INSERT [dbo].[tbl_publisher] ON 

INSERT [dbo].[tbl_publisher] ([pu_id], [pu_name]) VALUES (1, N'NXB Văn Học')
INSERT [dbo].[tbl_publisher] ([pu_id], [pu_name]) VALUES (2, N'NXB Thế Giới')
SET IDENTITY_INSERT [dbo].[tbl_publisher] OFF
SET IDENTITY_INSERT [dbo].[tbl_role] ON 

INSERT [dbo].[tbl_role] ([role_id], [role_name], [role_description]) VALUES (1, N'Admin', N'chu cua hang')
INSERT [dbo].[tbl_role] ([role_id], [role_name], [role_description]) VALUES (2, N'Shipper', N'nguoi van chuyen')
INSERT [dbo].[tbl_role] ([role_id], [role_name], [role_description]) VALUES (3, N'User', N'nguoi dung')
SET IDENTITY_INSERT [dbo].[tbl_role] OFF
SET IDENTITY_INSERT [dbo].[tbl_status] ON 

INSERT [dbo].[tbl_status] ([stt_id], [stt_name]) VALUES (1, N'Chờ duyệt')
INSERT [dbo].[tbl_status] ([stt_id], [stt_name]) VALUES (2, N'Đang vận chuyển')
INSERT [dbo].[tbl_status] ([stt_id], [stt_name]) VALUES (3, N'Hoàn tất')
INSERT [dbo].[tbl_status] ([stt_id], [stt_name]) VALUES (4, N'Đã hủy')
SET IDENTITY_INSERT [dbo].[tbl_status] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_acco__136121E130E91A03]    Script Date: 1/18/2021 12:46:09 PM ******/
ALTER TABLE [dbo].[tbl_account] ADD UNIQUE NONCLUSTERED 
(
	[acc_username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_account]  WITH CHECK ADD FOREIGN KEY([acc_role_fk])
REFERENCES [dbo].[tbl_role] ([role_id])
GO
ALTER TABLE [dbo].[tbl_avtofbook]  WITH CHECK ADD  CONSTRAINT [avtofbookFK] FOREIGN KEY([avtofbook_id])
REFERENCES [dbo].[tbl_book] ([book_id])
GO
ALTER TABLE [dbo].[tbl_avtofbook] CHECK CONSTRAINT [avtofbookFK]
GO
ALTER TABLE [dbo].[tbl_avtofcus]  WITH CHECK ADD  CONSTRAINT [avtofcusFK] FOREIGN KEY([avtofcus_id])
REFERENCES [dbo].[tbl_customer] ([cus_id])
GO
ALTER TABLE [dbo].[tbl_avtofcus] CHECK CONSTRAINT [avtofcusFK]
GO
ALTER TABLE [dbo].[tbl_book]  WITH CHECK ADD FOREIGN KEY([book_fk_auid])
REFERENCES [dbo].[tbl_author] ([au_id])
GO
ALTER TABLE [dbo].[tbl_book]  WITH CHECK ADD FOREIGN KEY([book_fk_puid])
REFERENCES [dbo].[tbl_publisher] ([pu_id])
GO
ALTER TABLE [dbo].[tbl_book]  WITH CHECK ADD FOREIGN KEY([book_fk_cateid])
REFERENCES [dbo].[tbl_category] ([cate_id])
GO
ALTER TABLE [dbo].[tbl_cart]  WITH CHECK ADD FOREIGN KEY([cart_fk_cusid])
REFERENCES [dbo].[tbl_customer] ([cus_id])
GO
ALTER TABLE [dbo].[tbl_cart]  WITH CHECK ADD FOREIGN KEY([cart_fk_bookid])
REFERENCES [dbo].[tbl_book] ([book_id])
GO
ALTER TABLE [dbo].[tbl_customer]  WITH CHECK ADD FOREIGN KEY([cus_acc_fk])
REFERENCES [dbo].[tbl_account] ([acc_id])
GO
ALTER TABLE [dbo].[tbl_oderdetail]  WITH CHECK ADD FOREIGN KEY([od_fk_orderid])
REFERENCES [dbo].[tbl_order] ([order_id])
GO
ALTER TABLE [dbo].[tbl_oderdetail]  WITH CHECK ADD FOREIGN KEY([od_fk_bookid])
REFERENCES [dbo].[tbl_book] ([book_id])
GO
ALTER TABLE [dbo].[tbl_order]  WITH CHECK ADD FOREIGN KEY([order_fk_cusid])
REFERENCES [dbo].[tbl_customer] ([cus_id])
GO
ALTER TABLE [dbo].[tbl_order]  WITH CHECK ADD FOREIGN KEY([order_stt_fk])
REFERENCES [dbo].[tbl_status] ([stt_id])
GO
/****** Object:  StoredProcedure [dbo].[Sp_Catagory_Details]    Script Date: 1/18/2021 12:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
create proc [dbo].[Sp_Catagory_Details](@id int)
as
select * from tbl_category where cate_id = @id

GO
/****** Object:  StoredProcedure [dbo].[Sp_Product_Details]    Script Date: 1/18/2021 12:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_Product_Details](@id int)
as
select * from tbl_book where book_status = 1 and book_id = @id
GO
/****** Object:  StoredProcedure [dbo].[Sp_Product_List]    Script Date: 1/18/2021 12:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- add proc
create proc [dbo].[Sp_Product_List]
as
select * from tbl_book where book_status = 1
order by book_name

GO
/****** Object:  StoredProcedure [dbo].[Sp_Product_List_Of_Category]    Script Date: 1/18/2021 12:46:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Sp_Product_List_Of_Category](@categoryID int)
as
select * from tbl_book where book_status = 1 and book_fk_cateid = @categoryID
order by book_name

GO
