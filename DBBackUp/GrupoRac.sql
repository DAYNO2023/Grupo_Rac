USE [GrupoRac]
GO
/****** Object:  Schema [Acce]    Script Date: 29/4/2024 14:10:52 ******/
CREATE SCHEMA [Acce]
GO
/****** Object:  Schema [Gral]    Script Date: 29/4/2024 14:10:52 ******/
CREATE SCHEMA [Gral]
GO
/****** Object:  Schema [PUSHKIN504_SQLLogin_1]    Script Date: 29/4/2024 14:10:52 ******/
CREATE SCHEMA [PUSHKIN504_SQLLogin_1]
GO
/****** Object:  Schema [Vent]    Script Date: 29/4/2024 14:10:52 ******/
CREATE SCHEMA [Vent]
GO
/****** Object:  Table [Acce].[tbUsuarios]    Script Date: 29/4/2024 14:10:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acce].[tbUsuarios](
	[Usu_ID] [int] IDENTITY(1,1) NOT NULL,
	[Usu_Nombre] [varchar](100) NULL,
	[Usu_Apellido] [varchar](100) NULL,
	[Usu_Sexo] [char](1) NULL,
	[Usu_FechaNacimiento] [datetime] NULL,
	[Usu_Telefono] [varchar](8) NULL,
	[Usu_Usua] [varchar](50) NULL,
	[Usu_Admin] [bit] NULL,
	[Usu_UsuCre] [int] NULL,
	[Usu_UsuModi] [int] NULL,
	[Usu_FechaCreacion] [date] NULL,
	[Usu_FechaModifica] [date] NULL,
	[Usu_Estado] [int] NULL,
	[Usu_Contra] [varbinary](max) NULL,
	[Est_Id] [int] NULL,
	[Sed_Id] [int] NULL,
	[Crg_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Usu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Gral].[tbEstadosCiviles]    Script Date: 29/4/2024 14:10:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbEstadosCiviles](
	[Est_ID] [int] IDENTITY(1,1) NOT NULL,
	[Est_Descripcion] [varchar](50) NOT NULL,
	[Est_UsuCre] [int] NOT NULL,
	[Est_UsuModi] [int] NULL,
	[Est_Fecha_Creacion] [date] NOT NULL,
	[Est_Fecha_Modifica] [date] NULL,
	[Est_Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Est_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Acce].[tbUsuarios] ON 

INSERT [Acce].[tbUsuarios] ([Usu_ID], [Usu_Nombre], [Usu_Apellido], [Usu_Sexo], [Usu_FechaNacimiento], [Usu_Telefono], [Usu_Usua], [Usu_Admin], [Usu_UsuCre], [Usu_UsuModi], [Usu_FechaCreacion], [Usu_FechaModifica], [Usu_Estado], [Usu_Contra], [Est_Id], [Sed_Id], [Crg_Id]) VALUES (1, N'Jason', N'Villanueva', NULL, CAST(N'2024-04-29T00:00:00.000' AS DateTime), N'95252496', N'admin', 1, 1, NULL, CAST(N'2024-04-29' AS Date), NULL, 1, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [Acce].[tbUsuarios] OFF
GO
ALTER TABLE [Acce].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbUsuarios_Usu_ID] FOREIGN KEY([Usu_UsuCre])
REFERENCES [Acce].[tbUsuarios] ([Usu_ID])
GO
ALTER TABLE [Acce].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbUsuarios_Usu_ID]
GO
ALTER TABLE [Acce].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbUsuarios_Usu_UsuModi] FOREIGN KEY([Usu_UsuModi])
REFERENCES [Acce].[tbUsuarios] ([Usu_ID])
GO
ALTER TABLE [Acce].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbUsuarios_Usu_UsuModi]
GO
ALTER TABLE [Gral].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_Est_UsuCre] FOREIGN KEY([Est_UsuCre])
REFERENCES [Acce].[tbUsuarios] ([Usu_ID])
GO
ALTER TABLE [Gral].[tbEstadosCiviles] CHECK CONSTRAINT [FK_Est_UsuCre]
GO
ALTER TABLE [Gral].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_Est_UsuModi] FOREIGN KEY([Est_UsuModi])
REFERENCES [Acce].[tbUsuarios] ([Usu_ID])
GO
ALTER TABLE [Gral].[tbEstadosCiviles] CHECK CONSTRAINT [FK_Est_UsuModi]
GO
