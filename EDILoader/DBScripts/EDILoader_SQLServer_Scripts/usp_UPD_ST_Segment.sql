USE HealthFinancialDW;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ernesto Rodriguez	
-- Create date: 04-05-2018
-- Description:	Update element's in table Stage.ST_Segment. 
-- =============================================
CREATE PROCEDURE Stage.usp_UPD_ST_Segment
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE
		dst
	SET
		dst.Identifier_Code = src.Identifier_Code,
		dst.Control_Number = src.Control_Number
	FROM
		Stage.ST_Segment AS dst
	INNER JOIN
		Stage.uv_ST_Segment AS src
		ON dst.Aux_GroupID = src.GroupID
			AND dst.Aux_LineID = src.LineID
	;
END
GO
