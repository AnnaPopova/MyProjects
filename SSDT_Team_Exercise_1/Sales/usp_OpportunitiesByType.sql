CREATE PROCEDURE [Sales].[usp_OpportunitiesByType]
	@Type NVARCHAR(50) = ''
AS
	SELECT ot.[Name],p.[FName],p.[LName]
	FROM [Sales].[Opportunity] AS o
	INNER JOIN [Sales].[OpportunityType] AS ot ON [ot].[Id] = [o].[OpportunityTypeId]
	INNER JOIN [Person].[Customer] AS c ON [c].[Id] = [o].[CustomerId]
	INNER JOIN [Person].[Person] AS p ON [p].[Id] = [c].[PersonId]
	WHERE ot.[Name]=@Type

RETURN 0
