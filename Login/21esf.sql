USE [master]
GO
/****** Object:  Database [of1]    Script Date: 3/12/2022 1:29:12 PM ******/
CREATE DATABASE [of1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'of1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\of1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'of1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\of1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [of1] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [of1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [of1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [of1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [of1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [of1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [of1] SET ARITHABORT OFF 
GO
ALTER DATABASE [of1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [of1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [of1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [of1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [of1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [of1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [of1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [of1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [of1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [of1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [of1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [of1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [of1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [of1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [of1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [of1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [of1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [of1] SET RECOVERY FULL 
GO
ALTER DATABASE [of1] SET  MULTI_USER 
GO
ALTER DATABASE [of1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [of1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [of1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [of1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [of1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'of1', N'ON'
GO
ALTER DATABASE [of1] SET QUERY_STORE = OFF
GO
USE [of1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [of1]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/12/2022 1:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Reg] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCodee] [nchar](1) NULL,
	[PayrollCodee] [nchar](3) NULL,
	[Statement] [nchar](10) NULL,
	[Personel] [nchar](10) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Reg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 3/12/2022 1:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](10) NULL,
	[Pass] [nchar](10) NULL,
	[CompanyStatus] [nchar](1) NULL,
	[CompanyCode] [nchar](1) NULL,
	[PayrollStatus] [nchar](1) NULL,
	[PayrollCode] [nchar](3) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (4, N'0', N'111', N'St4       ', N'Pers4     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (5, N'1', N'111', N'st5       ', N'per5      ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (6, N'3', N'333', N'st22      ', N'per00     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (7, N'4', N'234', N'st65      ', N'per32     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (8, N'2', N'254', N'st76      ', N'per4      ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (9, N'2', N'435', N'st77      ', N'per54     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (10, N'0', N'773', N'st12      ', N'per56     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (11, N'3', N'755', N'st78      ', N'per09     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (12, N'9', N'765', N'st65      ', N'per67     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (15, N'1', N'354', N'st702     ', N'per32     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (16, N'5', N'321', N'st07      ', N'per34     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (17, N'3', N'643', N'st12      ', N'per568    ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (18, N'2', N'234', N'st12      ', N'per45     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (19, N'1', N'378', N'st14      ', N'per19     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (20, N'2', N'093', N'st60      ', N'per87     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (21, N'4', N'387', N'st452     ', N'per87     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (22, N'1', N'234', N'          ', N'per98     ')
INSERT [dbo].[Employee] ([Reg], [CompanyCodee], [PayrollCodee], [Statement], [Personel]) VALUES (23, N'1', N'0  ', N'st65      ', N'per45     ')
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (1, N'pr1020    ', N'1020      ', N'1', N'1', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (2, N'pr1021    ', N'1021      ', N'1', N'2', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (3, N'pr1022    ', N'1022      ', N'1', N'3', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (4, N'pr1023    ', N'1023      ', N'1', N'4', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (5, N'pr1024    ', N'1024      ', N'1', N'5', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (6, N'pr1025    ', N'1025      ', N'1', N'9', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (7, N'pr1026    ', N'1026      ', N'1', N'2', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (8, N'pr1027    ', N'1027      ', N'1', N'3', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (9, N'pr1028    ', N'1028      ', N'1', N'4', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (10, N'pr1029    ', N'1029      ', N'1', N'2', N'0', N'0  ')
INSERT [dbo].[User] ([Id], [Username], [Pass], [CompanyStatus], [CompanyCode], [PayrollStatus], [PayrollCode]) VALUES (11, N'pr1030    ', N'1030      ', N'1', N'0', N'0', N'0  ')
SET IDENTITY_INSERT [dbo].[User] OFF
USE [master]
GO
ALTER DATABASE [of1] SET  READ_WRITE 
GO
