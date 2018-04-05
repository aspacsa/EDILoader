USE [HealthFinancialDW]
GO

/****** Object:  Table [Stage].[Raw_Segment]    Script Date: 4/5/2018 1:34:11 PM ******/
DROP TABLE [Stage].[Raw_Segment]
GO

/****** Object:  Table [Stage].[Raw_Segment]    Script Date: 4/5/2018 1:34:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Stage].[Raw_Segment](
	[Segments] [varchar](550) NULL,
	[GroupID] [int] NULL,
	[LineID] [int] IDENTITY(1,1) NOT NULL,
	[SourceFile] [nvarchar](256) NULL,
	[TypeID] [nvarchar](50) NULL,
	[TransactionID] [int] NULL
) ON [PRIMARY]
GO


