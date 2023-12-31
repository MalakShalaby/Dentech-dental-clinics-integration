USE [master]
GO
/****** Object:  Database [EPharmacy]    Script Date: 25-Jun-23 12:06:07 AM ******/
CREATE DATABASE [EPharmacy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EPharmacy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EPharmacy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EPharmacy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EPharmacy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EPharmacy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EPharmacy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EPharmacy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EPharmacy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EPharmacy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EPharmacy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EPharmacy] SET ARITHABORT OFF 
GO
ALTER DATABASE [EPharmacy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EPharmacy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EPharmacy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EPharmacy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EPharmacy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EPharmacy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EPharmacy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EPharmacy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EPharmacy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EPharmacy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EPharmacy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EPharmacy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EPharmacy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EPharmacy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EPharmacy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EPharmacy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EPharmacy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EPharmacy] SET RECOVERY FULL 
GO
ALTER DATABASE [EPharmacy] SET  MULTI_USER 
GO
ALTER DATABASE [EPharmacy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EPharmacy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EPharmacy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EPharmacy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EPharmacy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EPharmacy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EPharmacy', N'ON'
GO
ALTER DATABASE [EPharmacy] SET QUERY_STORE = OFF
GO
USE [EPharmacy]
GO
/****** Object:  Table [dbo].[Doses]    Script Date: 25-Jun-23 12:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doses](
	[Medicine_Name] [varchar](50) NOT NULL,
	[Dose_Child_S] [varchar](50) NOT NULL,
	[Dose_Child_E] [varchar](50) NOT NULL,
	[Dose_Adult_S] [varchar](50) NOT NULL,
	[Dose_Adult_E] [varchar](50) NOT NULL,
	[Dose_Senior_S] [varchar](50) NOT NULL,
	[Dose_Senior_E] [varchar](50) NOT NULL,
	[Allergies] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 25-Jun-23 12:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserName] [varchar](45) NOT NULL,
	[Password] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 25-Jun-23 12:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[Medicine_ID] [int] NOT NULL,
	[Expiry_Date] [date] NOT NULL,
	[Medicine_Name] [varchar](45) NOT NULL,
	[Medicine_Type] [varchar](45) NOT NULL,
	[Medicine_Quantity] [int] NOT NULL,
	[Medicine_Price] [int] NOT NULL,
	[Medicine_Manfuc] [varchar](45) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 25-Jun-23 12:06:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[Request_ID] [int] IDENTITY(1,1) NOT NULL,
	[Request_Date] [datetime] NOT NULL,
	[Doctor_ID] [varchar](50) NOT NULL,
	[Doctor_Name] [varchar](50) NOT NULL,
	[Medicine_Name] [varchar](50) NOT NULL,
	[Dose] [varchar](50) NULL,
	[Medicine_Type] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Comment] [varchar](50) NULL,
	[Clinic_Name] [varchar](50) NOT NULL,
	[Status] [varchar](50) NULL,
	[Patient_ID] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[Request_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [EPharmacy] SET  READ_WRITE 
GO
