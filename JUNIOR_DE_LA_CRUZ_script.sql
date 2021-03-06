USE [EvaluacionQS]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/04/2021 01:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Nic] [varchar](12) NOT NULL,
	[Categoria] [char](1) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 22/04/2021 01:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleFactura](
	[DetalleFacturaId] [int] IDENTITY(1,1) NOT NULL,
	[FacturaId] [int] NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 5) NOT NULL,
 CONSTRAINT [PK_DetalleFactura] PRIMARY KEY CLUSTERED 
(
	[DetalleFacturaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 22/04/2021 01:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[FacturaId] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [varchar](3) NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[VendedorId] [int] NOT NULL,
	[ClienteId] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Moneda] [char](3) NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[FacturaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 22/04/2021 01:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[PrecioUnitario] [decimal](18, 0) NOT NULL,
	[Categoria] [char](2) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 22/04/2021 01:14:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[VendedorId] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Dni] [char](8) NOT NULL,
	[FechaIngreso] [date] NOT NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[VendedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (1, N'Junior ', N'De la Cruz', N'jdelacruz', N'B')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (2, N'Alberto', N'Ramos', N'aramos', N'C')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (3, N'Mario', N'Perez', N'mperez', N'A')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (4, N'Griselda', N'Diaz', N'gdiaz', N'B')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (5, N'Sofia', N'Leyva', N'sleyva', N'C')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (6, N'Kiara', N'Loza', N'kloza', N'A')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (7, N'Jose', N'Lopez', N'jlopez', N'B')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (8, N'Gian Carlos', N'Montes', N'gmontes', N'A')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (9, N'Pierre', N'Martines', N'pmartines', N'B')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (10, N'Nathalie', N'Martel', N'nmaterl', N'C')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (11, N'Lorena', N'Torres', N'ltorres', N'A')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (12, N'Alonso', N'Bautista', N'abautista', N'B')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Apellidos], [Nic], [Categoria]) VALUES (13, N'Steve', N'Gonzales', N'sgonzales', N'A')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleFactura] ON 

INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (8, 2, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (9, 2, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (10, 2, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (11, 2, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (12, 2, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (13, 2, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (14, 2, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (15, 3, 1, 1, CAST(1300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (16, 3, 2, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (17, 3, 3, 3, CAST(1600.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (18, 3, 4, 4, CAST(600.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (19, 3, 5, 2, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (20, 3, 6, 3, CAST(130.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (21, 3, 7, 1, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (22, 4, 1, 1, CAST(1700.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (23, 4, 2, 2, CAST(100.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (24, 4, 3, 3, CAST(1800.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (25, 4, 4, 4, CAST(540.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (26, 4, 5, 2, CAST(100.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (27, 4, 6, 3, CAST(170.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (28, 4, 7, 1, CAST(420.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (29, 5, 1, 1, CAST(2200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (30, 5, 2, 2, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (31, 5, 3, 3, CAST(1700.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (32, 5, 4, 4, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (33, 5, 5, 2, CAST(100.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (34, 5, 6, 3, CAST(420.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (35, 5, 7, 1, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (36, 6, 1, 1, CAST(1900.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (37, 6, 2, 2, CAST(100.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (38, 6, 3, 3, CAST(1210.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (39, 6, 4, 4, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (40, 6, 5, 2, CAST(100.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (41, 6, 6, 3, CAST(120.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (42, 6, 7, 1, CAST(630.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (43, 7, 1, 1, CAST(1100.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (44, 7, 2, 2, CAST(630.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (45, 7, 3, 3, CAST(2200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (46, 7, 4, 4, CAST(320.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (47, 7, 5, 2, CAST(510.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (48, 7, 6, 3, CAST(210.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (49, 7, 7, 1, CAST(120.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (50, 8, 1, 1, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (51, 8, 2, 2, CAST(100.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (52, 8, 3, 3, CAST(1230.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (53, 8, 4, 4, CAST(456.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (54, 8, 5, 2, CAST(742.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (55, 8, 6, 3, CAST(241.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (56, 8, 7, 1, CAST(167.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (57, 9, 1, 1, CAST(1434.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (58, 9, 2, 2, CAST(123.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (59, 9, 3, 3, CAST(1574.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (60, 9, 4, 4, CAST(542.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (61, 9, 5, 2, CAST(367.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (62, 9, 6, 3, CAST(174.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (63, 9, 7, 1, CAST(437.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (64, 10, 1, 1, CAST(1345.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (65, 10, 2, 2, CAST(276.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (66, 10, 3, 3, CAST(1472.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (67, 10, 4, 4, CAST(532.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (68, 10, 5, 2, CAST(342.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (69, 10, 6, 3, CAST(142.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (70, 10, 7, 1, CAST(432.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (71, 11, 1, 1, CAST(1243.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (72, 11, 2, 2, CAST(232.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (73, 11, 3, 3, CAST(1457.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (74, 11, 4, 4, CAST(542.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (75, 11, 5, 2, CAST(324.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (76, 11, 6, 3, CAST(157.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (77, 11, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (78, 12, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (79, 12, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (80, 12, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (81, 12, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (82, 12, 5, 2, CAST(296.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (83, 12, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (84, 12, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (85, 13, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (86, 13, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (87, 13, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (88, 13, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (89, 13, 5, 2, CAST(387.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (90, 13, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (91, 13, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (92, 14, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (93, 14, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (94, 14, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (95, 14, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (96, 14, 5, 2, CAST(268.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (97, 14, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (98, 14, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (99, 15, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (100, 15, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (101, 15, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (102, 15, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (103, 15, 5, 2, CAST(357.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (104, 15, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (105, 15, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (106, 16, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
GO
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (107, 16, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (108, 16, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (109, 16, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (110, 16, 5, 2, CAST(278.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (111, 16, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (112, 16, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (113, 17, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (114, 17, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (115, 17, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (116, 17, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (117, 17, 5, 2, CAST(235.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (118, 17, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (119, 17, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (120, 18, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (121, 18, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (122, 18, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (123, 18, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (124, 18, 5, 2, CAST(257.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (125, 18, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (126, 18, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (127, 19, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (128, 19, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (129, 19, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (130, 19, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (131, 19, 5, 2, CAST(350.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (132, 19, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (133, 19, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (134, 20, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (135, 20, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (136, 20, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (137, 20, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (138, 20, 5, 2, CAST(547.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (139, 20, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (140, 20, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (141, 21, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (142, 21, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (143, 21, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (144, 21, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (145, 21, 5, 2, CAST(367.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (146, 21, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (147, 21, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (148, 22, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (149, 22, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (150, 22, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (151, 22, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (152, 22, 5, 2, CAST(245.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (153, 22, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (154, 22, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (155, 23, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (156, 23, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (157, 23, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (158, 23, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (159, 23, 5, 2, CAST(345.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (160, 23, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (161, 23, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (162, 24, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (163, 24, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (164, 24, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (165, 24, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (166, 24, 5, 2, CAST(240.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (167, 24, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (168, 24, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (169, 25, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (170, 25, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (171, 25, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (172, 25, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (173, 25, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (174, 25, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (175, 25, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (176, 26, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (177, 26, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (178, 26, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (179, 26, 4, 4, CAST(537.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (180, 26, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (181, 26, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (182, 26, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (183, 27, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (184, 27, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (185, 27, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (186, 27, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (187, 27, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (188, 27, 6, 3, CAST(250.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (189, 27, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (190, 28, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (191, 28, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (192, 28, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (193, 28, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (194, 28, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (195, 28, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (196, 28, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (197, 29, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (198, 29, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (199, 29, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (200, 29, 4, 4, CAST(250.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (201, 29, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (202, 29, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (203, 29, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (204, 30, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (205, 30, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (206, 30, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
GO
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (207, 30, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (208, 30, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (209, 30, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (210, 30, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (211, 31, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (212, 31, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (213, 31, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (214, 31, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (215, 31, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (216, 31, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (217, 31, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (218, 32, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (219, 32, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (220, 32, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (221, 32, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (222, 32, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (223, 32, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (224, 32, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (225, 33, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (226, 33, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (227, 33, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (228, 33, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (229, 33, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (230, 33, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (231, 33, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (232, 34, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (233, 34, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (234, 34, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (235, 34, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (236, 34, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (237, 34, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (238, 34, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (239, 35, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (240, 35, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (241, 35, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (242, 35, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (243, 35, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (244, 35, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (245, 35, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (246, 36, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (247, 36, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (248, 36, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (249, 36, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (250, 36, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (251, 36, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (252, 36, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (253, 37, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (254, 37, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (255, 37, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (256, 37, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (257, 37, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (258, 37, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (259, 37, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (260, 38, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (261, 38, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (262, 38, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (263, 38, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (264, 38, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (265, 38, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (266, 38, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (267, 39, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (268, 39, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (269, 39, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (270, 39, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (271, 39, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (272, 39, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (273, 39, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (274, 40, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (275, 40, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (276, 40, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (277, 40, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (278, 40, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (279, 40, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (280, 40, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (281, 41, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (282, 41, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (283, 41, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (284, 41, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (285, 41, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (286, 41, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (287, 41, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (288, 42, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (289, 42, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (290, 42, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (291, 42, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (292, 42, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (293, 42, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (294, 42, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (295, 43, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (296, 43, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (297, 43, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (298, 43, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (299, 43, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (300, 43, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (301, 43, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (302, 44, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (303, 44, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (304, 44, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (305, 44, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (306, 44, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
GO
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (307, 44, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (308, 44, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (309, 45, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (310, 45, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (311, 45, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (312, 45, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (313, 45, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (314, 45, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (315, 45, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (316, 46, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (317, 46, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (318, 46, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (319, 46, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (320, 46, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (321, 46, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (322, 46, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (323, 47, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (324, 47, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (325, 47, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (326, 47, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (327, 47, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (328, 47, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (329, 47, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (330, 48, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (331, 48, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (332, 48, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (333, 48, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (334, 48, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (335, 48, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (336, 48, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (337, 49, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (338, 49, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (339, 49, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (340, 49, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (341, 49, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (342, 49, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (343, 49, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (344, 50, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (345, 50, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (346, 50, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (347, 50, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (348, 50, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (349, 50, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (350, 50, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (351, 51, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (352, 51, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (353, 51, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (354, 51, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (355, 51, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (356, 51, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (357, 51, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (358, 52, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (359, 52, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (360, 52, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (361, 52, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (362, 52, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (363, 52, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (364, 52, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (365, 53, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (366, 53, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (367, 53, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (368, 53, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (369, 53, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (370, 53, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (371, 53, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (372, 54, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (373, 54, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (374, 54, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (375, 54, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (376, 54, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (377, 54, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (378, 54, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (379, 55, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (380, 55, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (381, 55, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (382, 55, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (383, 55, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (384, 55, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (385, 55, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (386, 56, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (387, 56, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (388, 56, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (389, 56, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (390, 56, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (391, 56, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (392, 56, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (393, 57, 1, 1, CAST(1200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (394, 57, 2, 2, CAST(200.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (395, 57, 3, 3, CAST(1500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (396, 57, 4, 4, CAST(500.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (397, 57, 5, 2, CAST(300.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (398, 57, 6, 3, CAST(150.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (399, 57, 7, 1, CAST(400.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (414, 58, 3, 2, CAST(10.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (415, 59, 3, 2, CAST(10.00000 AS Decimal(18, 5)))
INSERT [dbo].[DetalleFactura] ([DetalleFacturaId], [FacturaId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (416, 60, 4, 5, CAST(20.00000 AS Decimal(18, 5)))
SET IDENTITY_INSERT [dbo].[DetalleFactura] OFF
GO
SET IDENTITY_INSERT [dbo].[Factura] ON 

INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (2, N'A21', N'12325', 1, 1, CAST(N'2019-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (3, N'A22', N'12326', 1, 2, CAST(N'2020-12-17' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (4, N'A23', N'12327', 1, 3, CAST(N'2021-12-17' AS Date), N'EUR')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (5, N'A24', N'12328', 1, 4, CAST(N'2019-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (6, N'A25', N'12329', 1, 5, CAST(N'2018-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (7, N'A26', N'12330', 1, 6, CAST(N'2020-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (8, N'A27', N'12331', 1, 7, CAST(N'2021-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (9, N'A31', N'11325', 2, 1, CAST(N'2019-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (10, N'A32', N'13326', 2, 2, CAST(N'2020-12-17' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (11, N'A33', N'14327', 2, 3, CAST(N'2021-12-17' AS Date), N'EUR')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (12, N'A34', N'15328', 2, 4, CAST(N'2019-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (13, N'A35', N'16329', 2, 5, CAST(N'2018-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (14, N'A36', N'17330', 2, 6, CAST(N'2020-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (15, N'A37', N'18331', 2, 7, CAST(N'2021-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (16, N'B31', N'11325', 3, 1, CAST(N'2019-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (17, N'B32', N'13326', 3, 2, CAST(N'2020-12-17' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (18, N'B33', N'14327', 3, 3, CAST(N'2021-12-17' AS Date), N'EUR')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (19, N'B34', N'15328', 3, 4, CAST(N'2019-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (20, N'B35', N'16329', 3, 5, CAST(N'2018-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (21, N'B36', N'17330', 3, 6, CAST(N'2020-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (22, N'B37', N'18331', 3, 7, CAST(N'2021-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (23, N'B31', N'21325', 3, 1, CAST(N'2019-10-11' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (24, N'B32', N'23326', 3, 2, CAST(N'2020-09-12' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (25, N'B33', N'24327', 3, 3, CAST(N'2021-12-13' AS Date), N'EUR')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (26, N'B34', N'25328', 3, 4, CAST(N'2019-12-14' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (27, N'B35', N'26329', 3, 5, CAST(N'2018-12-15' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (28, N'B36', N'27330', 3, 6, CAST(N'2020-12-16' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (29, N'B37', N'28331', 3, 7, CAST(N'2021-12-17' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (30, N'C31', N'31325', 4, 1, CAST(N'2019-10-01' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (31, N'C32', N'33326', 4, 2, CAST(N'2020-09-02' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (32, N'C33', N'34327', 4, 3, CAST(N'2021-03-03' AS Date), N'EUR')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (33, N'C34', N'35328', 4, 4, CAST(N'2019-05-04' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (34, N'C35', N'36329', 4, 5, CAST(N'2018-06-05' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (35, N'C36', N'37330', 4, 6, CAST(N'2020-07-06' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (36, N'C37', N'38331', 4, 7, CAST(N'2021-08-07' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (37, N'D31', N'41325', 5, 1, CAST(N'2019-10-01' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (38, N'D32', N'43326', 5, 2, CAST(N'2020-09-02' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (39, N'D33', N'44327', 5, 3, CAST(N'2021-03-03' AS Date), N'EUR')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (40, N'D34', N'45328', 5, 4, CAST(N'2019-05-04' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (41, N'D35', N'46329', 5, 5, CAST(N'2018-06-05' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (42, N'D36', N'47330', 5, 6, CAST(N'2020-07-06' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (43, N'D37', N'48331', 5, 7, CAST(N'2021-08-07' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (44, N'E31', N'51325', 6, 1, CAST(N'2019-10-01' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (45, N'E32', N'53326', 6, 2, CAST(N'2020-09-02' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (46, N'E33', N'54327', 6, 3, CAST(N'2021-03-03' AS Date), N'EUR')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (47, N'E34', N'55328', 6, 4, CAST(N'2019-05-04' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (48, N'E35', N'56329', 6, 5, CAST(N'2018-06-05' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (49, N'E36', N'57330', 6, 6, CAST(N'2020-07-06' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (50, N'E37', N'58331', 6, 7, CAST(N'2021-08-07' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (51, N'F31', N'71325', 7, 1, CAST(N'2019-10-01' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (52, N'F32', N'73326', 7, 2, CAST(N'2020-09-02' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (53, N'F33', N'74327', 7, 3, CAST(N'2021-03-03' AS Date), N'EUR')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (54, N'F34', N'75328', 7, 4, CAST(N'2019-05-04' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (55, N'F35', N'76329', 7, 5, CAST(N'2018-06-05' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (56, N'F36', N'77330', 7, 6, CAST(N'2020-07-06' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (57, N'F37', N'78331', 7, 7, CAST(N'2021-08-07' AS Date), N'PEN')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (58, N'C21', N'24683', 3, 6, CAST(N'2019-10-10' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (59, N'C21', N'24683', 3, 6, CAST(N'2019-10-10' AS Date), N'USD')
INSERT [dbo].[Factura] ([FacturaId], [Serie], [Codigo], [VendedorId], [ClienteId], [Fecha], [Moneda]) VALUES (60, N'Z22', N'64683', 4, 7, CAST(N'2019-10-10' AS Date), N'P  ')
SET IDENTITY_INSERT [dbo].[Factura] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([ProductoId], [Descripcion], [PrecioUnitario], [Categoria]) VALUES (1, N'Laptop', CAST(1200 AS Decimal(18, 0)), N'TI')
INSERT [dbo].[Producto] ([ProductoId], [Descripcion], [PrecioUnitario], [Categoria]) VALUES (2, N'Escritorio', CAST(200 AS Decimal(18, 0)), N'OP')
INSERT [dbo].[Producto] ([ProductoId], [Descripcion], [PrecioUnitario], [Categoria]) VALUES (3, N'Televisor', CAST(1500 AS Decimal(18, 0)), N'TI')
INSERT [dbo].[Producto] ([ProductoId], [Descripcion], [PrecioUnitario], [Categoria]) VALUES (4, N'Mueble', CAST(500 AS Decimal(18, 0)), N'OP')
INSERT [dbo].[Producto] ([ProductoId], [Descripcion], [PrecioUnitario], [Categoria]) VALUES (5, N'Mesa', CAST(300 AS Decimal(18, 0)), N'OP')
INSERT [dbo].[Producto] ([ProductoId], [Descripcion], [PrecioUnitario], [Categoria]) VALUES (6, N'Camara', CAST(150 AS Decimal(18, 0)), N'TI')
INSERT [dbo].[Producto] ([ProductoId], [Descripcion], [PrecioUnitario], [Categoria]) VALUES (7, N'Radio', CAST(400 AS Decimal(18, 0)), N'OP')
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendedor] ON 

INSERT [dbo].[Vendedor] ([VendedorId], [Nombres], [Apellidos], [Dni], [FechaIngreso]) VALUES (1, N'Rafael', N'Lopez', N'48265478', CAST(N'2019-12-17' AS Date))
INSERT [dbo].[Vendedor] ([VendedorId], [Nombres], [Apellidos], [Dni], [FechaIngreso]) VALUES (2, N'Mauricio', N'Castillo', N'85632154', CAST(N'2018-10-17' AS Date))
INSERT [dbo].[Vendedor] ([VendedorId], [Nombres], [Apellidos], [Dni], [FechaIngreso]) VALUES (3, N'Silvana', N'Ortega', N'32145698', CAST(N'2019-12-10' AS Date))
INSERT [dbo].[Vendedor] ([VendedorId], [Nombres], [Apellidos], [Dni], [FechaIngreso]) VALUES (4, N'Claudia', N'Naveda', N'78523698', CAST(N'2020-11-17' AS Date))
INSERT [dbo].[Vendedor] ([VendedorId], [Nombres], [Apellidos], [Dni], [FechaIngreso]) VALUES (5, N'Rosio', N'Pucalpa', N'14253698', CAST(N'2019-12-17' AS Date))
INSERT [dbo].[Vendedor] ([VendedorId], [Nombres], [Apellidos], [Dni], [FechaIngreso]) VALUES (6, N'Cesar', N'Ramires', N'36521478', CAST(N'2020-12-17' AS Date))
INSERT [dbo].[Vendedor] ([VendedorId], [Nombres], [Apellidos], [Dni], [FechaIngreso]) VALUES (7, N'Eduardo', N'Salas', N'36251479', CAST(N'2019-12-17' AS Date))
SET IDENTITY_INSERT [dbo].[Vendedor] OFF
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Factura] FOREIGN KEY([FacturaId])
REFERENCES [dbo].[Factura] ([FacturaId])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Factura]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Producto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Producto] ([ProductoId])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Producto]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([ClienteId])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Vendedor] FOREIGN KEY([VendedorId])
REFERENCES [dbo].[Vendedor] ([VendedorId])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Vendedor]
GO
/****** Object:  StoredProcedure [dbo].[InsertFactura]    Script Date: 22/04/2021 01:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertFactura]
       @Serie varchar(3),
       @Codigo varchar(5),
       @VendedorId int,
       @ClienteId int,
       @Fecha date,
       @Moneda char(3),
       @ProductId int,
       @Cantidad int,
       @Precio decimal(18,5)
AS


IF(@ProductId IS NULL)
BEGIN
       PRINT N'Debe haber como mínimo 1 producto'; 
END

ELSE 

	IF(@Cantidad < 1)
	BEGIN
	       PRINT N'Debe haber como mínimo 1 producto'; 
	END
	
	ELSE 
	
	BEGIN 
		SET NOCOUNT ON;
			insert into Factura (Serie, Codigo, VendedorId, ClienteId, Fecha, Moneda) values (@serie, @codigo, @vendedorId, @clienteId, @fecha, @moneda)

			declare @FacturaId int;
			SELECT @FacturaId = IDENT_CURRENT('Factura');

			insert into DetalleFactura (FacturaId, ProductoId, Cantidad, PrecioUnitario) values (@FacturaId, @productId, @cantidad, @precio)     
			 
	end

GO
/****** Object:  StoredProcedure [dbo].[ListClientesCategoriaA]    Script Date: 22/04/2021 01:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListClientesCategoriaA]
AS
BEGIN
	SELECT CONCAT(c.Nombres, ' ', c.Apellidos) as 'Cliente', c.Categoria
	from Cliente c
	LEFT  join Factura f on f.ClienteId = c.ClienteId
	where c.Categoria = 'A' and f.FacturaId is null
END
GO
/****** Object:  StoredProcedure [dbo].[ListFacturas]    Script Date: 22/04/2021 01:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListFacturas]
@dia int
as
BEGIN
	SELECT f.FacturaId, CONCAT(c.Nombres, ' ', c.Apellidos) as 'Cliente', CONCAT(v.Nombres, ' ', v.Apellidos) as 'Vendedor', SUM(df.PrecioUnitario * df.Cantidad) as 'Importe', f.Fecha
	from Factura f
	inner join DetalleFactura df on f.FacturaId = df.FacturaId
	inner join Cliente c on f.ClienteId = c.ClienteId
	inner join Vendedor v on f.VendedorId = v.VendedorId
	where DAY(f.Fecha) = @dia
	Group by f.FacturaId, c.Nombres, c.Apellidos, v.Nombres, v.Apellidos, f.Fecha
	ORDER BY SUM(df.PrecioUnitario * df.Cantidad) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ListProductos]    Script Date: 22/04/2021 01:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListProductos]
AS
BEGIN
	select * from Producto
END
GO
/****** Object:  StoredProcedure [dbo].[ListVendedores2019]    Script Date: 22/04/2021 01:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ListVendedores2019]
AS
BEGIN
	select * from Vendedor
	where Year(FechaIngreso) = 2019
END
GO
