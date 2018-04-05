USE [HealthFinancialDW]
GO

/****** Object:  StoredProcedure [Stage].[usp_UPD_Segment_Type]    Script Date: 4/5/2018 12:47:30 PM ******/
DROP PROCEDURE [Stage].[usp_UPD_Segment_Type]
GO

/****** Object:  StoredProcedure [Stage].[usp_UPD_Segment_Type]    Script Date: 4/5/2018 12:47:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ernesto Rodriguez
-- Create date: 05-31-2018
-- Description:	Update Segment Type in table
--				Stage.Raw_Segment to identify
--				the loaded segment.
-- =============================================
CREATE PROCEDURE [Stage].[usp_UPD_Segment_Type]
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE
		Stage.Raw_Segment
	SET
		TypeID = LEFT( Segments, CHARINDEX( '*', Segments ) - 1 )
	;
END
GO


