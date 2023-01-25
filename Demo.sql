USE [master]
GO
/****** Object:  Database [Demo]    Script Date: 25.01.2023 11:04:33 ******/
CREATE DATABASE [Demo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demo', FILENAME = N'D:\Program files\SQL_SERVER_2022\MSSQL16.MSSQLSERVER22\MSSQL\DATA\Demo.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demo_log', FILENAME = N'D:\Program files\SQL_SERVER_2022\MSSQL16.MSSQLSERVER22\MSSQL\DATA\Demo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Demo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Demo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demo] SET RECOVERY FULL 
GO
ALTER DATABASE [Demo] SET  MULTI_USER 
GO
ALTER DATABASE [Demo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Demo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Demo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Demo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Demo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Demo', N'ON'
GO
ALTER DATABASE [Demo] SET QUERY_STORE = ON
GO
ALTER DATABASE [Demo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Demo]
GO
/****** Object:  Table [dbo].[Competition$]    Script Date: 25.01.2023 11:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competition$](
	[id] [float] NULL,
	[title] [nvarchar](255) NULL,
	[date_start] [nvarchar](255) NULL,
	[date_end] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[city] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competition_skills$]    Script Date: 25.01.2023 11:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competition_skills$](
	[competition_id] [float] NULL,
	[skill_id] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regions$]    Script Date: 25.01.2023 11:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regions$](
	[ID_Regions] [float] NULL,
	[Title] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[District] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role$]    Script Date: 25.01.2023 11:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role$](
	[id role] [float] NULL,
	[role] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill_block$]    Script Date: 25.01.2023 11:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_block$](
	[id] [float] NULL,
	[title] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills$]    Script Date: 25.01.2023 11:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills$](
	[id] [float] NULL,
	[title] [nvarchar](255) NULL,
	[skill_block_id] [float] NULL,
	[is_future] [float] NULL,
	[description] [nvarchar](max) NULL,
	[площадь на рабочее место (кв#м)] [float] NULL,
	[площадь комнаты оценки на одну экспертную группу (кв# м)] [float] NULL,
	[зона брифинга (кв# м)] [float] NULL,
	[площадь склада (кв# м)] [float] NULL,
	[F10] [float] NULL,
	[количество участников в команде] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users$]    Script Date: 25.01.2023 11:04:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users$](
	[ID_User] [float] NULL,
	[FIO] [nvarchar](255) NULL,
	[gender] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[PIN] [float] NULL,
	[Дата рождения] [datetime] NULL,
	[ID role] [float] NULL,
	[skill] [float] NULL,
	[region] [float] NULL,
	[место] [float] NULL,
	[чемпионат] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Demo] SET  READ_WRITE 
GO
