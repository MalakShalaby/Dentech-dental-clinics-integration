USE [master]
GO
/****** Object:  Database [Clinic1]    Script Date: 25-Jun-23 12:04:17 AM ******/
CREATE DATABASE [Clinic1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Clinic1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Clinic1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Clinic1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Clinic1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Clinic1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Clinic1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Clinic1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Clinic1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Clinic1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Clinic1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Clinic1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Clinic1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Clinic1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Clinic1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Clinic1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Clinic1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Clinic1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Clinic1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Clinic1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Clinic1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Clinic1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Clinic1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Clinic1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Clinic1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Clinic1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Clinic1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Clinic1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Clinic1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Clinic1] SET RECOVERY FULL 
GO
ALTER DATABASE [Clinic1] SET  MULTI_USER 
GO
ALTER DATABASE [Clinic1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Clinic1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Clinic1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Clinic1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Clinic1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Clinic1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Clinic1', N'ON'
GO
ALTER DATABASE [Clinic1] SET QUERY_STORE = OFF
GO
USE [Clinic1]
GO
/****** Object:  Table [dbo].[Patient_Record]    Script Date: 25-Jun-23 12:04:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Record](
	[Patient_ID] [int] IDENTITY(1000,1) NOT NULL,
	[Patient_Name] [varchar](50) NOT NULL,
	[Age] [varchar](50) NOT NULL,
	[Patient_Gender] [varchar](50) NOT NULL,
	[Weight] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[Allergies] [varchar](50) NULL,
	[Diabetes] [varchar](4) NOT NULL,
	[Denture] [varchar](4) NOT NULL,
	[injuries] [varchar](4) NOT NULL,
	[Heart] [varchar](4) NOT NULL,
	[Pressure] [varchar](4) NOT NULL,
	[Kidney] [varchar](4) NOT NULL,
	[Braces] [varchar](50) NOT NULL,
	[Anemia] [varchar](50) NOT NULL,
	[Sensitive] [varchar](50) NOT NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_Patient_Record] PRIMARY KEY CLUSTERED 
(
	[Patient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 25-Jun-23 12:04:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[Pre_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tooth_Number] [int] NOT NULL,
	[Problem] [varchar](200) NULL,
	[Risk] [varchar](200) NULL,
	[Action] [varchar](200) NULL,
	[Surface] [varchar](200) NULL,
	[Pre_Date] [date] NULL,
	[Patient_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pre_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request_Patient]    Script Date: 25-Jun-23 12:04:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request_Patient](
	[Patient_ID] [int] NOT NULL,
	[Patient_Name] [varchar](50) NOT NULL,
	[Request_Date] [date] NOT NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Request_Patient] ADD  CONSTRAINT [DF_Request_Patient_Status]  DEFAULT ('pending') FOR [Status]
GO
USE [master]
GO
ALTER DATABASE [Clinic1] SET  READ_WRITE 
GO
