USE [testelecmodel]
GO

/****** Object:  Table [dbo].[E_BaseArrow]    Script Date: 2015/12/22 16:45:26 ******/
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
	[ArrowZ2] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[E_BaseData]    Script Date: 2015/12/22 16:45:26 ******/
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
	[CanvasNoteText] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[E_TCArrow]    Script Date: 2015/12/22 16:45:26 ******/
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
	[ArrowZ2] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


