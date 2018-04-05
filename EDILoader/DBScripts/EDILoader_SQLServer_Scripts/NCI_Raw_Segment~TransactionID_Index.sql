USE [HealthFinancialDW]
GO

/****** Object:  Index [NCI_Raw_Segment~TransactionID]    Script Date: 4/5/2018 1:36:29 PM ******/
DROP INDEX [NCI_Raw_Segment~TransactionID] ON [Stage].[Raw_Segment]
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [NCI_Raw_Segment~TransactionID]    Script Date: 4/5/2018 1:36:29 PM ******/
CREATE NONCLUSTERED INDEX [NCI_Raw_Segment~TransactionID] ON [Stage].[Raw_Segment]
(
	[TransactionID] ASC
)
INCLUDE ( 	[Segments],
	[GroupID],
	[LineID],
	[SourceFile]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


