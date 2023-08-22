USE [master]
GO
CREATE DATABASE [Magasine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Magasine', FILENAME = N'E:\Program Files (x86)\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Magasine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Magasine_log', FILENAME = N'E:\Program Files (x86)\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Magasine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Magasine] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Magasine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Magasine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Magasine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Magasine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Magasine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Magasine] SET ARITHABORT OFF 
GO
ALTER DATABASE [Magasine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Magasine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Magasine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Magasine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Magasine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Magasine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Magasine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Magasine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Magasine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Magasine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Magasine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Magasine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Magasine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Magasine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Magasine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Magasine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Magasine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Magasine] SET RECOVERY FULL 
GO
ALTER DATABASE [Magasine] SET  MULTI_USER 
GO
ALTER DATABASE [Magasine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Magasine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Magasine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Magasine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Magasine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Magasine] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Magasine', N'ON'
GO
ALTER DATABASE [Magasine] SET QUERY_STORE = ON
GO
ALTER DATABASE [Magasine] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Magasine]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07.07.2023 21:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](15) NULL,
	[category] [nchar](10) NULL,
	[price] [float] NULL,
	[discount] [int] NULL,
	[quantity] [int] NULL,
	[measurement] [nchar](10) NULL,
	[producer] [nchar](10) NULL,
	[country] [nchar](10) NULL,
	[supplier] [nchar](10) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'Гречка         ', N'Крупи     ', 45, 2, 10, N'пачки     ', N'Зірочка   ', N'Україна   ', N'Агротек   ', CAST(N'2023-08-10' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (2, N'Кукурудза      ', N'Крупи     ', 60, 10, 3, N'пачки     ', N'Панас     ', N'Уругвай   ', N'Andelos   ', CAST(N'2023-01-24' AS Date), CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (3, N'Рис            ', N'Крупи     ', 42, 5, 4, N'пачки     ', N'Зірочка   ', N'Україна   ', N'Агротек   ', CAST(N'2023-05-02' AS Date), CAST(N'2024-01-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (4, N'Горох          ', N'Крупи     ', 32, 0, 2, N'кг        ', N'Оглінс    ', N'Китай     ', N'Andelos   ', CAST(N'2023-07-06' AS Date), CAST(N'2023-12-30' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (5, N'Пшениця        ', N'Крупи     ', 67, 1, 7, N'пачки     ', N'Отто      ', N'Україна   ', N'Агротек   ', CAST(N'2023-02-26' AS Date), CAST(N'2023-06-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (6, N'Пшоно          ', N'Крупи     ', 56, 25, 14, N'пачки     ', N'Йява      ', N'Японія    ', N'Andelos   ', CAST(N'2023-06-23' AS Date), CAST(N'2023-08-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (7, N'Ячмінь         ', N'Крупи     ', 59, 0, 6, N'кг        ', N'Зірочка   ', N'Україна   ', N'Агротек   ', CAST(N'2023-09-12' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (8, N'Булгур         ', N'Крупи     ', 34, 0, 3, N'пачки     ', N'Зірочка   ', N'Україна   ', N'Агротек   ', CAST(N'2023-01-28' AS Date), CAST(N'2023-03-03' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'Кускус         ', N'Крупи     ', 57, 4, 9, N'пачки     ', N'Йява      ', N'Японія    ', N'Andelos   ', CAST(N'2023-02-28' AS Date), CAST(N'2023-04-18' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (10, N'Сочевиця       ', N'Крупи     ', 48, 14, 23, N'пачки     ', N'Отто      ', N'Україна   ', N'Агротек   ', CAST(N'2023-05-02' AS Date), CAST(N'2023-06-30' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (11, N'Чіпси          ', N'Снеки     ', 78, 1, 10, N'пачки     ', N'Люкс      ', N'Україна   ', N'Sun Life  ', CAST(N'2023-12-10' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (12, N'Горішки        ', N'Снеки     ', 56, 35, 20, N'пачки     ', N'ТМ Ксенія ', N'Японія    ', N'Andelos   ', CAST(N'2023-03-17' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (13, N'Сухарики       ', N'Снеки     ', 86, 6, 34, N'пачки     ', N'Flint     ', N'Україна   ', N'Andelos   ', CAST(N'2023-05-23' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (14, N'Насіння        ', N'Снеки     ', 67, 14, 10, N'пачки     ', N'GLSEEDS   ', N'Україна   ', N'Агротек   ', CAST(N'2023-02-26' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (15, N'Попкорн        ', N'Снеки     ', 86, 10, 4, N'пачки     ', N'Boomza    ', N'Японія    ', N'Агротек   ', CAST(N'2023-01-28' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (16, N'Крохмаль       ', N'Випічка   ', 156, 3, 5, N'пачки     ', N'ВИМАЛ     ', N'Китай     ', N'Агротек   ', CAST(N'2023-10-17' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (17, N'Сода           ', N'Випічка   ', 70, 0, 24, N'пачки     ', N'Прозен    ', N'Японія    ', N'Andelos   ', CAST(N'2023-07-18' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (22, N'Розпушувач     ', N'Випічка   ', 57, 10, 67, N'пачки     ', N'Verival   ', N'Китай     ', N'Andelos   ', CAST(N'2023-09-14' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (23, N'Дріжджі        ', N'Випічка   ', 100, 16, 12, N'пачки     ', N'Энзим     ', N'Японія    ', N'Агротек   ', CAST(N'2023-11-18' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (24, N'Желе           ', N'Випічка   ', 67, 50, 46, N'пачки     ', N'Ewald     ', N'Україна   ', N'Andelos   ', CAST(N'2023-08-06' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (25, N'Глазур         ', N'Випічка   ', 99, 0, 23, N'пачки     ', N'ТМ Август ', N'Китай     ', N'Агротек   ', CAST(N'2023-01-09' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (26, N'Кисіль         ', N'Випічка   ', 25, 1, 97, N'пачки     ', N'Emix      ', N'Сша       ', N'Sun Life  ', CAST(N'2023-04-10' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (27, N'Суміші         ', N'Випічка   ', 55, 15, 23, N'пачки     ', N'KRUMIX    ', N'Китай     ', N'Andelos   ', CAST(N'2023-10-24' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (28, N'Барвники       ', N'Випічка   ', 83, 25, 54, N'пачки     ', N'Украса    ', N'Україна   ', N'Andelos   ', CAST(N'2023-10-30' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (29, N'Помідор        ', N'Овочі     ', 91, 14, 13, N'кг        ', N'АгроВет   ', N'Україна   ', N'Агротек   ', CAST(N'2023-04-23' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (30, N'Часник         ', N'Овочі     ', 56, 99, 40, N'кг        ', N'АгроВет   ', N'Україна   ', N'Andelos   ', CAST(N'2023-05-01' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (31, N'Перець         ', N'Овочі     ', 75, 0, 24, N'кг        ', N'АгроВет   ', N'Україна   ', N'Andelos   ', CAST(N'2023-08-09' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (32, N'Морква         ', N'Овочі     ', 34, 52, 28, N'кг        ', N'Футер     ', N'Китай     ', N'Агротек   ', CAST(N'2023-01-12' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (33, N'Картопля       ', N'Овочі     ', 56, 23, 43, N'кг        ', N'АгроВет   ', N'Україна   ', N'Andelos   ', CAST(N'2023-06-25' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (34, N'Спаржа         ', N'Овочі     ', 23, 72, 23, N'кг        ', N'Ранер     ', N'Сша       ', N'Агротек   ', CAST(N'2023-12-01' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (35, N'Баклажан       ', N'Овочі     ', 64, 4, 42, N'кг        ', N'Футер     ', N'Китай     ', N'Агротек   ', CAST(N'2023-11-02' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (36, N'Буряк          ', N'Овочі     ', 56, 3, 54, N'кг        ', N'АгроВет   ', N'Україна   ', N'Andelos   ', CAST(N'2023-10-05' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (37, N'Кукурудза      ', N'Овочі     ', 23, 83, 12, N'кг        ', N'Футер     ', N'Китай     ', N'Агротек   ', CAST(N'2023-04-08' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (38, N'Огірки         ', N'Овочі     ', 65, 12, 42, N'кг        ', N'Ранер     ', N'Сшаф      ', N'Andelos   ', CAST(N'2023-07-04' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (39, N'Цибуля         ', N'Овочі     ', 23, 4, 43, N'кг        ', N'АгроВет   ', N'Україна   ', N'Andelos   ', CAST(N'2023-01-16' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (40, N'Капуста        ', N'Овочі     ', 65, 0, 21, N'кг        ', N'Ранер     ', N'Сшаф      ', N'Агротек   ', CAST(N'2023-10-17' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (41, N'Селера         ', N'Овочі     ', 34, 3, 32, N'кг        ', N'Футер     ', N'Китай     ', N'Andelos   ', CAST(N'2023-06-20' AS Date), CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (42, N'Чашки          ', N'Посуд     ', 76, 0, 43, N'Штуки     ', N'ЛедЛов    ', N'Україна   ', N'Агротек   ', CAST(N'2023-12-30' AS Date), CAST(N'2029-12-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (43, N'Тарілки        ', N'Посуд     ', 100, 13, 23, N'Штуки     ', N'Supermagni', N'Китай     ', N'Andelos   ', CAST(N'2023-01-06' AS Date), CAST(N'2029-01-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (44, N'Салатники      ', N'Посуд     ', 150, 65, 54, N'Штуки     ', N'Ажурне    ', N'Україна   ', N'Andelos   ', CAST(N'2023-02-07' AS Date), CAST(N'2029-05-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (45, N'Виделки        ', N'Посуд     ', 55, 23, 12, N'Штуки     ', N'Понерстон ', N'Турція    ', N'Агротек   ', CAST(N'2023-03-24' AS Date), CAST(N'2029-03-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (46, N'Ложки          ', N'Посуд     ', 55, 76, 2, N'Штуки     ', N'Понерстон ', N'Турція    ', N'Andelos   ', CAST(N'2023-06-30' AS Date), CAST(N'2029-08-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (47, N'Підноси        ', N'Посуд     ', 40, 23, 3, N'Штуки     ', N'Понерстон ', N'Турція    ', N'Andelos   ', CAST(N'2023-07-15' AS Date), CAST(N'2029-05-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (48, N'Каструлі       ', N'Посуд     ', 348, 0, 4, N'Штуки     ', N'Ажурне    ', N'Україна   ', N'Andelos   ', CAST(N'2023-06-06' AS Date), CAST(N'2029-05-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (49, N'Сковорідки     ', N'Посуд     ', 257, 1, 5, N'Штуки     ', N'Supermagni', N'Китай     ', N'Andelos   ', CAST(N'2023-04-15' AS Date), CAST(N'2029-01-04' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (50, N'Термоси        ', N'Посуд     ', 174, 6, 15, N'Штуки     ', N'Ажурне    ', N'Україна   ', N'Агротек   ', CAST(N'2023-10-31' AS Date), CAST(N'2029-12-04' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [Magasine] SET  READ_WRITE 
GO
