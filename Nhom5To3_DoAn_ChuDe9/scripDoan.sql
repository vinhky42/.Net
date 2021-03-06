 USE [master]
GO
/****** Object:  Database [DTB_DOAN]    Script Date: 19/11/2021 8:46:11 SA ******/
CREATE DATABASE [DTB_DOAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DTB_DOAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DTB_DOAN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DTB_DOAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DTB_DOAN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DTB_DOAN] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DTB_DOAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DTB_DOAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DTB_DOAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DTB_DOAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DTB_DOAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DTB_DOAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [DTB_DOAN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DTB_DOAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DTB_DOAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DTB_DOAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DTB_DOAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DTB_DOAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DTB_DOAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DTB_DOAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DTB_DOAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DTB_DOAN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DTB_DOAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DTB_DOAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DTB_DOAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DTB_DOAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DTB_DOAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DTB_DOAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DTB_DOAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DTB_DOAN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DTB_DOAN] SET  MULTI_USER 
GO
ALTER DATABASE [DTB_DOAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DTB_DOAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DTB_DOAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DTB_DOAN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DTB_DOAN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DTB_DOAN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DTB_DOAN] SET QUERY_STORE = OFF
GO
USE [DTB_DOAN]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[madonhang] [int] IDENTITY(1,1) NOT NULL,
	[ngayban] [date] NOT NULL,
	[makh] [int] NOT NULL,
	[khuyenmai] [int] NOT NULL,
	[tongtien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[madonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGTIVI]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGTIVI](
	[mshang] [int] IDENTITY(1,1) NOT NULL,
	[tenhang] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mshang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[mskh] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](100) NOT NULL,
	[gioitinh] [nvarchar](10) NOT NULL,
	[namsinh] [date] NOT NULL,
	[diachi] [nvarchar](100) NOT NULL,
	[sdt] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mskh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[msvn] [nvarchar](100) NOT NULL,
	[hoten] [nvarchar](100) NOT NULL,
	[gioitinh] [nvarchar](10) NOT NULL,
	[diachi] [nvarchar](100) NOT NULL,
	[namsinh] [date] NOT NULL,
	[sdt] [nvarchar](10) NOT NULL,
	[luongcoban] [int] NOT NULL,
	[hesoluong] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[msvn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[loaitk] [int] NULL,
	[masovn] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIVI]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIVI](
	[mstivi] [nvarchar](100) NOT NULL,
	[hangsx] [int] NOT NULL,
	[kichthuoc] [int] NOT NULL,
	[gia] [int] NOT NULL,
	[baohanh] [int] NOT NULL,
	[tinhtrang] [nvarchar](10) NOT NULL,
	[soluong] [int] not null,
PRIMARY KEY CLUSTERED 
(
	[mstivi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTDONHANG]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTDONHANG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masp] [nvarchar](100) NOT NULL,
	[iddonhang] [int] NOT NULL,
	[sluong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NHANVIEN] ([msvn], [hoten], [gioitinh], [diachi], [namsinh], [sdt], [luongcoban], [hesoluong]) VALUES (N'master', N'', N'Nam', N'', CAST(N'2021-11-16' AS Date), N'', 0, 0)
GO
INSERT [dbo].[TAIKHOAN] ([username], [password], [loaitk], [masovn]) VALUES (N'master', N'mystic', 1, N'master')
GO
ALTER TABLE [dbo].[DONHANG] ADD  DEFAULT ((0)) FOR [khuyenmai]
GO
ALTER TABLE [dbo].[DONHANG] ADD  DEFAULT ((0)) FOR [tongtien]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT (N'Nam') FOR [gioitinh]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT ((0)) FOR [luongcoban]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  DEFAULT ((0)) FOR [hesoluong]
GO
ALTER TABLE [dbo].[TAIKHOAN] ADD  DEFAULT ((0)) FOR [loaitk]
GO
ALTER TABLE [dbo].[TIVI] ADD  DEFAULT (N'New') FOR [tinhtrang]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([mskh])
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD FOREIGN KEY([masovn])
REFERENCES [dbo].[NHANVIEN] ([msvn])
GO
ALTER TABLE [dbo].[TIVI]  WITH CHECK ADD FOREIGN KEY([hangsx])
REFERENCES [dbo].[HANGTIVI] ([mshang])
GO
ALTER TABLE [dbo].[TTDONHANG]  WITH CHECK ADD FOREIGN KEY([iddonhang])
REFERENCES [dbo].[DONHANG] ([madonhang])
GO
ALTER TABLE [dbo].[TTDONHANG]  WITH CHECK ADD FOREIGN KEY([masp])
REFERENCES [dbo].[TIVI] ([mstivi])
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD CHECK  (([gioitinh]=N'Nam' OR [gioitinh]=N'Nữ'))
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD CHECK  (([gioitinh]=N'Nam' OR [gioitinh]=N'Nữ'))
GO
ALTER TABLE [dbo].[TIVI]  WITH CHECK ADD CHECK  (([tinhtrang]=N'New' OR [tinhtrang]=N'Renew'))
GO
/****** Object:  StoredProcedure [dbo].[USP_DELETETIVI]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- delete thong tin tivi
CREATE PROC [dbo].[USP_DELETETIVI]
@mstivi nvarchar(100)
AS 
BEGIN
	DELETE TIVI WHERE mstivi = @mstivi;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DSHOADON]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------------------------------------------------------- xuat ds hoa don
create proc [dbo].[USP_DSHOADON]
@date1 date, @date2 date
AS
BEGIN
	SELECT madonhang, tenkh, ngayban, khuyenmai, tongtien FROM DONHANG, KHACHHANG WHERE makh = mskh AND ngayban >= @date1 AND ngayban <= @date2
END
GO
/****** Object:  StoredProcedure [dbo].[USP_DSNV]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- xuat ds nhan vien
create proc [dbo].[USP_DSNV]
AS
BEGIN
	select *, luong = luongcoban*hesoluong from NHANVIEN , TAIKHOAN where msvn = masovn and loaitk = 0
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GETBILLINFOR]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------------------------------------------------get bill infor by id
create proc [dbo].[USP_GETBILLINFOR]
@id int
AS 
BEGIN
	select masp, gia, sum(sluong) as soluong, gia*sum(sluong) as thanhtien from TTDONHANG, TIVI , DONHANG where masp = mstivi and madonhang = iddonhang and iddonhang = @id group by masp, gia
END
GO

USP_GETBILLINFOR 2
/****** Object:  StoredProcedure [dbo].[USP_GETHDBYID]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------------------- get hd by id
create proc [dbo].[USP_GETHDBYID]
@id INT
AS
BEGIN 
	SELECT madonhang, tenkh, ngayban, khuyenmai, tongtien FROM DONHANG, KHACHHANG WHERE makh = mskh AND madonhang = @id
END
GO
/****** Object:  StoredProcedure [dbo].[USP_INSERTTIVI]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- them tivi
create PROC [dbo].[USP_INSERTTIVI]
@mstivi nvarchar(100), @hangsx int, @kichthuoc int, @gia int, @baohanh int, @tinhtrang nvarchar(100), @soluong int
as
begin
	INSERT INTO TIVI
	VALUES
	(
		@mstivi , @hangsx  , @gia , @kichthuoc , @baohanh , @tinhtrang , @soluong
	)
end
GO
/****** Object:  StoredProcedure [dbo].[USP_KHO]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------------------------------------------------------------------------------KHO
create proc [dbo].[USP_KHO]
AS 
BEGIN 
	select mstivi, tenhang, kichthuoc, gia, tinhtrang, baohanh, soluong from TIVI, HANGTIVI where hangsx = mshang AND mstivi != 'EROR (DELETED)' 
END 
GO
/****** Object:  StoredProcedure [dbo].[USP_LISTTVBYHANG1]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------------------------------------------------load danhs ach tivi bang ten hang va kich thuong
create PROC [dbo].[USP_LISTTVBYHANG1]
@hang nvarchar(100), @inch float
AS
BEGIN
	SELECT T.mstivi, H.tenhang, T.kichthuoc, T.gia,T.tinhtrang, T.baohanh, T.soluong FROM TIVI AS T, HANGTIVI AS H WHERE hangsx = mshang AND  tenhang = @hang AND kichthuoc = @inch 
END
GO
/****** Object:  StoredProcedure [dbo].[USP_LISTTVBYMODEL]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------------------------------------------------------------------------------------load tivi by model
create PROC [dbo].[USP_LISTTVBYMODEL]
@model nvarchar(100)
AS
BEGIN
	SELECT T.mstivi, H.tenhang, T.kichthuoc, T.gia, T.tinhtrang, T.baohanh, T.soluong FROM TIVI AS T, HANGTIVI AS H WHERE hangsx = mshang AND  mstivi = @model
END
GO
/****** Object:  StoredProcedure [dbo].[USP_LOGIN]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------------------------------------CÁC STORE PROCERDUCE--------------------------------------------------------------

---------------------------------------------------------------------------------------------------------proc login

CREATE PROC [dbo].[USP_LOGIN]
@user nvarchar(100), @pass nvarchar(100)
AS
BEGIN
	SELECT * FROM TAIKHOAN WHERE username = @user and password = @pass
END
GO
/****** Object:  StoredProcedure [dbo].[USP_SELECTID]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- select id by name HANGTV
create PROC [dbo].[USP_SELECTID]
@name nvarchar(100)
AS 
BEGIN	
	select * from HANGTIVI where tenhang = @name
END
GO
/****** Object:  StoredProcedure [dbo].[USP_SUANV]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- sua nhan vien
CREATE proc [dbo].[USP_SUANV]
@msnv nvarchar(100), @hoten nvarchar(100), @gioitinh nvarchar(10), @diachi nvarchar(100), @namsinh date, @sdt nvarchar(10), @luongcoban int, @hsl float
AS
BEGIN
		UPDATE NHANVIEN
		SET hoten = @hoten, gioitinh = @gioitinh, diachi = @diachi, namsinh= @namsinh, sdt = @sdt, luongcoban = @luongcoban, hesoluong = @hsl
		where msvn = @msnv
		
END
GO
/****** Object:  StoredProcedure [dbo].[USP_TTDONHANG]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- show tt don hang
create proc [dbo].[USP_TTDONHANG]
@iddonhang int
as
begin
	select masp,gia, count(masp) as soluong, gia*count(masp) as thanhtien 
	from TTDONHANG, TIVI , DONHANG 
	where masp = mstivi and madonhang = @iddonhang and iddonhang = @iddonhang group by masp, gia
end
GO
/****** Object:  StoredProcedure [dbo].[USP_THEMDONHANG]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------------------------------------------------------------------------------------------------- them hoa don hang

CREATE proc [dbo].[USP_THEMDONHANG]
@makh nvarchar(100), @khuyenmai int, @tongtien int
AS
BEGIN
	INSERT INTO DONHANG VALUES (GETDATE(),  @makh, @khuyenmai ,@tongtien)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_THEMKHACHHANG]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--------------------------------------------------------------------------------------------------- them khach hang
create proc [dbo].[USP_THEMKHACHHANG]
@tenkh nvarchar(100), @gioitinh nvarchar(10),@namsinh date, @diachi nvarchar(100), @sdt nvarchar(100)
AS
BEGIN
	insert into KHACHHANG
	values
	(
		@tenkh, @gioitinh, @namsinh, @diachi, @sdt
	)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_THEMNV]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- them nhan vien
create proc [dbo].[USP_THEMNV]
@msnv nvarchar(100), @hoten nvarchar(100), @gioitinh nvarchar(10), @diachi nvarchar(100), @namsinh date, @sdt nvarchar(10), @luongcoban int, @hsl float
AS
BEGIN
	insert into NHANVIEN
	values
	(
		@msnv , @hoten , @gioitinh , @diachi , @namsinh , @sdt , @luongcoban , @hsl
	)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_THEMNVADMIN]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- them ttnhan vien tai khoan admin
create proc [dbo].[USP_THEMNVADMIN]
@msnv nvarchar(100)
AS
BEGIN
	insert into NHANVIEN
	values
	(
		@msnv , '' , 'Nam' , '' , GETDATE() , '' , 0 , 0
	)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_THEMTK]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- them tai khoan
create proc [dbo].[USP_THEMTK]
@username nvarchar(100), @password nvarchar(100), @msnv nvarchar(100)
AS
BEGIN
	insert into TAIKHOAN
	values
	(
		@username, @password, 0, @msnv
	)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_THEMTKADMIN]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------- them tai khoan admin
create proc [dbo].[USP_THEMTKADMIN]
@username nvarchar(100), @password nvarchar(100), @msnv nvarchar(100)
AS
BEGIN
	insert into TAIKHOAN
	values
	(
		@username, @password, 1, @msnv
	)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UPDATETIVI]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------- update thong tin tivi
create PROC [dbo].[USP_UPDATETIVI]
@mstivi nvarchar(100), @hangsx int, @kichthuoc int, @gia int, @baohanh int, @tinhtrang nvarchar(100), @soluong int
AS 
BEGIN
	UPDATE TIVI
	SET   hangsx = @hangsx, kichthuoc = @kichthuoc, gia = @gia, baohanh = @baohanh, tinhtrang = @tinhtrang , soluong = @soluong
	WHERE mstivi = @mstivi;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UPDATETIVIEROR]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--cap nhat tt don hang co ten tivi thanh eror(deleted)

create proc [dbo].[USP_UPDATETIVIEROR]
@masp nvarchar(100)
AS 
BEGIN
	UPDATE TTDONHANG
	SET masp = 'EROR (DELETED)' 
	WHERE masp  = @masp
END 
GO

/****** Object:  StoredProcedure [dbo].[USP_XOANV]    Script Date: 19/11/2021 8:46:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------- xoa nhan vien
create proc [dbo].[USP_XOANV]
@msnv nvarchar(100)
AS
BEGIN
	DELETE NHANVIEN WHERE msvn = @msnv;
END
GO
USE [master]
GO
ALTER DATABASE [DTB_DOAN] SET  READ_WRITE 
GO


-----  THEM MA TIVI
use DTB_DOAN
INSERT INTO HANGTIVI VALUES('UNDETECTED')
insert into TIVI values('EROR (DELETED)', 1, 1, 1, 1, 'New', 1)

-----