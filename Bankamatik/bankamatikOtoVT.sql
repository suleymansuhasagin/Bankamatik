create database Bankamatik
USE [Bankamatik]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteriler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tcNo] [nvarchar](12) NULL,
	[adSoyad] [nvarchar](50) NULL,
	[adres] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
	[bakiye] [decimal](18, 2) NULL,
	[durum] [bigint] NULL,
 CONSTRAINT [PK_musteriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[musteriler] ON
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (1, N'123', N'Orhan Veli KANIK', N'Adana Seyhan', N'(555) 555-5555', N'1020', CAST(2205.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (4, N'126', N'Ahmet Kaya', N'hatay merkez mah. no 2', N'(555) 123-1111', N'126', CAST(100.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (5, N'129', N'Tarık Akan', N'istanbul tuzla', N'(111) 111-1111', N'129', CAST(3500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (7, N'130', N'cüneyt arkın', N'karaman', N'(555) 555-5555', N'130', CAST(3900.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[musteriler] ([ID], [tcNo], [adSoyad], [adres], [telefon], [sifre], [bakiye], [durum]) VALUES (8, N'131', N'Orhan Baba', N'malatya merkez mh.', N'(333) 333-3333', N'131', CAST(5250.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[musteriler] OFF
/****** Object:  Table [dbo].[hareketler]    Script Date: 12/26/2022 01:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hareketler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[musteriID] [int] NULL,
	[islem] [nvarchar](50) NULL,
	[tarih] [date] NULL,
 CONSTRAINT [PK_hareketler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_hareketler_musteriler]    Script Date: 12/26/2022 01:21:38 ******/
ALTER TABLE [dbo].[hareketler]  WITH CHECK ADD  CONSTRAINT [FK_hareketler_musteriler] FOREIGN KEY([musteriID])
REFERENCES [dbo].[musteriler] ([ID])
GO
ALTER TABLE [dbo].[hareketler] CHECK CONSTRAINT [FK_hareketler_musteriler]
GO
