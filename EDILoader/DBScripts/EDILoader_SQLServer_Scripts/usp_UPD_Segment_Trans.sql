USE [HealthFinancialDW]
GO

/****** Object:  StoredProcedure [Stage].[usp_UPD_Segment_Trans]    Script Date: 4/5/2018 12:46:21 PM ******/
DROP PROCEDURE [Stage].[usp_UPD_Segment_Trans]
GO

/****** Object:  StoredProcedure [Stage].[usp_UPD_Segment_Trans]    Script Date: 4/5/2018 12:46:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ernesto Rodriguez
-- Create date: 04-01-2018
-- Description:	Update rows in stage table 
--				Raw_Segment with transaction set ID.
-- =============================================
CREATE PROCEDURE [Stage].[usp_UPD_Segment_Trans] 
AS
BEGIN
	SET NOCOUNT ON;

	WITH Transaction_Segment (TransID, GroupID)
	AS
	(
		SELECT
			SUBSTRING( Segments, 4, 3 ),
			GroupID
		FROM
			Stage.Raw_Segment
		WHERE
			TypeID = 'ST'
	)
	UPDATE 
		dst
	SET 
		dst.TransactionID = src.TransID
	FROM
		Stage.Raw_Segment AS dst
	INNER JOIN
		Transaction_Segment AS src
		ON dst.GroupID = src.GroupID
	;

END
GO


