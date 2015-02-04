CREATE VIEW [Inventory].[vw_Vehicle]
	AS SELECT [m].[Name] AS [Make],[m2].[Name] AS [Model],[c].[Name] AS [Color],[Year],[Price]
	FROM [Inventory].[Vehicle] AS v
	INNER JOIN [Inventory].[Color] AS c ON [c].[Id] = [v].[ColorId]
	INNER JOIN [Inventory].[Make] AS m ON [m].[Id] = [v].[MakeId]
	INNER JOIN [Inventory].[Model] AS m2 ON [m2].[Id] = [v].[ModelId]
