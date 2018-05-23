/****** To insert Vietnames:  ******/
/****** 1. make sure script in Unicode-16 ******/
/****** 2. Put N before Vietnames text ******/
/******    Example: N'Nguyễn Công Hoan' ******/

--tạo database
USE [master]
GO

WHILE EXISTS(select NULL from sys.databases where name='QLNS')
BEGIN
    DECLARE @SQL varchar(max)
    SELECT @SQL = COALESCE(@SQL,'') + 'Kill ' + Convert(varchar, SPId) + ';'
    FROM MASTER..SysProcesses
    WHERE DBId = DB_ID(N'QLNS') AND SPId <> @@SPId
    EXEC(@SQL)
    DROP DATABASE [QLNS]
END
GO

/* Collation = SQL_Latin1_General_CP1_CI_AS */
CREATE DATABASE [QLNS]
GO

--Tạo bảng tblDocGia
USE [QLNS]
GO

/****** Object:  Table [dbo].[tblPhieuNhapSach]    Script Date: 05/06/18 5:10:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPhieuNhapSach](
	[MaPhieuNhap] [int] NOT NULL,
	[NgayNhapSach] [datetime2](7) NULL,
	[SoLuongNhap] [int] NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[TheLoai] [nvarchar](50) NULL,
	[TacGia]  [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPhieuNhapSach] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




--Insert vào bảng tblPhieuNhapSach
USE [QLNS]
GO

INSERT INTO [dbo].[tblPhieuNhapSach]
           ([MaPhieuNhap]
           ,[NgayNhapSach]
           ,[SoLuongNhap]
           ,[TenSach]
           ,[TheLoai]
           ,[TacGia] )
     VALUES
           ('1'
           ,convert(datetime,'01/01/1999 00:00:00',101)
           ,'1'
           ,N'twilight'
           ,N'X'
           ,N'Nguyễn Van A')
GO

