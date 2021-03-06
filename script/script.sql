USE [master]
GO
/****** Object:  Database [CcityDB]    Script Date: 1/14/2016 1:32:19 AM ******/
CREATE DATABASE [CcityDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CcityDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CcityDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CcityDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CcityDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CcityDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CcityDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CcityDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CcityDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CcityDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CcityDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CcityDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CcityDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CcityDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CcityDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CcityDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CcityDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CcityDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CcityDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CcityDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CcityDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CcityDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CcityDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CcityDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CcityDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CcityDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CcityDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CcityDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CcityDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CcityDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CcityDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CcityDB] SET  MULTI_USER 
GO
ALTER DATABASE [CcityDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CcityDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CcityDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CcityDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CcityDB]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 1/14/2016 1:32:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[About] [varchar](max) NULL,
	[NoOfDwellers] [bigint] NULL,
	[Location] [varchar](50) NULL,
	[Weather] [varchar](50) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 1/14/2016 1:32:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[About] [varchar](max) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (1, N'Buenos Aires', N'<p>is the capital and largest city of Argentina</p>', 13473670, N'East Part of Argentina', N'18', 1)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (2, N'Sofia', N'<p>Europe''s most affordable capital to visit</p>', 1228282, N'Situated in Europe', N'20', 2)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (3, N'Chuadanga', N'<p>First Capital Of Bangladesh</p>', 1129015, N'Near Jhenaidah', N'28', 3)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (4, N'comilla ', N'<p>Misti Khai Khali!</p>', 2000000, N'Near Dhaka', N'22', 3)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (5, N'Alberta', N'<p><span style="color: rgb(41, 105, 176);">fourth largest province after</span></p><p><span style="color: rgb(41, 105, 176);"> Quebec&nbsp;part of North America</span></p>', 661848, N'Part Of America', N'5', 4)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (6, N'Amazonas Department', N'<p>Dangerous People Lives Here</p>', 74541, N'Part Of America', N'20', 5)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (7, N'Beijing', N'<p>northern tip of the triangular North China </p>', 21516000, N'Northern Pole ', N'20 Degree', 6)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (8, N'Trier', N'<p>Hard Working People</p>', 105675, N'South Coastal Area', N'22 Degree', 7)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (9, N'Attu', N'<p>a small city</p>', 226, N'South Coastal Area', N'22 Degree', 8)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (10, N'Islamabad', N'<p>Sacred and Scary Place Both</p>', 1900000, N'Centre Of Pakistan', N'30 Degree', 10)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (11, N'New Delhi', N'<p>New Delhi, the capital of India</p><p><br></p>', 16804200, N'Capital OF India', N'30', 9)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (12, N'Moscow', N'largest city of Russia<p><br></p>', 11920000, N'Capital OF India', N'30', 11)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (13, N'Bristol', N'<p>Biggest Part Of UK</p>', 442500, N'Located in UK', N'22', 13)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (14, N'Johannesburg', N'<p>Hardworking People<br></p>', 957441, N'Capital Of South Africa', N'22', 12)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (15, N'Birmingham', N'<p>largest city of alabama</p>', 1101360, N'Capital Of South Africa', N'5', 14)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (16, N'Dhaka', N'<p>Capital Of Bangladesh</p>', 6970105, N'Centre Part OF Bangladesh', N'28', 3)
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (1, N'Argentina', N'<p>Plays Football</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (2, N'bulgaria', N'<p>exotic nations of Europe</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (3, N'Bangladesh', N'<p>Most beautiful country</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (4, N'canada', N'<p>Part of America</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (5, N'Colombia', N'<p>Terror!</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (6, N'China', N'<p>Most populated Country</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (7, N'Germany', N'<p>Sincere and Hardworking People</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (8, N'Greenland', N'<p style="text-align: center;"><span style="color: rgb(41, 105, 176);"><strong>Smallest Country in Population</strong></span></p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (9, N'India', N'<p><span style="color: rgb(226, 80, 65);"><em>Neighbour of Bangladesh</em></span></p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (10, N'Pakistan', N'<p><span style="color: rgb(226, 80, 65);"><em>Neighbour of India<br></em></span></p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (11, N'Russia', N'<p>Source of Neuclear Weapon<br></p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (12, N'South Africa', N'<p>Plays Cricket</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (13, N'United Kingdom', N'<p>British People Lives Here</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (14, N'United State Of AMERICA', N'<p>Most Advance In Technology</p>')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (15, N'Zimbabwe', N'<p><span style="font-size: 23px;">Plays Cricket</span></p>')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Cities]    Script Date: 1/14/2016 1:32:19 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cities] ON [dbo].[Cities]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Countries]    Script Date: 1/14/2016 1:32:19 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Countries] ON [dbo].[Countries]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]
GO
USE [master]
GO
ALTER DATABASE [CcityDB] SET  READ_WRITE 
GO
