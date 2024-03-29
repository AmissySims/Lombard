USE [Lombard]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 19.02.2024 7:17:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoProduct]    Script Date: 19.02.2024 7:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[PhotoProd] [image] NULL,
 CONSTRAINT [PK_PhotoProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19.02.2024 7:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[TypeProductId] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.02.2024 7:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeAssesment]    Script Date: 19.02.2024 7:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAssesment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NULL,
	[AssesmentId] [int] NULL,
	[Estimation] [int] NULL,
 CONSTRAINT [PK_TypeAssesment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 19.02.2024 7:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.02.2024 7:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FName] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[LName] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сonclusion]    Script Date: 19.02.2024 7:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сonclusion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_Сonclusion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assessment] ON 

INSERT [dbo].[Assessment] ([Id], [Title]) VALUES (1, N'Состояние')
INSERT [dbo].[Assessment] ([Id], [Title]) VALUES (2, N'Аутентичность')
INSERT [dbo].[Assessment] ([Id], [Title]) VALUES (3, N'Востребованность')
INSERT [dbo].[Assessment] ([Id], [Title]) VALUES (4, N'Экспертное мнение')
SET IDENTITY_INSERT [dbo].[Assessment] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Title]) VALUES (1, N'Оценщик')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (2, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeAssesment] ON 

INSERT [dbo].[TypeAssesment] ([Id], [TypeId], [AssesmentId], [Estimation]) VALUES (1, 1, 1, 10)
INSERT [dbo].[TypeAssesment] ([Id], [TypeId], [AssesmentId], [Estimation]) VALUES (2, 2, 1, 10)
SET IDENTITY_INSERT [dbo].[TypeAssesment] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProduct] ON 

INSERT [dbo].[TypeProduct] ([Id], [Title]) VALUES (1, N'Техника')
INSERT [dbo].[TypeProduct] ([Id], [Title]) VALUES (2, N'Ювелирные украшения и драгоценности')
INSERT [dbo].[TypeProduct] ([Id], [Title]) VALUES (3, N'Товары роскоши')
INSERT [dbo].[TypeProduct] ([Id], [Title]) VALUES (4, N'Товары антиквариата и коллекций')
SET IDENTITY_INSERT [dbo].[TypeProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FName], [Name], [LName], [Login], [Password], [RoleId]) VALUES (1, N'Соколова', N'Мария', N'Ивановна', N'1', N'1', 1)
INSERT [dbo].[User] ([Id], [FName], [Name], [LName], [Login], [Password], [RoleId]) VALUES (2, N'Никитин', N'Александр', N'Сергеевич', N'2', N'2', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[PhotoProduct]  WITH CHECK ADD  CONSTRAINT [FK_PhotoProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[PhotoProduct] CHECK CONSTRAINT [FK_PhotoProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_TypeProduct] FOREIGN KEY([TypeProductId])
REFERENCES [dbo].[TypeProduct] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_TypeProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User]
GO
ALTER TABLE [dbo].[TypeAssesment]  WITH CHECK ADD  CONSTRAINT [FK_TypeAssesment_Assessment] FOREIGN KEY([AssesmentId])
REFERENCES [dbo].[Assessment] ([Id])
GO
ALTER TABLE [dbo].[TypeAssesment] CHECK CONSTRAINT [FK_TypeAssesment_Assessment]
GO
ALTER TABLE [dbo].[TypeAssesment]  WITH CHECK ADD  CONSTRAINT [FK_TypeAssesment_TypeProduct] FOREIGN KEY([TypeId])
REFERENCES [dbo].[TypeProduct] ([Id])
GO
ALTER TABLE [dbo].[TypeAssesment] CHECK CONSTRAINT [FK_TypeAssesment_TypeProduct]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[Сonclusion]  WITH CHECK ADD  CONSTRAINT [FK_Сonclusion_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Сonclusion] CHECK CONSTRAINT [FK_Сonclusion_Product]
GO
