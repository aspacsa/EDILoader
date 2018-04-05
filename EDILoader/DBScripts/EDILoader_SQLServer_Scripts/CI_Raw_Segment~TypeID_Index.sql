USE [HealthFinancialDW]
GO

/****** Object:  Index [CI_Raw_Segment~TypeID]    Script Date: 4/5/2018 1:35:32 PM ******/
DROP INDEX [CI_Raw_Segment~TypeID] ON [Stage].[Raw_Segment] WITH ( ONLINE = OFF )
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [CI_Raw_Segment~TypeID]    Script Date: 4/5/2018 1:35:32 PM ******/
CREATE CLUSTERED INDEX [CI_Raw_Segment~TypeID] ON [Stage].[Raw_Segment]
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


