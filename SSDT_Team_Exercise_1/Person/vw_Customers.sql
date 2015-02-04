CREATE VIEW [Person].[vw_Customers]
	AS SELECT  [FName],[LName],[BirthDate]
	FROM [Person].[Customer]
	INNER JOIN [Person].[Person] AS p ON [p].[Id] = [Customer].[PersonId]
