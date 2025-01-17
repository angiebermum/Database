USE [master]
GO
/****** Object:  Database [Prueba]    Script Date: 10/04/2023 16:30:54 ******/
CREATE DATABASE [Prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\Prueba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\Prueba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Prueba] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prueba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prueba] SET RECOVERY FULL 
GO
ALTER DATABASE [Prueba] SET  MULTI_USER 
GO
ALTER DATABASE [Prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prueba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Prueba] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Prueba', N'ON'
GO
ALTER DATABASE [Prueba] SET QUERY_STORE = ON
GO
ALTER DATABASE [Prueba] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Prueba]
GO
/****** Object:  Table [dbo].[Resorts]    Script Date: 10/04/2023 16:30:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resorts](
	[name] [varchar](100) NOT NULL,
	[description] [varchar](300) NULL,
	[photo] [varchar](200) NULL,
	[price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Resorts] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Catarata El Paraíso', N'En San Isidro de Grecia se encuentra un lugar precioso para caminar y despejarse del estrés diario. Perfecto para apreciar la naturaleza y disfrutar de un picnic en familia, o si prefiere quedarse a acampar también lo puede hacer.', N'../Images/6.jpg', CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Catarata La Fortuna', N'Ubicada a las afueras del pueblo, La Fortuna es el lugar perfecto para que tus sueños de aventura se hagan realidad. Con zip-lining disponible y, también existe la posibilidad de nadar en la piscina que se encuentra en su base.', N'../Images/2.jpg', CAST(4600 AS Decimal(18, 0)))
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Corcovado', N'Ubicado en la hermosa Península de Osa, el Parque Corcovado ha sido llamado como uno de los lugares con mayor biodiversidad en la tierra. Esta hermosa región se ha convertido en un lugar de ecoturismo para todas las personas.', N'../Images/9.jpg', CAST(1808 AS Decimal(18, 0)))
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Isla Tortuga', N'Isla Tortuga es una impresionante isla que tiene algo para todos, ya sea que prefieras descansar en la playa o mantenerte activo. Para disfrutar al máximo de este impresionante lugar, tendrás que hacer un viaje en barco.', N'../Images/3.jpg', CAST(45723 AS Decimal(18, 0)))
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Manuel Antonio', N'Si estás buscando qué hacer en Costa Rica, uno de los mejores planes que puedes disfrutar es visitar el Parque Nacional Manuel Antonio. Conocido por su biodiversidad, con playas de arena blanca e increíbles caminatas.', N'../Images/1.jpg', CAST(1600 AS Decimal(18, 0)))
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Monteverde', N'Su excepcional ubicación y clima lo convierten en una de las zonas de Costa Rica con mayor biodiversidad al contar con más de 2500 especies de plantas (420 variedades de orquídeas) y más de 600 tipos de animales.', N'../Images/5.jpg', CAST(10475 AS Decimal(18, 0)))
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Tortuguero', N'Un lugar clave para la cría de tortugas en el Caribe, el Parque Tortuguero es el hábitat y lugar de anidación de cuatro de las ocho especies de tortugas marinas en el mundo. Conocido por sus ríos serpenteantes y hermosas lagunas.', N'../Images/8.jpg', CAST(1130 AS Decimal(18, 0)))
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Volcán Arenal', N'El Volcán Arenal es considerado uno de los volcanes más bellos del mundo. Tiene una forma de cono perfecta, y las nubes comúnmente ruedan en su cima. incluso tiene una historia fascinante y extensa que debe ser descubierta.', N'../Images/7.jpg', CAST(1130 AS Decimal(18, 0)))
INSERT [dbo].[Resorts] ([name], [description], [photo], [price]) VALUES (N'Volcán Poás', N'Uno de los mejores parques de Costa Rica para visitar si tienes poco tiempo o tus vacaciones del trabajo están a punto de terminar. Poás es el hogar del lago del cráter más ácido del mundo, el cual le da al agua altamente tóxica un color turquesa irreal.', N'../Images/4.jpg', CAST(1000 AS Decimal(18, 0)))
GO
USE [master]
GO
ALTER DATABASE [Prueba] SET  READ_WRITE 
GO
