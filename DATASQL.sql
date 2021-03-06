USE [testelecmodel]
GO
/****** Object:  Table [dbo].[E_BaseArrow]    Script Date: 2015/12/22 16:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[E_BaseArrow](
	[FactoryID] [varchar](10) NOT NULL,
	[PipelineID] [int] NOT NULL,
	[PipeParentID] [int] NOT NULL,
	[ArrowZ1] [int] NOT NULL,
	[ArrowZ2] [int] NOT NULL,
 CONSTRAINT [PK_E_BaseArrow] PRIMARY KEY CLUSTERED 
(
	[FactoryID] ASC,
	[PipelineID] ASC,
	[PipeParentID] ASC,
	[ArrowZ1] ASC,
	[ArrowZ2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[E_BaseData]    Script Date: 2015/12/22 16:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[E_BaseData](
	[FactoryID] [varchar](10) NOT NULL,
	[PipelineID] [int] NOT NULL,
	[PipeParentID] [int] NOT NULL,
	[SiteID] [int] NOT NULL,
	[SiteNo] [varchar](10) NULL,
	[SpecificDescription] [varchar](50) NULL,
	[SiteStyle] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[CanvasX] [decimal](18, 6) NULL,
	[CanvasY] [decimal](18, 6) NULL,
	[LinkNote] [int] NULL,
	[ArrowNote] [int] NULL,
	[AlarmNote] [varchar](10) NULL,
	[CanvasNoteText] [varchar](50) NULL,
 CONSTRAINT [PK_E_BaseData] PRIMARY KEY CLUSTERED 
(
	[FactoryID] ASC,
	[PipelineID] ASC,
	[PipeParentID] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[E_TCArrow]    Script Date: 2015/12/22 16:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[E_TCArrow](
	[FactoryID] [varchar](10) NOT NULL,
	[PipelineID] [int] NOT NULL,
	[PipeParentID] [int] NOT NULL,
	[ArrowZ1] [int] NOT NULL,
	[ArrowZ2] [int] NOT NULL,
 CONSTRAINT [PK_E_TCArrow] PRIMARY KEY CLUSTERED 
(
	[FactoryID] ASC,
	[PipelineID] ASC,
	[PipeParentID] ASC,
	[ArrowZ1] ASC,
	[ArrowZ2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 0, 1)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 1, 2)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 2, 3)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 3, 4)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 4, 5)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 5, 10)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 6, 0)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 7, 6)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 8, 7)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 9, 8)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 10, 9)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 11, 12)
INSERT [dbo].[E_BaseArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 12, 13)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 0, N'TonyXU1', N'U1站点', N'A', N'上料站', CAST(180.000000 AS Decimal(18, 6)), CAST(400.000000 AS Decimal(18, 6)), NULL, NULL, N'N', N'TEST')
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 1, N'TonyXU2', N'U2站点', N'B', N'正常站', CAST(280.000000 AS Decimal(18, 6)), CAST(400.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 2, N'TonyXU3', N'U3站点', N'B', N'正常站', CAST(380.000000 AS Decimal(18, 6)), CAST(400.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 3, N'TonyXU4', N'U4站点', N'B', N'正常站', CAST(480.000000 AS Decimal(18, 6)), CAST(400.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 4, N'TonyXU5', N'U5站点', N'B', N'正常站', CAST(580.000000 AS Decimal(18, 6)), CAST(400.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 5, N'TonyXU6', N'U6站点', N'B', N'正常站', CAST(680.000000 AS Decimal(18, 6)), CAST(400.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 6, N'TonyXU7', N'U7站点', N'E', N'总结站', CAST(180.000000 AS Decimal(18, 6)), CAST(200.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 7, N'TonyXU8', N'U8站点', N'E', N'总结站', CAST(280.000000 AS Decimal(18, 6)), CAST(200.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 8, N'TonyXU9', N'U9站点', N'C', N'缓存站', CAST(380.000000 AS Decimal(18, 6)), CAST(200.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 9, N'TonyXU10', N'U10站点', N'C', N'缓存站', CAST(480.000000 AS Decimal(18, 6)), CAST(200.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 10, N'TonyXU11', N'U11站点', N'C', N'缓存站', CAST(580.000000 AS Decimal(18, 6)), CAST(200.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 11, N'TonyXZ1', N'Z1站点', N'D', N'检验站', CAST(180.000000 AS Decimal(18, 6)), CAST(100.000000 AS Decimal(18, 6)), NULL, NULL, N'N', N'testset是')
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 12, N'TonyXZ2', N'Z2站点', N'D', N'检验站', CAST(280.000000 AS Decimal(18, 6)), CAST(100.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_BaseData] ([FactoryID], [PipelineID], [PipeParentID], [SiteID], [SiteNo], [SpecificDescription], [SiteStyle], [Remarks], [CanvasX], [CanvasY], [LinkNote], [ArrowNote], [AlarmNote], [CanvasNoteText]) VALUES (N'TC1', 0, 0, 13, N'TonyXZ3', N'Z3站点', N'D', N'检验站', CAST(380.000000 AS Decimal(18, 6)), CAST(100.000000 AS Decimal(18, 6)), NULL, NULL, N'N', NULL)
INSERT [dbo].[E_TCArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 0, 1)
INSERT [dbo].[E_TCArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 0, 2)
INSERT [dbo].[E_TCArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 0, 4)
INSERT [dbo].[E_TCArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 1, 3)
INSERT [dbo].[E_TCArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 2, 5)
INSERT [dbo].[E_TCArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 3, 6)
INSERT [dbo].[E_TCArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 4, 6)
INSERT [dbo].[E_TCArrow] ([FactoryID], [PipelineID], [PipeParentID], [ArrowZ1], [ArrowZ2]) VALUES (N'0', 0, 0, 5, 6)
ALTER TABLE [dbo].[E_BaseArrow] ADD  CONSTRAINT [DF_E_BaseArrow_PipeParentID]  DEFAULT ((1)) FOR [PipeParentID]
GO
ALTER TABLE [dbo].[E_BaseData] ADD  CONSTRAINT [DF_E_BaseData_PipeParentID]  DEFAULT ((1)) FOR [PipeParentID]
GO
ALTER TABLE [dbo].[E_TCArrow] ADD  CONSTRAINT [DF_E_TCArrow_PipeParentID]  DEFAULT ((1)) FOR [PipeParentID]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂编号，比如T1，T2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseArrow', @level2type=N'COLUMN',@level2name=N'FactoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水线编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseArrow', @level2type=N'COLUMN',@level2name=N'PipelineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水线父项编号，默认为1（防止多线加小线）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseArrow', @level2type=N'COLUMN',@level2name=N'PipeParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseArrow', @level2type=N'COLUMN',@level2name=N'ArrowZ1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂编号，比如T1，T2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'FactoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水线编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'PipelineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水线父项编号，默认为1（防止多线加小线）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'PipeParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID（与单片机好连接）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'SiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点号，与上位机对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'具体描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'SpecificDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点类型，比如上料站、正常站、缓存站、检验站之类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'SiteStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'X坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'CanvasX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Y坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'CanvasY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实线连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'LinkNote'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'虚线连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'ArrowNote'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'AlarmNote'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点文字描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_BaseData', @level2type=N'COLUMN',@level2name=N'CanvasNoteText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂编号，比如T1，T2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_TCArrow', @level2type=N'COLUMN',@level2name=N'FactoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水线编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_TCArrow', @level2type=N'COLUMN',@level2name=N'PipelineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水线父项编号，默认为1（防止多线加小线）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_TCArrow', @level2type=N'COLUMN',@level2name=N'PipeParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_TCArrow', @level2type=N'COLUMN',@level2name=N'ArrowZ1'
GO
