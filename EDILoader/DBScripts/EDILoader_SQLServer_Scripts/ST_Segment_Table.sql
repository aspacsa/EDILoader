USE [HealthFinancialDW]
GO

/****** Object:  Table [Stage].[ST_Segment]    Script Date: 4/5/2018 1:37:14 PM ******/
DROP TABLE [Stage].[ST_Segment]
GO

/****** Object:  Table [Stage].[ST_Segment]    Script Date: 4/5/2018 1:37:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Stage].[ST_Segment](
	[Identifier_Code] [int] NULL,
	[Control_Number] [varchar](50) NULL,
	[Aux_GroupID] [int] NULL,
	[Aux_LineID] [int] NULL,
	[Aux_SourceFile] [nvarchar](256) NULL,
	[Aux_Segments] [varchar](550) NULL
) ON [PRIMARY]
GO


