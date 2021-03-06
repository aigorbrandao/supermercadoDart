USE [master]
GO
/****** Object:  Database [dbSupermercadoDart]    Script Date: 17/11/2019 19:29:58 ******/
CREATE DATABASE [dbSupermercadoDart]
 CONTAINMENT = NONE
GO
ALTER DATABASE [dbSupermercadoDart] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbSupermercadoDart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbSupermercadoDart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbSupermercadoDart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbSupermercadoDart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbSupermercadoDart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbSupermercadoDart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbSupermercadoDart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbSupermercadoDart] SET  MULTI_USER 
GO
ALTER DATABASE [dbSupermercadoDart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbSupermercadoDart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbSupermercadoDart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbSupermercadoDart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbSupermercadoDart] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dbSupermercadoDart]
GO
/****** Object:  Table [dbo].[produto]    Script Date: 17/11/2019 19:29:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](150) NOT NULL,
	[preco] [decimal](10, 2) NOT NULL,
	[estoque] [int] NOT NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataAtualizacao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 17/11/2019 19:29:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NULL,
	[email] [varchar](100) NULL,
	[senha] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[produto] ON 

INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [dataCadastro], [dataAtualizacao]) VALUES (1, N'Arroz tipo 1', CAST(10.00 AS Decimal(10, 2)), 30, CAST(N'2019-11-16T00:00:00.000' AS DateTime), CAST(N'2019-11-17T22:16:51.027' AS DateTime))
INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [dataCadastro], [dataAtualizacao]) VALUES (2, N'Feijao carioca', CAST(5.00 AS Decimal(10, 2)), 10, CAST(N'2019-11-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [dataCadastro], [dataAtualizacao]) VALUES (3, N'Refrigerante Cola', CAST(6.50 AS Decimal(10, 2)), 5, CAST(N'2019-11-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [dataCadastro], [dataAtualizacao]) VALUES (4, N'Sabão em pó', CAST(4.50 AS Decimal(10, 2)), 500, CAST(N'2019-11-16T00:00:00.000' AS DateTime), CAST(N'2019-11-17T22:21:21.740' AS DateTime))
INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [dataCadastro], [dataAtualizacao]) VALUES (5, N'teste', CAST(10.00 AS Decimal(10, 2)), 20, CAST(N'2019-11-17T16:48:41.097' AS DateTime), NULL)
INSERT [dbo].[produto] ([id], [descricao], [preco], [estoque], [dataCadastro], [dataAtualizacao]) VALUES (11, N'teste2', CAST(10.00 AS Decimal(10, 2)), 50, CAST(N'2019-11-17T22:21:34.027' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[produto] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [nome], [email], [senha]) VALUES (1, N'igor', N'igorbrandao00@gmail.com', N'MTIzNDU2')
SET IDENTITY_INSERT [dbo].[usuario] OFF
USE [master]
GO
ALTER DATABASE [dbSupermercadoDart] SET  READ_WRITE 
GO
