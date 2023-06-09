USE [master]
GO
/****** Object:  Database [Avtoservice]    Script Date: 11.05.2023 15:42:12 ******/
CREATE DATABASE [Avtoservice]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Avtoservice', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Avtoservice.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Avtoservice_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Avtoservice_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Avtoservice] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Avtoservice].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Avtoservice] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Avtoservice] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Avtoservice] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Avtoservice] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Avtoservice] SET ARITHABORT OFF 
GO
ALTER DATABASE [Avtoservice] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Avtoservice] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Avtoservice] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Avtoservice] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Avtoservice] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Avtoservice] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Avtoservice] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Avtoservice] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Avtoservice] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Avtoservice] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Avtoservice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Avtoservice] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Avtoservice] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Avtoservice] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Avtoservice] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Avtoservice] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Avtoservice] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Avtoservice] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Avtoservice] SET  MULTI_USER 
GO
ALTER DATABASE [Avtoservice] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Avtoservice] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Avtoservice] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Avtoservice] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Avtoservice]
GO
/****** Object:  Table [dbo].[client]    Script Date: 11.05.2023 15:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[ID] [int] NOT NULL,
	[Familiya] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Otchestvo] [nvarchar](50) NULL,
	[Pol] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[DataRojdeniya] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DataRegistrachii] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service]    Script Date: 11.05.2023 15:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service](
	[ID] [int] NOT NULL,
	[NameUslugi] [nvarchar](50) NULL,
	[GlavnoeIzobrajenie] [nvarchar](50) NULL,
	[Dlitelnost] [nvarchar](50) NULL,
	[Stoimost] [nvarchar](50) NULL,
	[Skidka] [nvarchar](50) NULL,
 CONSTRAINT [PK_service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[serviceclient]    Script Date: 11.05.2023 15:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serviceclient](
	[ID] [int] NOT NULL,
	[Usluga] [nvarchar](50) NULL,
	[NachaloOkazaniyaUslugi] [nvarchar](50) NULL,
	[Klient] [nvarchar](50) NULL,
 CONSTRAINT [PK_serviceclient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (1, N'Мишина ', N'Иветта', N'Андреевна', N' ж', N' 7(3926)244-81-96 ', N' 2002-10-05', N' aukjan@yahoo.com', N' 2016-01-24', N'123')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (2, N'Суворова ', N'Божена', N'Анатольевна', N' ж', N' 7(347)895-86-57 ', N' 1981-03-09', N' attwood@aol.com', N' 2016-01-28', N'234')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (3, N'Белозёрова', N' Диана', N' Антоновна', N' ж', N' 7(9900)174-59-87 ', N' 1989-02-27', N' dialworld@aol.com', N' 2017-01-30', N'1133')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (4, N'Дементьева ', N'Эдита', N'Онисимовна', N' ж', N' 7(198)922-28-76 ', N' 1975-09-17', N' frosal@hotmail.com', N' 2018-11-24', N'3434')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (5, N'Блинов', N' Евгений', N' Мэлсович', N' м', N' 7(0852)321-82-64 ', N' 1994-01-05', N' moxfulder@outlook.com', N' 2017-05-07', N'434')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (6, N'Морозов ', N'Наум', N'Валерьянович', N' м', N' 7(636)050-96-13 ', N' 1985-07-04', N' salesgeek@mac.com', N' 2016-05-02', N'3434')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (7, N'Попова ', N'Харита', N'Якуновна', N' ж', N' 7(335)386-81-06 ', N' 1997-12-16', N' firstpr@verizon.net', N' 2016-07-05', N'343443')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (8, N'Крюков', N' Наум', N' Ильяович', N' м', N' 7(81)657-88-92 ', N' 1993-11-17', N' floxy@hotmail.com', N' 2017-02-01', N'2212')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (9, N'Крюкова', N' Авигея', N' Святославовна', N' ж', N' 7(499)318-88-53 ', N' 2000-08-10', N' simone@gmail.com', N' 2018-01-03', N'867')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (10, N'Беляева ', N'Сабрина', N'Федосеевна', N' ж', N' 7(6580)534-32-58 ', N' 1972-07-26', N' agapow@gmail.com', N' 2017-06-14', N'3675')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (11, N'Медведев', N' Святослав', N' Юлианович', N' м', N' 7(3520)435-21-20 ', N' 1972-10-04', N' hllam@comcast.net', N' 2018-10-13', N'534')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (12, N'Блохин', N' Пантелеймон', N' Феликсович', N' м', N' 7(9524)556-48-98 ', N' 1978-03-06', N' balchen@comcast.net', N' 2018-02-14', N'427')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (13, N'Горбачёва', N' Никки', N' Еремеевна', N' ж', N' 7(94)789-69-20 ', N' 1987-04-21', N' chinthaka@att.net', N' 2018-08-16', N'25552')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (14, N'Архипова ', N'Прасковья', N'Валерьевна', N' ж', N' 7(86)540-10-21 ', N' 1979-01-09', N' cgcra@live.com', N' 2018-07-23', N'778')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (15, N'Андреева ', N'Патрисия', N'Валерьевна', N' ж', N' 7(9648)953-81-26 ', N' 1993-11-18', N' jigsaw@aol.com', N' 2016-07-17', N'2212')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (16, N'Горшкова', N' Марта', N' Иосифовна', N' ж', N' 7(544)650-59-03 ', N' 2001-02-13', N' gbacon@mac.com', N' 2016-08-04', N'867')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (17, N'Орлова', N'Влада', N'Мартыновна', N' ж', N' 7(2506)433-38-35 ', N' 1990-06-26', N' rnelson@yahoo.ca', N' 2016-03-21', N'3675')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (18, N'Ершов', N' Глеб', N' Федорович', N' м', N' 7(2608)298-40-82 ', N' 1970-06-14', N' sjava@aol.com', N' 2016-09-14', N'534')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (19, N'Быкова', N' Тала', N' Георгьевна', N' ж', N' 7(13)915-53-53 ', N' 2000-02-22', N' ganter@optonline.net', N' 2016-08-13', N'123')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (20, N'Новиков', N'Адриан ', N'Аркадьевич', N' м', N' 7(70)572-33-62 ', N' 1974-01-15', N' multiplx@verizon.net', N' 2018-11-23', N'234')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (21, N'Филатов ', N'Аристарх', N'Дмитриевич', N' м', N' 7(696)235-29-24 ', N' 1989-05-29', N' hampton@att.net', N' 2017-01-11', N'1133')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (22, N'Анисимова', N' Тамара', N' Витальевна', N' ж', N' 7(66)128-04-10 ', N' 1988-06-16', N' schwaang@mac.com', N' 2016-02-25', N'3434')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (23, N'Кудряшов', N'Аверкий', N'Константинович', N' м', N' 7(88)732-96-30 ', N' 1991-07-26', N' nanop@msn.com', N' 2018-03-08', N'867')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (24, N'Колобов', N' Орест', N' Юлианович', N' м', N' 7(1680)508-58-26 ', N' 2001-07-14', N' parkes@verizon.net', N' 2017-01-01', N'3675')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (25, N'Кузьмина ', N'Дэнна ', N'Витальевна', N' ж', N' 7(9940)977-45-73 ', N' 1993-08-24', N' nichoj@mac.com', N' 2016-03-27', N'534')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (26, N'Александров', N' Станислав', N' Эдуардович', N' м', N' 7(18)164-05-12 ', N' 1981-07-04', N' bigmauler@aol.com', N' 2018-11-08', N'427')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (27, N'Андреев', N' Станислав', N' Максович', N' м', N' 7(02)993-91-28 ', N' 1975-10-10', N' budinger@mac.com', N' 2017-12-26', N'778')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (28, N'Дроздов', N' Вольдемар', N' Артемович', N' м', N' 7(307)456-99-05 ', N' 1976-02-07', N' smpeters@me.com', N' 2017-07-18', N'2212')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (29, N'Абрамов ', N'Станислав', N'Филатович', N' м', N' 7(6545)478-87-79 ', N' 1989-05-18', N' solomon@att.net', N' 2016-12-08', N'867')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (30, N'Гусева', N' Роза', N' Дмитриевна', N' ж', N' 7(23)064-51-84 ', N' 1999-02-13', N' martyloo@live.com', N' 2017-12-12', N'3675')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (31, N'Лазарев', N'Алексей ', N'Богданович', N' м', N' 7(0055)737-37-48 ', N' 1977-03-10', N' claesjac@me.com', N' 2017-01-02', N'534')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (32, N'Большаков ', N'Вадим', N'Данилович', N' м', N' 7(386)641-13-37 ', N' 1970-05-15', N' uncle@gmail.com', N' 2018-08-04', N'123')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (33, N'Ефремов', N' Витольд', N' Авксентьевич', N' м', N' 7(93)922-14-03 ', N' 1975-12-02', N' kwilliams@yahoo.ca', N' 2018-04-09', N'234')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (34, N'Игнатов ', N'Захар ', N'Павлович', N' м', N' 7(578)574-73-36 ', N' 1998-10-07', N' dieman@icloud.com', N' 2017-11-10', N'778')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (35, N'Калашников', N' Артур', N' Юрьевич', N' м', N' 7(147)947-47-21 ', N' 1972-12-13', N' oevans@aol.com', N' 2017-08-20', N'2212')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (36, N'Овчинникова ', N'Лаура', N'Еремеевна', N' ж', N' 7(85)829-33-79 ', N' 1992-04-03', N' carcus@yahoo.ca', N' 2018-11-24', N'867')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (37, N'Голубев', N' Иосиф', N' Тимофеевич', N' м', N' 7(78)972-73-11 ', N' 1982-05-06', N' smcnabb@att.net', N' 2018-08-18', N'3675')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (38, N'Галкин', N' Эрик', N' Онисимович', N' м', N' 7(759)873-77-39 ', N' 1975-01-18', N' snunez@verizon.net', N' 2016-07-19', N'534')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (39, N'Некрасов ', N'Варлам', N'Михайлович', N' м', N' 7(019)258-06-35 ', N' 2000-11-12', N' dogdude@verizon.net', N' 2017-12-03', N'123')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (40, N'Федотов', N' Осип', N' Анатольевич', N' м', N' 7(590)702-33-06 ', N' 1971-04-13', N' breegster@hotmail.com', N' 2018-07-23', N'234')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (41, N'Смирнов ', N'Мартын', N'Арсеньевич', N' м', N' 7(6251)589-02-43 ', N' 1996-06-25', N' haddawy@live.com', N' 2017-02-07', N'25552')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (42, N'Копылов', N' Касьян', N' Робертович', N' м', N' 7(5774)679-82-06 ', N' 1983-08-04', N' crobles@sbcglobal.net', N' 2018-03-18', N'778')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (43, N'Дмитриева', N' Элина', N' Даниловна', N' ж', N' 7(787)140-48-84 ', N' 1988-12-10', N' vmalik@live.com', N' 2017-02-11', N'2212')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (44, N'Бирюкова', N' Инара', N' Улебовна', N' ж', N' 7(098)346-50-58 ', N' 1978-07-21', N' smpeters@hotmail.com', N' 2017-10-01', N'867')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (45, N'Васильев', N' Оскар', N' Богданович', N' м', N' 7(585)801-94-29 ', N' 1971-01-30', N' miturria@verizon.net', N' 2017-05-28', N'3675')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (46, N'Киселёв', N' Устин', N' Яковлевич', N' м', N' 7(83)334-52-76 ', N' 1985-01-08', N' dalamb@verizon.net', N' 2018-06-21', N'534')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (47, N'Кузьмин', N' Леонтий', N' Валерьянович', N' м', N' 7(1340)148-90-68 ', N' 2000-05-05', N' msloan@hotmail.com', N' 2017-10-12', N'123')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (48, N'Ефимова', N' Магда', N' Платоновна', N' ж', N' 7(9261)386-15-92 ', N' 1995-08-16', N' rbarreira@me.com', N' 2017-08-01', N'234')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (49, N'Воронова', N'Изабелла', N'Вячеславовна', N' ж', N' 7(17)433-44-98 ', N' 1999-09-24', N' kildjean@sbcglobal.net', N' 2017-12-21', N'1133')
INSERT [dbo].[client] ([ID], [Familiya], [Name], [Otchestvo], [Pol], [Telephone], [DataRojdeniya], [Email], [DataRegistrachii], [Password]) VALUES (50, N'Волков ', N'Людвиг', N'Витальевич', N' м', N' 7(8459)592-05-58 ', N' 1977-12-27', N' jrkorson@msn.com', N' 2016-04-27', N'3434')
GO
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (1, N'Замена жидкости в кондиционере', N' Услуги автосервиса\Кондиционер.jpg', N' 480 мин.', N'3040', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (2, N'Ремонт и замена коллектора', N' Услуги автосервиса\Выхлопная система.jpg', N' 150 мин.', N'2770', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (3, N'Замена актуатора сцепления', N' Услуги автосервиса\Сцепление.jpg', N' 330 мин.', N'4100', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (4, N'Замена жидкости ГУР', N' Услуги автосервиса\ГУР.png', N' 540 мин.', N'2380', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (5, N'Заправка кондиционеров', N' Услуги автосервиса\Кондиционер.jpg', N' 120 мин.', N'4860', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (6, N'Замена масла в вариаторе', N' Услуги автосервиса\Вариатор.jpg', N' 120 мин.', N'4720', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (7, N'Ремонт двигателя', N' Услуги автосервиса\Двигатель.png', N' 480 мин.', N'2470', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (8, N'Замена заднего сальника АКПП', N' Услуги автосервиса\АКПП.jpg', N' 390 мин.', N'1510', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (9, N'Покраска', N' Услуги автосервиса\Дополнительные услуги.png', N' 120 мин', N'2370', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (10, N'Мойка колес', N' Услуги автосервиса\Шиномонтаж.jpg', N' 570 мин.', N'3490', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (11, N'Замена прокладки впускного-выпуского коллектора', N' Услуги автосервиса\Выхлопная система.jpg', N' 180 мин.', N'2980', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (12, N'Диагностика работы двигателя', N' Услуги автосервиса\Двигатель.png', N' 150 мин.', N'2760', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (13, N'Установка сигнализации', N' Услуги автосервиса\Электрика.png', N' 240 мин', N'1760', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (14, N'Замена компрессора кондиционера', N' Услуги автосервиса\Кондиционер.jpg', N' 270 мин.', N'2720', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (15, N'Замена ремня привода ГУР', N' Услуги автосервиса\ГУР.png', N' 480 мин.', N'3350', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (16, N'Замена тормозных колодок', N' Услуги автосервиса\Техническое обслуживание.png', N' 150 мин.', N'4260', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (17, N'Замена масла', N' Услуги автосервиса\Техническое обслуживание.png', N' 330 мин.', N'1430', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (18, N'Замена цепи ГРМ', N' Услуги автосервиса\Двигатель.png', N' 540 мин.', N'4570', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (19, N'Замена бензонасоса', N' Услуги автосервиса\Топливная система.png', N' 120 мин.', N'4570', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (21, N'Замена подшипника компрессора кондиционера', N' Услуги автосервиса\Кондиционер.jpg', N' 480 мин.', N'3040', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (22, N'Снятие и установка колес', N' Услуги автосервиса\Шиномонтаж.jpg', N' 390 мин.', N'2770', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (23, N'Замена лямбда зонда', N' Услуги автосервиса\Выхлопная система.jpg', N' 120 мин', N'4100', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (24, N'Замена привода в сборе', N' Услуги автосервиса\transmission.jpg', N' 570 мин.', N'2380', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (25, N'Замена трубки кондиционера', N' Услуги автосервиса\Кондиционер.jpg', N' 180 мин.', N'4860', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (26, N'Замена ремня кондиционера', N' Услуги автосервиса\Кондиционер.jpg', N' 150 мин.', N'4720', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (27, N'Замена охлаждающей жидкости', N' Услуги автосервиса\Техническое обслуживание.png', N' 240 мин', N'2470', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (28, N'Замена троса сцепления', N' Услуги автосервиса\Сцепление.jpg', N' 270 мин.', N'1510', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (29, N'Замена масла в МКПП', N' Услуги автосервиса\КПП.png', N' 480 мин.', N'2370', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (31, N'Ремонт дисков', N' Услуги автосервиса\Шиномонтаж.jpg', N' 330 мин.', N'2980', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (32, N'Замена масла заднего редуктора (моста)', N' Услуги автосервиса\transmission.jpg', N' 540 мин.', N'2760', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (33, N'Замена подшипника задней ступицы', N' Услуги автосервиса\transmission.jpg', N' 120 мин.', N'1760', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (34, N'Восстановление рулевых реек', N' Услуги автосервиса\Подвеска.png', N' 120 мин.', N'2720', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (36, N'Ремонт и замена гидроблока АКПП', N' Услуги автосервиса\АКПП.jpg', N' 390 мин.', N'4260', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (37, N'Замена масла раздаточной коробки', N' Услуги автосервиса\transmission.jpg', N' 120 мин', N'1430', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (38, N'Диагностика кондиционера', N' Услуги автосервиса\Кондиционер.jpg', N' 570 мин.', N'4570', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (39, N'Ремонт и замена катализатора', N' Услуги автосервиса\Выхлопная система.jpg', N' 180 мин.', N'4570', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (40, N'Замена гофры глушителя', N' Услуги автосервиса\Выхлопная система.jpg', N' 150 мин.', N'4520', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (41, N'Замена ремня ГРМ', N' Услуги автосервиса\Двигатель.png', N' 240 мин', N'3040', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (42, N'Ремонт редуктора', N' Услуги автосервиса\КПП.png', N' 270 мин.', N'2770', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (43, N'Замена электромагнитного клапана без снятия ТНВД', N' Услуги автосервиса\diz.jpg', N' 450 мин.', N'4100', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (44, N'Вулканизация шин', N' Услуги автосервиса\Шиномонтаж.jpg', N' 330 мин.', N'2380', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (45, N'Ремонт стартера', N' Услуги автосервиса\Электрика.png', N' 480 мин.', N'4860', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (46, N'Ремонт коробки передач', N' Услуги автосервиса\КПП.png', N' 150 мин.', N'4720', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (47, N'Жидкостная промывка топливной системы', N' Услуги автосервиса\Топливная система.png', N' 330 мин.', N'2470', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (48, N'Ремонт генератора', N' Услуги автосервиса\Электрика.png', N' 540 мин.', N'1510', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (49, N'Замена масла АКПП', N' Услуги автосервиса\АКПП.jpg', N' 120 мин.', N'2370', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (50, N'Диагностика трансмиссии', N' Услуги автосервиса\transmission.jpg', N' 120 мин.', N'3490', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (51, N'Монтаж и снятие шин с диска', N' Услуги автосервиса\Шиномонтаж.jpg', N' 480 мин.', N'2980', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (52, N'Замена подшипника передней ступицы', N' Услуги автосервиса\transmission.jpg', N' 390 мин.', N'2760', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (53, N'Замена главного цилиндра сцепления', N' Услуги автосервиса\Сцепление.jpg', N' 120 мин', N'1760', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (54, N'Установка автомагнитолы', N' Услуги автосервиса\Электрика.png', N' 570 мин.', N'2720', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (56, N'Замена радиатора кондиционера', N' Услуги автосервиса\Кондиционер.jpg', N' 150 мин.', N'4260', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (57, N'Замена тормозной жидкости', N' Услуги автосервиса\Техническое обслуживание.png', N' 240 мин', N'1430', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (58, N'Ремонт рулевого управления', N' Услуги автосервиса\Подвеска.png', N' 270 мин.', N'4570', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (59, N'Замена заднего редуктора', N' Услуги автосервиса\transmission.jpg', N' 330 мин.', N'4570', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (60, N'Дефектация CVT', N' Услуги автосервиса\Вариатор.jpg', N' 480 мин.', N'4520', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (61, N'Замена карданного вала', N' Услуги автосервиса\transmission.jpg', N' 150 мин.', N'3040', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (62, N'Замена сцепления', N' Услуги автосервиса\КПП.png', N' 330 мин.', N'2770', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (63, N'Установка системы автозапуска', N' Услуги автосервиса\Электрика.png', N' 540 мин.', N'4100', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (64, N'Замена опоры АКПП', N' Услуги автосервиса\АКПП.jpg', N' 120 мин.', N'2380', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (65, N'Ремонт бензонасоса', N' Услуги автосервиса\Топливная система.png', N' 120 мин.', N'4860', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (66, N'Замена масла переднего редуктора (моста)', N' Услуги автосервиса\transmission.jpg', N' 480 мин.', N'4720', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (67, N'Ремонт подвесного подшипника', N' Услуги автосервиса\transmission.jpg', N' 390 мин.', N'2470', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (68, N'Тестирование форсунок (стенд)', N' Услуги автосервиса\Топливная система.png', N' 120 мин', N'1510', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (69, N'Диагностика сцепления', N' Услуги автосервиса\Сцепление.jpg', N' 570 мин.', N'2370', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (70, N'Замена ступицы в сборе', N' Услуги автосервиса\transmission.jpg', N' 180 мин.', N'3490', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (71, N'Антибактериальная обработка кондиционера', N' Услуги автосервиса\Кондиционер.jpg', N' 150 мин.', N'2980', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (72, N'Ремонт глушителя', N' Услуги автосервиса\Выхлопная система.jpg', N' 240 мин', N'2760', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (74, N'Диагностика подвески', N' Услуги автосервиса\Подвеска.png', N' 330 мин.', N'2720', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (75, N'Замена свечей', N' Услуги автосервиса\Техническое обслуживание.png', N' 480 мин.', N'3350', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (76, N'Диагностика инжектора', N' Услуги автосервиса\Топливная система.png', N' 150 мин.', N'4260', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (77, N'Комплексная диагностика автомобиля', N' Услуги автосервиса\Техническое обслуживание.png', N' 330 мин.', N'1430', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (78, N'Ремонт раздаточной коробки', N' Услуги автосервиса\КПП.png', N' 540 мин.', N'4570', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (79, N'Удаление катализатора', N' Услуги автосервиса\Дополнительные услуги.png', N' 120 мин.', N'4570', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (80, N'Снятие/установка форсунок', N' Услуги автосервиса\diz.jpg', N' 120 мин.', N'4520', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (81, N'Развал-схождение', N' Услуги автосервиса\Подвеска.png', N' 480 мин.', N'3890', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (82, N'Замена выжимного подшипника', N' Услуги автосервиса\Сцепление.jpg', N' 390 мин.', N'2250', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (83, N'Чистка форсунок ультразвуком', N' Услуги автосервиса\Топливная система.png', N' 120 мин', N'3040', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (84, N'Ремонт компрессора кондиционера', N' Услуги автосервиса\Кондиционер.jpg', N' 570 мин.', N'2770', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (85, N'Замена цилиндра сцепления', N' Услуги автосервиса\Сцепление.jpg', N' 180 мин.', N'4100', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (86, N'Ремонт подвески (ходовой)', N' Услуги автосервиса\Подвеска.png', N' 150 мин.', N'2380', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (87, N'Замена фильтров', N' Услуги автосервиса\Техническое обслуживание.png', N' 240 мин', N'4860', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (88, N'Кузовной ремонт', N' Услуги автосервиса\Дополнительные услуги.png', N' 270 мин.', N'4720', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (89, N'Замена прокладки приемной трубки', N' Услуги автосервиса\Выхлопная система.jpg', N' 570 мин.', N'2470', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (90, N'Диагностика выхлопной системы автомобиля', N' Услуги автосервиса\Выхлопная система.jpg', N' 480 мин.', N'1510', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (91, N'Балансировка колес', N' Услуги автосервиса\Шиномонтаж.jpg', N' 150 мин.', N'2370', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (92, N'Ремонт автоэлектрики', N' Услуги автосервиса\Электрика.png', N' 330 мин.', N'3490', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (93, N'ТО с сохранением гарантии', N' Услуги автосервиса\Техническое обслуживание.png', N' 540 мин.', N'2980', N'20%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (94, N'Ремонт карданного вала', N' Услуги автосервиса\transmission.jpg', N' 120 мин.', N'2760', N'5%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (95, N'Ремонт сцепления', N' Услуги автосервиса\КПП.png', N' 120 мин.', N'1760', N'25%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (96, N'Замена кулисы АКПП', N' Услуги автосервиса\АКПП.jpg', N' 480 мин.', N'2720', N'10%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (97, N'Ремонт кронштейна глушителя', N' Услуги автосервиса\Выхлопная система.jpg', N' 390 мин.', N'3350', N' нет')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (98, N'Замена сальника привода', N' Услуги автосервиса\transmission.jpg', N' 120 мин', N'4260', N'15%')
INSERT [dbo].[service] ([ID], [NameUslugi], [GlavnoeIzobrajenie], [Dlitelnost], [Stoimost], [Skidka]) VALUES (100, N'Замена маховика', N' Услуги автосервиса\Сцепление.jpg', N' 180 мин.', N'4570', N'25%')
GO
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (1, N'Замена масла АКПП', N'15.04.2019 13:30', N'Кузьмин')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (2, N'Ремонт автоэлектрики', N'27.11.2019 13:30', N'Абрамов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (3, N'Замена масла заднего редуктора (моста)', N'29.07.2019 10:30', N'Галкин')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (4, N'Замена ремня привода ГУР', N'05.09.2019 14:10', N'Копылов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (5, N'Снятие/установка форсунок', N'04.02.2019 19:50', N'Смирнов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (6, N'Замена масла АКПП', N'24.06.2019 14:10', N'Киселёв')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (7, N'Ремонт стартера', N'05.12.2019 18:10', N'Волков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (8, N'Замена трубки кондиционера', N'19.03.2019 9:40', N'Гусева')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (9, N'Диагностика трансмиссии', N'09.10.2019 18:30', N'Дроздов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (10, N'Чистка форсунок ультразвуком', N'19.05.2019 16:50', N'Крюков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (11, N'Ремонт двигателя', N'02.08.2019 18:50', N'Медведев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (12, N'Диагностика выхлопной системы автомобиля', N'06.12.2019 9:40', N'Ефимова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (13, N'Замена рулевой тяги', N'08.08.2019 19:00', N'Ефимова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (14, N'Замена заднего сальника АКПП', N'14.04.2019 15:00', N'Колобов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (15, N'Замена свечей', N'09.09.2019 17:40', N'Гусева')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (16, N'Замена троса сцепления', N'16.10.2019 18:20', N'Новиков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (17, N'Диагностика трансмиссии', N'07.12.2019 17:00', N'Блинов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (18, N'Установка сигнализации', N'05.09.2019 19:30', N'Колобов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (19, N'Снятие/установка форсунок', N'26.11.2019 10:30', N'Горбачёва')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (20, N'Замена охлаждающей жидкости', N'30.07.2019 10:10', N'Ершов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (21, N'Замена кулисы АКПП', N'07.07.2019 9:30', N'Медведев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (22, N'Замена свечей', N'15.12.2019 14:30', N'Абрамов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (23, N'Антибактериальная обработка кондиционера', N'16.12.2019 19:40', N'Андреев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (24, N'Замена подшипника передней ступицы', N'28.06.2019 10:10', N'Киселёв')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (25, N'Ремонт автоэлектрики', N'30.12.2019 14:30', N'Горшкова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (26, N'Замена заднего сальника АКПП', N'26.02.2019 17:40', N'Медведев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (27, N'Замена троса сцепления', N'15.11.2019 15:40', N'Кудряшов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (28, N'Развал-схождение', N'13.09.2019 10:10', N'Горшкова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (29, N'Развал-схождение', N'06.03.2019 12:10', N'Андреева')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (30, N'Диагностика подвески', N'11.04.2019 16:20', N'Андреев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (31, N'Антибактериальная обработка кондиционера', N'12.07.2019 19:30', N'Архипова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (32, N'Кузовной ремонт', N'09.07.2019 18:50', N'Горшкова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (33, N'Замена ремня привода ГУР', N'23.11.2019 14:30', N'Некрасов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (34, N'Замена охлаждающей жидкости', N'15.08.2019 18:30', N'Архипова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (35, N'Замена лямбда зонда', N'27.11.2019 9:00', N'Кудряшов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (36, N'Ремонт двигателя', N'23.12.2019 15:30', N'Копылов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (37, N'Ремонт стартера', N'17.09.2019 11:30', N'Попова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (38, N'Ремонт компрессора кондиционера', N'02.07.2019 15:30', N'Блохин')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (39, N'Диагностика подвески', N'12.08.2019 11:50', N'Мишина')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (40, N'Ремонт бензонасоса', N'15.04.2019 11:50', N'Анисимова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (41, N'Замена маховика', N'10.06.2019 16:40', N'Овчинникова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (42, N'Ремонт и замена катализатора', N'21.02.2019 8:20', N'Анисимова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (43, N'Кузовной ремонт', N'14.10.2019 12:00', N'Игнатов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (44, N'Замена фильтров', N'15.12.2019 19:50', N'Игнатов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (45, N'Замена тормозной жидкости', N'24.08.2019 11:20', N'Кузьмина')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (46, N'Установка сигнализации', N'15.06.2019 9:30', N'Филатов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (47, N'Замена подшипника передней ступицы', N'22.04.2019 11:30', N'Калашников')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (48, N'Ремонт и замена катализатора', N'24.02.2019 13:50', N'Анисимова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (49, N'Ремонт сцепления', N'15.02.2019 17:30', N'Архипова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (50, N'Замена охлаждающей жидкости', N'09.07.2019 16:50', N'Горшкова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (51, N'Замена кулисы АКПП', N'24.08.2019 17:00', N'Большаков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (52, N'Ремонт кронштейна глушителя', N'25.08.2019 8:50', N'Анисимова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (53, N'Развал-схождение', N'21.06.2019 14:50', N'Горбачёва')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (54, N'Установка сигнализации', N'28.12.2019 17:10', N'Горбачёва')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (55, N'Замена масла АКПП', N'29.01.2019 16:10', N'Галкин')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (56, N'Диагностика выхлопной системы автомобиля', N'30.11.2019 18:00', N'Горбачёва')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (57, N'Замена сальника привода', N'17.10.2019 19:00', N'Новиков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (58, N'Замена жидкости ГУР', N'16.03.2019 10:20', N'Кудряшов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (59, N'Замена сальника привода', N'14.11.2019 15:00', N'Калашников')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (60, N'Замена подшипника задней ступицы', N'18.12.2019 10:30', N'Орлова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (61, N'Ремонт автоэлектрики', N'14.06.2019 18:30', N'Ершов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (62, N'Диагностика подвески', N'05.07.2019 13:40', N'Андреев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (63, N'Замена свечей', N'14.10.2019 19:40', N'Новиков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (64, N'Замена охлаждающей жидкости', N'21.08.2019 17:20', N'Дроздов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (65, N'Замена свечей', N'28.05.2019 11:10', N'Попова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (66, N'Ремонт глушителя', N'19.09.2019 16:10', N'Архипова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (67, N'Диагностика рулевого редуктора', N'22.06.2019 13:00', N'Ефимова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (68, N'Замена ремня кондиционера', N'08.08.2019 17:20', N'Колобов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (69, N'Замена подшипника передней ступицы', N'12.08.2019 8:50', N'Крюков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (70, N'Замена масла АКПП', N'04.03.2019 11:30', N'Крюков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (71, N'Установка сигнализации', N'22.03.2019 15:20', N'Медведев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (72, N'Ремонт карданного вала', N'05.06.2019 10:50', N'Филатов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (73, N'Замена свечей', N'21.04.2019 12:40', N'Орлова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (74, N'Замена жидкости ГУР', N'28.07.2019 12:50', N'Большаков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (75, N'Замена масла заднего редуктора (моста)', N'10.10.2019 13:40', N'Большаков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (76, N'Замена маховика', N'05.04.2019 10:10', N'Абрамов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (77, N'Замена фильтров', N'30.07.2019 12:10', N'Суворова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (78, N'Замена подшипника передней ступицы', N'30.12.2019 8:10', N'Лазарев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (79, N'Замена свечей', N'29.06.2019 17:20', N'Волков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (80, N'Замена заднего сальника АКПП', N'19.08.2019 17:50', N'Галкин')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (81, N'Замена ремня кондиционера', N'05.11.2019 12:10', N'Морозов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (82, N'Ремонт кронштейна глушителя', N'19.01.2019 11:50', N'Новиков')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (83, N'Покраска', N'14.04.2019 14:20', N'Морозов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (84, N'Замена подшипника компрессора кондиционера', N'27.05.2019 8:00', N'Некрасов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (85, N'Замена свечей', N'16.06.2019 12:00', N'Ершов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (86, N'Замена подшипника компрессора кондиционера', N'12.08.2019 15:40', N'Бирюкова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (87, N'Ремонт глушителя', N'06.04.2019 11:50', N'Лазарев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (88, N'Ремонт компрессора кондиционера', N'23.05.2019 11:40', N'Кудряшов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (89, N'Диагностика инжектора', N'20.09.2019 8:20', N'Мишина')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (90, N'Ремонт компрессора кондиционера', N'24.02.2019 13:00', N'Блинов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (91, N'Замена подшипника компрессора кондиционера', N'01.05.2019 10:20', N'Кузьмин')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (92, N'Ремонт карданного вала', N'27.05.2019 14:20', N'Андреев')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (93, N'Замена жидкости ГУР', N'16.02.2019 9:40', N'Анисимова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (94, N'Ремонт бензонасоса', N'23.03.2019 16:40', N'Бирюкова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (95, N'Замена масла заднего редуктора (моста)', N'24.12.2019 9:30', N'Игнатов')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (96, N'Замена тормозных колодок', N'09.05.2019 10:00', N'Калашников')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (97, N'Ремонт бензонасоса', N'05.10.2019 18:30', N'Беляева')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (98, N'Замена ремня привода ГУР', N'26.04.2019 10:20', N'Кузьмина')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (99, N'Замена ремня привода ГУР', N'05.08.2019 10:10', N'Орлова')
INSERT [dbo].[serviceclient] ([ID], [Usluga], [NachaloOkazaniyaUslugi], [Klient]) VALUES (100, N'Ремонт сцепления', N'19.12.2019 15:00', N'Колобов')
GO
USE [master]
GO
ALTER DATABASE [Avtoservice] SET  READ_WRITE 
GO
