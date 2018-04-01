WITH aux_segment
AS
(
SELECT
	seg.GroupID,
	seg.LineID,
	seg.SourceFile,
	element.value as Element,
	ROW_NUMBER() OVER (PARTITION BY GroupID, LineID, SourceFile ORDER BY LineID) AS ElementID
FROM 
	[HealthFinancialDW].[Stage].[Raw_Segment] AS seg
	CROSS APPLY STRING_SPLIT( SUBSTRING( Segments, 4, LEN(Segments) ), '*' ) AS element
WHERE 
	(seg.TypeID = 'ST' AND seg.TransactionID = 835)
)
SELECT
	GroupID,
	LineID,
	MAX(CASE WHEN ElementID = 1 THEN Element END) AS Identifier_Code,
	MAX(CASE WHEN ElementID = 2 THEN Element END) AS Control_Number
FROM
	aux_segment
GROUP BY
	GroupID, LineID

